//
//  RursusApp.swift
//  Rursus
//
//  Created by Gautier Colson on 19/6/25.
//

import SwiftUI

@main
struct RursusApp: App {
    @StateObject private var authViewModel = AuthenticationViewModel()
    
    var body: some Scene {
        WindowGroup {
            if authViewModel.isAuthenticated {
                TabBarView()
                    .environmentObject(authViewModel)
            } else {
                ContentView()
                    .environmentObject(authViewModel)
            }
        }
    }
}
