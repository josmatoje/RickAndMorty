//
//  ListCharacterUseCase.swift
//  RickAndMorty
//
//  Created by Jose Maria Mata on 23/4/24.
//

import Foundation

class ListCharacterUseCase  {
    let repository: ListCharacterRepository = ListCharacterRepository()
    
    func getPageCharacters(_ page: Int) async throws -> PageRequestBO {
        try await repository.getCharacters(page: page)
    }
}
