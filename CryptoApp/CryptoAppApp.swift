//
//  CryptoAppApp.swift
//  CryptoApp
//
//  Created by Lehaananth Vimalanathan on 2024-08-26.
//

import SwiftUI

@main
struct CryptoAppApp: App {
    
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
