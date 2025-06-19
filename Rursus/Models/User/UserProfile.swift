//
//  UserProfile.swift
//  Rursus
//
//  Created by AI Assistant on 19/6/25.
//

import Foundation

struct UserProfile: Codable, Identifiable {
    let id: String
    var email: String
    var age: Int
    var height: Double // in cm
    var weight: Double // in kg
    var fitnessLevel: FitnessLevel
    var goals: [FitnessGoal]
    var createdAt: Date
    var updatedAt: Date
    
    enum FitnessLevel: String, Codable, CaseIterable {
        case beginner = "beginner"
        case intermediate = "intermediate"
        case advanced = "advanced"
    }
    
    enum FitnessGoal: String, Codable, CaseIterable {
        case bulking = "bulking"
        case cutting = "cutting"
        case recomposition = "recomposition"
        case strength = "strength"
        case endurance = "endurance"
    }
} 