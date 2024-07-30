//
//  RequestMapper.swift
//  RickAndMorty
//
//  Created by Jose Maria Mata on 23/4/24.
//

import Foundation


extension PageRequestDTO {
    func toBO() -> PageRequestBO {
        return PageRequestBO(dto: self)
    }
}

extension PageRequestBO {
    init(dto: PageRequestDTO) {
        self.info = dto.info?.toBO() ?? InfoBO(count: 0, pages: 0, next: nil, prev: nil)
        self.results = dto.results?.compactMap{ $0.toBO() } ?? []
    }
}
