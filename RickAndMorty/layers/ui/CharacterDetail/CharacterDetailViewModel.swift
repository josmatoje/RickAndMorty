//
//  CharacterDetailViewModel.swift
//  RickAndMorty
//
//  Created by Jose Maria Mata on 23/4/24.
//

import Foundation


class CharacterDetailViewModel: ObservableObject {
    
    var character: CharacterBO
    
    init(character: CharacterBO) {
        self.character = character
    }
    
}
