//
//  ContentView.swift
//  SwiftUI_Tutorial_Project_
//
//  Created by Rakshitha Rodrigo on 2023-09-26.
//

import SwiftUI

struct ContentView: View {
//    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
            LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
