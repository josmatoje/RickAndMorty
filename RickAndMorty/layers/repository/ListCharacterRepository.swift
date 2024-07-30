//
//  ListCharacterRepository.swift
//  RickAndMorty
//
//  Created by Jose Maria Mata on 23/4/24.
//

import Foundation

class ListCharacterRepository {
    
    let session = URLSession.shared
    
    func getCharacters(page: Int) async throws -> PageRequestBO {
        let urlString = "https://rickandmortyapi.com/api/character?page=\(page)"
        guard let url = URL(string: urlString) else { throw ErrorApp.invalidUrl }
       
        let result = try await session.data(from: url)
        let request = try JSONDecoder().decode(PageRequestDTO.self, from: result.0)
        
        return request.toBO()
    }
    
}
