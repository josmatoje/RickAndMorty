//
//  ContentView.swift
//  RickAndMorty
//
//  Created by Jose Maria Mata on 23/4/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ListCharacterView()
                .background(Color.lightGray())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
