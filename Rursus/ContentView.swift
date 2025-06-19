//
//  ContentView.swift
//  Rursus
//
//  Created by Gautier Colson on 19/6/25.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var authViewModel: AuthenticationViewModel
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 30) {
                Spacer()
                
                // App Logo/Icon
                Image(systemName: "figure.strengthtraining.traditional")
                    .font(.system(size: 80))
                    .foregroundColor(.fitMorphAccent)
                
                // App Name and Tagline
                VStack(spacing: 10) {
                    Text("FitMorph")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.fitMorphPrimary)
                    
                    Text("Your AI-Powered Gym Coach")
                        .font(.title3)
                        .foregroundColor(.fitMorphSecondary)
                        .multilineTextAlignment(.center)
                }
                
                Spacer()
                
                // Action Buttons
                VStack(spacing: 15) {
                    Button("Get Started") {
                        // TODO: Navigate to onboarding
                        Task {
                            await authViewModel.signIn(email: "demo@fitmorph.app", password: "demo123")
                        }
                    }
                    .buttonStyle(PrimaryButtonStyle())
                    
                    // Social Sign-In Options
                    HStack(spacing: 15) {
                        Button(action: {
                            Task {
                                await authViewModel.signInWithGoogle()
                            }
                        }) {
                            HStack {
                                Image(systemName: "globe")
                                Text("Google")
                            }
                        }
                        .buttonStyle(SocialButtonStyle())
                        
                        Button(action: {
                            Task {
                                await authViewModel.signInWithApple()
                            }
                        }) {
                            HStack {
                                Image(systemName: "applelogo")
                                Text("Apple")
                            }
                        }
                        .buttonStyle(SocialButtonStyle())
                    }
                    
                    Button("I already have an account") {
                        // TODO: Navigate to sign in
                    }
                    .buttonStyle(SecondaryButtonStyle())
                }
                .padding(.horizontal, 20)
                
                Spacer()
            }
            .padding()
            .background(Color.fitMorphBackground)
        }
    }
}

// MARK: - Button Styles
struct PrimaryButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(.white)
            .font(.headline)
            .frame(maxWidth: .infinity)
            .frame(height: 50)
            .background(Color.fitMorphAccent)
            .cornerRadius(25)
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
            .animation(.easeInOut(duration: 0.1), value: configuration.isPressed)
    }
}

struct SecondaryButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(.fitMorphPrimary)
            .font(.headline)
            .frame(maxWidth: .infinity)
            .frame(height: 50)
            .background(Color.clear)
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.fitMorphPrimary, lineWidth: 1)
            )
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
            .animation(.easeInOut(duration: 0.1), value: configuration.isPressed)
    }
}

struct SocialButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(.fitMorphPrimary)
            .font(.subheadline)
            .fontWeight(.medium)
            .frame(maxWidth: .infinity)
            .frame(height: 45)
            .background(Color.fitMorphBackground)
            .overlay(
                RoundedRectangle(cornerRadius: 22.5)
                    .stroke(Color.fitMorphSecondary, lineWidth: 1)
            )
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
            .animation(.easeInOut(duration: 0.1), value: configuration.isPressed)
    }
}

#Preview {
    ContentView()
        .environmentObject(AuthenticationViewModel())
}
