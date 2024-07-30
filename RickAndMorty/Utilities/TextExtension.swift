//
//  TextExtension.swift
//  RickAndMorty
//
//  Created by Jose Maria Mata on 24/4/24.
//

import Foundation
import SwiftUI

extension Text {
    
    func boldTitleBlack() -> some View {
        self
            .bold()
            .font(Font.title)
            .foregroundColor(Color.black)
    }
    
    func boldTitle() -> some View {
        self
            .bold()
            .font(Font.title)
    }
    
    func title() -> some View {
        self
            .font(Font.title.uppercaseSmallCaps())
    }
    
    func titleBlack() -> some View {
        self
            .font(Font.title.uppercaseSmallCaps())
            .foregroundColor(Color.black)
    }
    
    func boldHeadlineBlack() -> some View {
        self
            .bold()
            .font(Font.headline)
            .foregroundColor(Color.black)
    }
    
    func captionBlack() -> some View {
        self
            .font(Font.caption)
            .foregroundColor(Color.black)
    }
    
    func boldBlack() -> some View {
        self
            .bold()
            .foregroundColor(Color.black)
    }
    
    func spacingBlack(_ space: CGFloat) -> some View {
        self
            .foregroundColor(Color.black)
            .kerning(space)
    }
}
