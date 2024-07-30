//
//  CharacterDTO.swift
//  RickAndMorty
//
//  Created by Jose Maria Mata on 23/4/24.
//

import Foundation

// MARK: - CharacterDTO
struct CharacterDTO: Codable {
    let id: Int?
    let name: String?
    let status: Status?
    let species: String?
    let type: String?
    let gender: Gender?
    let origin, location: LocationDTO?
    let image: String?
    let episode: [String]?
    let url: String?
    let created: String?
}

// MARK: - LocationDTO
struct LocationDTO: Codable {
    let name: String?
    let url: String?
}

//MARK: - Enums
enum Status: String, Codable {
    case alive = "Alive"
    case dead = "Dead"
    case unknown
}

enum Gender: String, Codable {
    case female = "Female"
    case male = "Male"
    case genderless = "Genderless"
    case unknown
}
