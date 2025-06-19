//
//  Exercise.swift
//  Rursus
//
//  Created by AI Assistant on 19/6/25.
//

import Foundation

struct Exercise: Codable, Identifiable {
    let id: String
    var name: String
    var muscleGroups: [MuscleGroup]
    var sets: [ExerciseSet]
    var restTime: Int // in seconds
    var instructions: String?
    var videoURL: String?
    
    enum MuscleGroup: String, Codable, CaseIterable {
        case chest = "chest"
        case back = "back"
        case shoulders = "shoulders"
        case biceps = "biceps"
        case triceps = "triceps"
        case legs = "legs"
        case glutes = "glutes"
        case core = "core"
        case cardio = "cardio"
    }
}

struct ExerciseSet: Codable, Identifiable {
    let id: String
    var targetReps: Int
    var targetWeight: Double? // in kg
    var actualReps: Int?
    var actualWeight: Double?
    var rpe: Int? // Rate of Perceived Exertion (1-10)
    var feedback: SetFeedback?
    var isCompleted: Bool
    
    enum SetFeedback: String, Codable, CaseIterable {
        case easy = "easy"
        case perfect = "perfect"
        case hard = "hard"
        case failed = "failed"
    }
} 