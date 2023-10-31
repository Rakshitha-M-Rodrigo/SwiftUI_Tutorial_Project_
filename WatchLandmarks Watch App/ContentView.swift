//
//  ContentView.swift
//  SwiftUI_Tutorial_Project_
//
//  Created by Rakshitha Rodrigo on 2023-09-26.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .featuted
    
    enum Tab {
        case featuted
        case list
    }
    
    var body: some View {
        TabView(selection: $selection){
            
            Text("Hello Watch ContentView")
//            CategoryHome()
//                .tabItem {
//                    Label("Featured", systemImage: "star")
//                }
//                .tag(Tab.featuted)
//            LandmarkList()
//                .tabItem {
//                    Label("List", systemImage: "list.bullet")
//                }
//                .tag(Tab.list)
        }
        
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
