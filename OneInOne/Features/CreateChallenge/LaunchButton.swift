//
//  LaunchButton.swift
//  OneInOne
//
//  Created by jimbook on 11/9/2025.
//

import SwiftUI

// MARK: - Launch Button
struct LaunchButton: View {
    var body: some View {
        Button(action: {
            // Launch challenge action
        }) {
            HStack {
                Image(systemName: "rocket.fill")
                Text("Launch Challenge")
            }
            .font(.headline.bold())
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .padding()
            .background(
                LinearGradient(
                    colors: [.blue, .purple],
                    startPoint: .leading,
                    endPoint: .trailing
                )
            )
            .cornerRadius(16)
        }
    }
}
