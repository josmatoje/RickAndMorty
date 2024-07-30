//
//  ListCharacterView.swift
//  RickAndMorty
//
//  Created by Jose Maria Mata on 23/4/24.
//

import SwiftUI

struct ListCharacterView: View {
    
    @ObservedObject var viewModel: ListCharacterViewModel = ListCharacterViewModel()
    
    var body: some View {
        VStack {
            pager
            Text("Page \(viewModel.pageIndex)").boldBlack()
            Rectangle().frame(height: 1)
                .foregroundColor(Color.black)
            if viewModel.isLoading {
                Spacer()
                ProgressView()
                Spacer()
            } else {
                if let page = viewModel.page {
                    ScrollView() {
                        LazyVStack {
                            ForEach (page.results) { character in
                                NavigationLink(value: character) {
                                    CharacterCell(character: character)
                                        .listStyle(.plain)
                                        .padding(6)
                                }
                            }
                        }
                        .navigationDestination(for: CharacterBO.self) { character in
                            CharacterDetailView(character: character)
                        }
                    }
                } else {
                    Text(ErrorApp.emptyRequest.localizedDescription)
                }
            }
        }
        .onAppear {
            viewModel.onAppear()
        }
        .navigationBarTitle("Characters List", displayMode: .large)
    }
    
    var pager: some View {
        
        HStack {
            ButtonExtension(title: "Back", disabled: viewModel.page?.info.prev?.isEmpty ?? true) {
                viewModel.previousPage()
            }
            .padding(.horizontal, 10)
            Spacer()
            ButtonExtension(title: "Next", disabled: viewModel.page?.info.next?.isEmpty ?? true) {
                viewModel.nextPage()
            }
            .padding(.horizontal, 10)
        }
    }
    
    struct CharacterCell: View {
        var character: CharacterBO
        
        var body: some View {
            HStack {
                RemoteImage(url: character.image)
                    .frame(width: 150, height: 150)
                VStack(alignment: .leading) {
                    Text(character.name)
                        .boldHeadlineBlack()
                        .underline()
                    Text(character.species)
                        .captionBlack()
                    Spacer()
                    HStack {
                        Text("State:").foregroundColor(.black)
                        Spacer()
                        Text(character.status.rawValue)
                            .foregroundColor(.gray)
                    }
                }
                .padding(5)
            }
            .background {
                character.status == .alive ? Color.lightGreen() : (character.status == .dead ? Color.lightRed() : Color.lightBlue())
            }
            .shadow(radius: 10, x: 5, y: 5)
        }
    }
    
}

struct ListCharacterView_Previews: PreviewProvider {
    static var previews: some View {
        ListCharacterView()
    }
}
