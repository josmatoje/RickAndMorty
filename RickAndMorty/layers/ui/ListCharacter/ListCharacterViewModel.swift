//
//  ListCharacterViewModel.swift
//  RickAndMorty
//
//  Created by Jose Maria Mata on 23/4/24.
//

import Foundation
import SwiftUI

class ListCharacterViewModel: ObservableObject {
    
    let usecase: ListCharacterUseCase = ListCharacterUseCase()
    @Published var page: PageRequestBO?
    @Published var pageIndex: Int = 1
    @Published var isLoading: Bool = false
    @Published var error: Error?
    
    func onAppear() {
        Task {
            await loadPage()
        }
    }
    
    func nextPage() {
        pageIndex += 1
        Task {
            await loadPage()
        }
        if pageIndex > page?.info.count ?? 0 {
            pageIndex = page?.info.count ?? 0
        }
    }
    
    func previousPage() {
        pageIndex -= 1
        Task {
            await loadPage()
        }
        if pageIndex < 0 {
            pageIndex = 0
        }
    }
}

extension ListCharacterViewModel {
    
    @MainActor
    func loadPage() async {
        do {
            isLoading = true
            page = try await usecase.getPageCharacters(pageIndex)
        } catch {
            self.error = error
            print(error)
        }
        isLoading = false
        
    }
    
}
