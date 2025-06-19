//
//  AppConstants.swift
//  Rursus
//
//  Created by AI Assistant on 19/6/25.
//

import Foundation

struct AppConstants {
    
    // MARK: - App Information
    static let appName = "FitMorph"
    static let appVersion = "1.0.0"
    
    // MARK: - Animation Durations
    static let shortAnimationDuration: Double = 0.3
    static let mediumAnimationDuration: Double = 0.5
    static let longAnimationDuration: Double = 0.8
    
    // MARK: - Workout Constants
    static let defaultRestTime = 90 // seconds
    static let maxRPE = 10
    static let minRPE = 1
    
    // MARK: - Body Scan
    static let maxPhotoSize = 5 * 1024 * 1024 // 5MB
    static let requiredPhotoCount = 3
    
    // MARK: - UserDefaults Keys
    struct UserDefaultsKeys {
        static let hasCompletedOnboarding = "hasCompletedOnboarding"
        static let userID = "userID"
        static let lastWorkoutDate = "lastWorkoutDate"
        static let notificationPermissionRequested = "notificationPermissionRequested"
    }
    
    // MARK: - Firebase Collections
    struct FirebaseCollections {
        static let users = "users"
        static let workoutPrograms = "workoutPrograms"
        static let workoutSessions = "workoutSessions"
        static let bodyScans = "bodyScans"
        static let exercises = "exercises"
    }
    
    // MARK: - API Endpoints
    struct APIEndpoints {
        static let baseURL = "https://api.fitmorph.app"
        static let bodyAnalysis = "/analyze-body"
        static let generateWorkout = "/generate-workout"
        static let updateProgram = "/update-program"
    }
} 