//
//  QuickTemplateSection.swift
//  OneInOne
//
//  Created by jimbook on 11/9/2025.
//

import SwiftUI

// MARK: - Quick Templates Section
struct QuickTemplatesSection: View {
    let templates = [
        ChallengeTemplate(
            title: "Photo Challenge",
            subtitle: "Capture something specific",
            icon: "camera.fill",
            color: .pink
        ),
        ChallengeTemplate(
            title: "Explore Challenge",
            subtitle: "Visit a new place",
            icon: "map.fill",
            color: .green
        ),
        ChallengeTemplate(
            title: "Social Challenge",
            subtitle: "Connect with others",
            icon: "video.fill",
            color: .blue
        ),
        ChallengeTemplate(
            title: "Skill Challenge",
            subtitle: "Learn something new",
            icon: "graduationcap.fill",
            color: .purple
        )
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Quick Templates")
                .font(.headline.bold())
                .foregroundColor(.primary)
            
            LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 12), count: 2), spacing: 12) {
                ForEach(templates) { template in
                    TemplateCard(template: template)
                }
            }
        }
    }
}
