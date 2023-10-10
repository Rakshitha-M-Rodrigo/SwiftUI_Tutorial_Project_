//
//  LandmarkDetail.swift
//  SwiftUI_Tutorial_Project_LandMarks
//
//  Created by Rakshitha Rodrigo on 2023-10-05.
//

import SwiftUI

struct LandmarkDetail: View {
    @Environment(ModelData.self) var modelData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: {$0.id == landmark.id})!
    }
    
    var body: some View {
        @Bindable var modelData = modelData
        ScrollView {
            MapView(coordinate: landmark.locationCoordinates)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            CircleView(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .fontWeight(.regular)
                    .font(.title)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                
                Divider()
                
                Text(landmark.name)
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
            
//            Spacer()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.automatic)
    }
}

#Preview {
    let modelData = ModelData()
    return LandmarkDetail(landmark: modelData.landmarks[0])
        .environment(modelData)
}
