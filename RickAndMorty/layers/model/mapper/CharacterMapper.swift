//
//  CharacterMapper.swift
//  RickAndMorty
//
//  Created by Jose Maria Mata on 23/4/24.
//

import Foundation

extension CharacterDTO {
    func toBO() -> CharacterBO? {
        return CharacterBO(dto: self)
    }
}

extension CharacterBO {
    init?(dto: CharacterDTO) {
        guard let id = dto.id else {
            return nil
        }
        self.id = id
        self.name = dto.name ?? "Unknown"
        self.status = dto.status ?? .unknown
        self.species = dto.species ?? "Unknown"
        self.type = dto.type ?? "Unknown"
        self.gender = dto.gender ?? .unknown
        self.origin = dto.origin?.toBO() ?? LocationBO()
        self.location = dto.location?.toBO() ?? LocationBO()
        self.image = URL(string: dto.image ?? "")
        //URL casting
        self.episode = dto.episode?.compactMap({ URL(string: $0) }) ?? []
        self.url = URL(string: dto.url ?? "")
        //Date casting
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        self.created = dateFormatter.date(from: dto.created ?? "")
    }
}

extension LocationDTO {
    func toBO() -> LocationBO? {
        return LocationBO(name: self.name ?? "", url: URL(string: self.url ?? ""))
    }
}

extension LocationBO {
    init() {
        self.name = ""
        self.url = URL(string: "")
    }
}
