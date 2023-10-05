//
//  CircleView.swift
//  SwiftUI_Tutorial_Project_LandMarks
//
//  Created by Rakshitha Rodrigo on 2023-09-26.
//

import SwiftUI

struct CircleView: View {
    var image: Image
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(.white, lineWidth: 4.0))
            .shadow(radius: 7.0)
    }
}

#Preview(traits: .sizeThatFitsLayout){
    CircleView(image: Image("turtlerock"))
        .padding()
}
