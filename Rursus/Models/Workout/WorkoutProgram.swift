//
//  WorkoutProgram.swift
//  Rursus
//
//  Created by AI Assistant on 19/6/25.
//

import Foundation

struct WorkoutProgram: Codable, Identifiable {
    let id: String
    var name: String
    var description: String
    var duration: Int // in weeks
    var workoutDays: [WorkoutDay]
    var createdAt: Date
    var updatedAt: Date
    var aiGeneratedAt: Date
    var isActive: Bool
}

struct WorkoutDay: Codable, Identifiable {
    let id: String
    var dayOfWeek: Int // 1-7 (Sunday = 1)
    var name: String
    var exercises: [Exercise]
    var estimatedDuration: Int // in minutes
    var isCompleted: Bool
    var completedAt: Date?
}

struct WorkoutSession: Codable, Identifiable {
    let id: String
    var workoutDayId: String
    var startTime: Date
    var endTime: Date?
    var exercises: [Exercise]
    var notes: String?
    var overallRating: Int? // 1-10
    var isCompleted: Bool
} 