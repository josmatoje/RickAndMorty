//
//  ErrorApp.swift
//  RickAndMorty
//
//  Created by Jose Maria Mata on 24/4/24.
//

import Foundation

enum ErrorApp: Error {
    case invalidUrl
    case invalidRequest
    case emptyRequest
    case emptyResult
}
