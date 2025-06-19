//
//  BodyScan.swift
//  Rursus
//
//  Created by AI Assistant on 19/6/25.
//

import Foundation

struct BodyScan: Codable, Identifiable {
    let id: String
    var userId: String
    var frontPhotoURL: String
    var sidePhotoURL: String
    var backPhotoURL: String
    var analysisResult: BodyAnalysis?
    var createdAt: Date
    var processedAt: Date?
    var status: ScanStatus
    
    enum ScanStatus: String, Codable {
        case uploaded = "uploaded"
        case processing = "processing"
        case completed = "completed"
        case failed = "failed"
    }
}

struct BodyAnalysis: Codable {
    var shoulderToWaistRatio: Double
    var bodyFatPercentage: Double?
    var muscleDistribution: MuscleDistribution
    var posturalAssessment: PosturalAssessment
    var recommendations: [String]
    var confidenceScore: Double // 0.0 - 1.0
    
    struct MuscleDistribution: Codable {
        var upperBody: Double // 0.0 - 1.0
        var lowerBody: Double // 0.0 - 1.0
        var core: Double // 0.0 - 1.0
    }
    
    struct PosturalAssessment: Codable {
        var forwardHeadPosture: Bool
        var shoulderAsymmetry: Bool
        var hipTilt: Bool
        var notes: String?
    }
} 