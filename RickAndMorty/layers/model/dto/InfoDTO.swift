//
//  InfoDTO.swift
//  RickAndMorty
//
//  Created by Jose Maria Mata on 23/4/24.
//

import Foundation

// MARK: - InfoDTO
struct InfoDTO: Codable {
    let count: Int?
    let pages: Int?
    let next: String?
    let prev: String?
}
