//
//  InfoMapper.swift
//  RickAndMorty
//
//  Created by Jose Maria Mata on 23/4/24.
//

import Foundation

extension InfoDTO {
    func toBO() -> InfoBO {
        return InfoBO(dto: self)
    }
}

extension InfoBO {
    init(dto: InfoDTO) {
        self.init(
            count: dto.count ?? 0,
            pages: dto.pages ?? 0,
            next: dto.next,
            prev: dto.prev
        )
    }
}
