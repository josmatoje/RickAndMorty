//
//  CharacterDetailView.swift
//  RickAndMorty
//
//  Created by Jose Maria Mata on 23/4/24.
//

import SwiftUI

struct CharacterDetailView: View {
    
    @ObservedObject var viewModel: CharacterDetailViewModel
    var character: CharacterBO
    
    init(character: CharacterBO) {
        self.viewModel = CharacterDetailViewModel(character: character)
        self.character = character
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            ScrollView {
                RemoteImage(url: character.image)
                .frame(width: UIScreen.main.bounds.size.width, height: 350)
//                HStack {
//                    VStack(alignment: .leading, spacing: 25) {
//                        Text("Name:").boldBlack()
//                        Text("Status:").boldBlack()
//                        Text("Species:").boldBlack()
//                        Text("Type:").boldBlack()
//                        Text("Gender:").boldBlack()
//                        Text("Origin:").boldBlack()
//                        Text("Location:").boldBlack()
//                        Text("Created:").boldBlack()
//                    }
//                    VStack(alignment: .leading, spacing: 25) {
//                        Text(character.name).spacingBlack(2)
//                        Text(character.status.rawValue).spacingBlack(2)
//                        Text(character.species).spacingBlack(2)
//                        Text(character.type).spacingBlack(2)
//                        Text(character.gender.rawValue).spacingBlack(2)
//                        Text(character.origin?.name ?? "Unknown").spacingBlack(2)
//                        Text(character.location.name).spacingBlack(2)
//                        Text(character.created?.formatted(.dateTime)  ?? "Unknow").spacingBlack(2)
//                    }
//                    Spacer()
//                }
//                .padding(20)
                VStack(alignment: .leading, spacing: 25) {
                    HStack {
                        Text("Name:").boldBlack()
                            .frame(width: 100)
                        Text(character.name).spacingBlack(2)
                    }
                    HStack {
                        Text("Status:").boldBlack()
                            .frame(width: 100)
                        Text(character.status.rawValue).spacingBlack(2)
                    }
                    HStack {
                        Text("Species:").boldBlack()
                            .frame(width: 100)
                        Text(character.species).spacingBlack(2)
                        Spacer()
                    }
                    HStack {
                        Text("Type:").boldBlack()
                            .frame(width: 100)
                        if (character.type.isEmpty) {
                            Text("Unknown").italic().spacingBlack(2)
                        } else {
                            Text(character.type).spacingBlack(2)
                        }
                        Spacer()
                    }
                    HStack {
                        Text("Gender:").boldBlack()
                            .frame(width: 100)
                        Text(character.gender.rawValue).spacingBlack(2)
                        Spacer()
                    }
                    HStack {
                        Text("Origin:").boldBlack()
                            .frame(width: 100)
                        Text(character.origin?.name ?? "Unknown").spacingBlack(2)
                        Spacer()
                    }
                    HStack {
                        Text("Location:").boldBlack()
                            .frame(width: 100)
                        Text(character.location.name).spacingBlack(2)
                        Spacer()
                    }
                    HStack {
                        Text("Created:").boldBlack()
                            .frame(width: 100)
                        Text(character.created?.formatted(.dateTime)  ?? "Unknow").spacingBlack(2)
                        Spacer()
                    }
                }
                .padding(20)
            }
        }
        .statusBarHidden(true)
        .background(Color.lightGray())
    }
}

struct CharacterDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterDetailView(character: CharacterBO(id: 0, name: "Prueba", status: .unknown, species: "Desconocida", type: "Ninguno", gender: .unknown, origin: nil , location: LocationBO(name: "Mundo", url: nil), image: nil, episode: [], url: nil, created: nil))
    }
}
