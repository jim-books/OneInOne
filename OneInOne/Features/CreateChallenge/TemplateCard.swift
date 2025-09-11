//
//  TemplateCard.swift
//  OneInOne
//
//  Created by jimbook on 11/9/2025.
//

import SwiftUI

struct TemplateCard: View {
    let template: ChallengeTemplate
    
    var body: some View {
        Button(action: {
            // Apply template action
        }) {
            VStack(alignment: .leading, spacing: 8) {
                Image(systemName: template.icon)
                    .font(.title2)
                    .foregroundColor(template.color)
                
                Text(template.title)
                    .font(.headline.bold())
                    .foregroundColor(.primary)
                
                Text(template.subtitle)
                    .font(.caption)
                    .foregroundColor(.secondary)
                
                Spacer()
            }
            .frame(maxWidth: .infinity, minHeight: 80)
            .padding()
            .background(template.color.opacity(0.1))
            .cornerRadius(12)
        }
        .buttonStyle(PlainButtonStyle())
    }
}
