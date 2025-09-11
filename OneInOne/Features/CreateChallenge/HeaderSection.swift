//
//  HeaderSection.swift
//  OneInOne
//
//  Created by jimbook on 11/9/2025.
//

import SwiftUI

// MARK: - Header Section
struct HeaderSection: View {
    var body: some View {
        VStack(spacing: 8) {
            Text("Create Your Challenge")
                .font(.largeTitle.bold())
                .foregroundColor(.primary)
            
            Text("Share your adventure with the community")
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
        .padding(.top)
    }
}
