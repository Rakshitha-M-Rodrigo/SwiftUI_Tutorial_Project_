//
//  Badge.swift
//  SwiftUI_Tutorial_Project_LandMarks
//
//  Created by Rakshitha Rodrigo on 2023-10-12.
//

import SwiftUI

struct Badge: View {
    
    var badgeSymbols: some View {
        ForEach(0..<8) { index in
            RotatedBadgeSymbol(
                angle: .degrees(Double(index)/Double(8)) * 360.0
            )
        }
        .opacity(0.5)
    }
    
    var body: some View {
        ZStack {
            BadgeBackground()
                
            GeometryReader { geometry in
                badgeSymbols
                    .scaleEffect(2.0/4.0, anchor: .top)
                    .position(x: geometry.size.width/2.0, y: geometry.size.height*(3.0/4.0))
            }
        }
        .scaledToFit()
    }
}

#Preview {
    Badge()
}
