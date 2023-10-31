//
//  LandmarkDetail.swift
//  WatchLandmarks Watch App
//
//  Created by Rakshitha Rodrigo on 2023-10-31.
//

import SwiftUI

struct LandmarkDetail: View {
    
    @EnvironmentObject var modelData: ModelData
    
    var landmark: Landmark
    
    var landmarkInt: Int {
        modelData.landmarks.firstIndex(where: {
            $0.id == landmark.id
        })!
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    let modelData = ModelData()
    return LandmarkDetail(landmark: modelData.landmarks[0])
        .environment(modelData)
}
