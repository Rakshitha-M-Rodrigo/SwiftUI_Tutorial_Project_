//
//  PageView.swift
//  SwiftUI_Tutorial_Project_LandMarks
//
//  Created by Rakshitha Rodrigo on 2023-10-28.
//

import SwiftUI

struct PageView<Page: View>: View {
    var pages: [Page]
    @State private var currentPage = 0
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            PageViewController(pages: pages, currentPage: $currentPage)
            PageControl(numberOfPages: pages.count, currentPage: $currentPage)
                .frame(width: CGFloat(pages.count * 18))
                .padding(.trailing)
            
        }
    }
}

#Preview {
    PageView(pages: ModelData().features.map{
        FeatureCard(landmark: $0)
    })
    .aspectRatio(3/2, contentMode: .fit)
}
