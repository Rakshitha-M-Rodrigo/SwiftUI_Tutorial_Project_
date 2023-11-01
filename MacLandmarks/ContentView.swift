//
//  ContentView.swift
//  MacLandmarks
//
//  Created by Rakshitha Rodrigo on 2023-11-01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       LandmarkList()
            .frame(minWidth: 700, minHeight: 300)
        
    }
}

#Preview {
    ContentView()
        .environmentObject(ModelData())
}
