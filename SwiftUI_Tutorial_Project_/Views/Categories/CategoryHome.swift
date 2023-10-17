//
//  CategoryHome.swift
//  SwiftUI_Tutorial_Project_LandMarks
//
//  Created by Rakshitha Rodrigo on 2023-10-17.
//

import SwiftUI

struct CategoryHome: View {
    var body: some View {
        NavigationSplitView {
            Text("Featured")
                .navigationTitle("Featured")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    CategoryHome()
}
