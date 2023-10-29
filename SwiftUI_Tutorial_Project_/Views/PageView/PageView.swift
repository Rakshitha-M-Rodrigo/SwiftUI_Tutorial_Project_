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
        VStack {
            Button {
                
                if(currentPage == pages.count - 1){
                    currentPage = 0
                } else {
                    currentPage += 1
                }
                
            } label: {
                Text("Next")
            }
            PageViewController(pages: pages, currentPage: $currentPage)
            
            Text("Current Page: \(currentPage)")
        }
        
    }
}

#Preview {
    PageView(pages: ModelData().features.map{
        FeatureCard(landmark: $0)
            .aspectRatio(3/2, contentMode: .fit)
    })
}
