//
//  CharacterBO.swift
//  RickAndMorty
//
//  Created by Jose Maria Mata on 23/4/24.
//

import Foundation

// MARK: - CharacterBO
struct CharacterBO: Identifiable {
    let id: Int
    let name: String
    let status: Status
    let species: String
    let type: String
    let gender: Gender
    let origin: LocationBO?
    let location: LocationBO
    let image: URL?
    let episode: [URL?]
    let url: URL?
    let created: Date?
}

// MARK: - LocationBO
struct LocationBO {
    let name: String
    let url: URL?
}

extension CharacterBO: Hashable { }

extension LocationBO: Hashable { }
