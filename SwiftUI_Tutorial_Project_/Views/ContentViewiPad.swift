//
//  ContentView.swift
//  SwiftUI_Tutorial_Project_
//
//  Created by Rakshitha Rodrigo on 2023-09-26.
//

import SwiftUI

struct ContentViewiPad: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world! iPad")
                .foregroundStyle(.secondary)
                .font(.caption)
            Text("Hello, world! iPad")
                .foregroundStyle(.secondary)
                .font(.caption2)
            
        }
        .padding()
    }
}

#Preview {
    ContentViewiPad()
}
