//
//  DataModel.swift
//  OneInOne
//
//  Created by jimbook on 11/9/2025.
//

import SwiftUI

// MARK: - Data Models
struct Challenge: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let backgroundColor: Color
    let participantCount: Int
    let participantColors: [Color]
    let points: Int
    let isStory: Bool
    
    static let mockChallenges = [
        Challenge(
            title: "Street Art Safari",
            description: "Find 3 pieces of street art in your neighborhood",
            backgroundColor: .orange,
            participantCount: 247,
            participantColors: [.blue, .green, .orange],
            points: 150,
            isStory: false
        ),
        Challenge(
            title: "Random Acts of Kindness",
            description: "Make someone's day brighter",
            backgroundColor: .green,
            participantCount: 89,
            participantColors: [.pink, .purple],
            points: 200,
            isStory: false
        ),
        Challenge(
            title: "Mystery of the Lost Café",
            description: "Continue your adventure to uncover the secrets of your neighborhood's history!",
            backgroundColor: .purple,
            participantCount: 156,
            participantColors: [.yellow, .orange, .red],
            points: 300,
            isStory: true
        )
    ]
}

struct ActiveUser: Identifiable {
    let id = UUID()
    let name: String
    let color: Color
}

struct ChallengeTemplate: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let icon: String
    let color: Color
}

struct ChallengeCategory: Identifiable {
    let id = UUID()
    let title: String
    let count: Int
    let color: Color
    let icon: String
}
