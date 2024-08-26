//
//  CircleButtonView.swift
//  CryptoApp
//
//  Created by Lehaananth Vimalanathan on 2024-08-26.
//

import SwiftUI

struct CircleButtonView: View {
    
    let iconName : String
    
    var body: some View {
        Image(systemName: iconName)
            .font(.headline)
            .foregroundColor(Color.theme.accent)
            .frame(width: 50, height: 50)
            .background(
                Circle()
                    .foregroundColor(Color.theme.background)
            )
            .shadow(color: Color.theme.accent.opacity(0.25),
                    radius: 10
            )
            .padding()
    }
}

#Preview {
    Group{
        CircleButtonView(iconName: "info")
            .previewLayout(.sizeThatFits)
        CircleButtonView(iconName: "plus")
            .previewLayout(.sizeThatFits)
            .colorScheme(.dark)
    }
    
}
 
