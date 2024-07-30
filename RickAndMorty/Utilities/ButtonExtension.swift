//
//  ButtonExtension.swift
//  RickAndMorty
//
//  Created by Jose Maria Mata on 24/4/24.
//

import SwiftUI

struct ButtonExtension: View {
    let title: String
    let action: () -> Void
    let disabled: Bool
    
    init(title: String, disabled: Bool, action: @escaping () -> Void) {
        self.title = title
        self.action = action
        self.disabled = disabled
    }
    
    var body: some View {
        Button {
            action()
        } label: {
            VStack {
                if disabled {
                    Text(title)
                        .title()
                        .padding(5)
                } else {
                    Text(title)
                        .titleBlack()
                        .padding(5)
                }
            }
        }
        .padding(.horizontal, 10)
        .background(disabled ? Color.lightGray() : Color.lightBlue())
        .clipShape(Capsule())
        .overlay(
            Capsule()
                .stroke(Color.gray, lineWidth: disabled ? 0 : 3)
        )
        .disabled(disabled)
    }
}

struct ButtonExtension_Previews: PreviewProvider {
    static var previews: some View {
        ButtonExtension(title: "Hello", disabled: false) { }
    }
}
