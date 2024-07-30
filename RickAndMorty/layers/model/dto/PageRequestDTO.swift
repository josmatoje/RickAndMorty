//
//  PageRequestDTO.swift
//  RickAndMorty
//
//  Created by Jose Maria Mata on 23/4/24.
//

import Foundation

// MARK: - PageRequestDTO
struct PageRequestDTO: Codable {
    let info: InfoDTO?
    let results: [CharacterDTO]?
}
