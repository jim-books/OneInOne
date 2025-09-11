//
//  HeaderView.swift
//  OneInOne
//
//  Created by jimbook on 11/9/2025.
//

import SwiftUI

// MARK: - Header View
struct HeaderView: View {
    var body: some View {
        HStack {
            Text("OneInOne")
                .font(.title.bold())
                .foregroundColor(.white)
            
            Spacer()
            
            HStack(spacing: 8) {
                Image(systemName: "bell.fill")
                    .foregroundColor(.white)
                
                Text("1,247")
                    .font(.caption.bold())
                    .foregroundColor(.white)
                
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}
