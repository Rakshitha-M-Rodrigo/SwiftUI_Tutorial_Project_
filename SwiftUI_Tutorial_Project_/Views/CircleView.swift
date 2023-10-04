//
//  CircleView.swift
//  SwiftUI_Tutorial_Project_LandMarks
//
//  Created by Rakshitha Rodrigo on 2023-09-26.
//

import SwiftUI

struct CircleView: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay(Circle().stroke(.white, lineWidth: 4.0))
            .shadow(radius: 7.0)
    }
}

#Preview(traits: .sizeThatFitsLayout){
    CircleView()
        .padding()
}
