//
//  TabBarView.swift
//  Rursus
//
//  Created by AI Assistant on 19/6/25.
//

import SwiftUI

struct TabBarView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
            
            ProgramView()
                .tabItem {
                    Image(systemName: "list.clipboard.fill")
                    Text("Program")
                }
                .tag(1)
            
            ProgressView()
                .tabItem {
                    Image(systemName: "chart.line.uptrend.xyaxis")
                    Text("Progress")
                }
                .tag(2)
            
            SettingsView()
                .tabItem {
                    Image(systemName: "gearshape.fill")
                    Text("Settings")
                }
                .tag(3)
        }
        .accentColor(Color(hex: "#1BD96A"))
    }
}

// MARK: - Placeholder Views
struct HomeView: View {
    var body: some View {
        NavigationView {
            Text("Today's Workout")
                .navigationTitle("Home")
        }
    }
}

struct ProgramView: View {
    var body: some View {
        NavigationView {
            Text("Your Program")
                .navigationTitle("Program")
        }
    }
}

struct ProgressView: View {
    var body: some View {
        NavigationView {
            Text("Progress Dashboard")
                .navigationTitle("Progress")
        }
    }
}

struct SettingsView: View {
    var body: some View {
        NavigationView {
            Text("Settings")
                .navigationTitle("Settings")
        }
    }
}

#Preview {
    TabBarView()
} 