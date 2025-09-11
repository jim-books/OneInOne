//
//  CategoryCard.swift
//  OneInOne
//
//  Created by jimbook on 11/9/2025.
//

import SwiftUI

struct CategoryCard: View {
    let category: ChallengeCategory
    let onTap: () -> Void
    
    var body: some View {
        Button(action: onTap) {
            VStack(spacing: 12) {
                Image(systemName: category.icon)
                    .font(.title)
                    .foregroundColor(.white)
                
                Text(category.title)
                    .font(.headline.bold())
                    .foregroundColor(.white)
                
                Text("\(category.count) challenges")
                    .font(.subheadline)
                    .foregroundColor(.white.opacity(0.8))
            }
            .frame(maxWidth: .infinity)
            .frame(height: 120)
            .background(category.color)
            .cornerRadius(16)
        }
        .buttonStyle(PlainButtonStyle())
    }
}

