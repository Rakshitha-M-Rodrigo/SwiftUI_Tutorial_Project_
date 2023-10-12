//
//  RotatedBadgeSymbol.swift
//  SwiftUI_Tutorial_Project_LandMarks
//
//  Created by Rakshitha Rodrigo on 2023-10-11.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    let angle: Angle
    var body: some View {
        BadgeSymbol()
            .rotationEffect(angle)
    }
}

#Preview {
    RotatedBadgeSymbol(angle: Angle(degrees: 0))
}
