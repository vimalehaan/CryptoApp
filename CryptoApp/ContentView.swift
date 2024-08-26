//
//  ContentView.swift
//  CryptoApp
//
//  Created by Lehaananth Vimalanathan on 2024-08-26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            VStack {
                Text("Hello, world!")
                    .fontWeight(.bold)
                    .foregroundColor(Color.theme.secondaryText)
                Text("Hello, world!")
                    .fontWeight(.bold)
                    .foregroundColor(Color.theme.accent)
                    
            }
        }
    }
}

#Preview {
    ContentView()
}
