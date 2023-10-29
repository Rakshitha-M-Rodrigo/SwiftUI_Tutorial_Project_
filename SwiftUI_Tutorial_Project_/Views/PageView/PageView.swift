//
//  PageView.swift
//  SwiftUI_Tutorial_Project_LandMarks
//
//  Created by Rakshitha Rodrigo on 2023-10-28.
//

import SwiftUI

struct PageView<Page: View>: View {
    var pages: [Page]
    var body: some View {
        PageViewController(pages: pages)
    }
}

#Preview {
    PageView(pages: ModelData().features.map{
        FeatureCard(landmark: $0)
            .aspectRatio(3/2, contentMode: .fit)
    })
}
