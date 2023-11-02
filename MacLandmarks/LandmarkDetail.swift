//
//  LandmarkDetail.swift
//  MacLandmarks
//
//  Created by Rakshitha Rodrigo on 2023-11-01.
//

import SwiftUI
import MapKit

struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: {$0.id == landmark.id})!
    }
    
    
    var body: some View {
        ScrollView {
            ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top)) {
                MapView(coordinate: landmark.locationCoordinates)
                    .ignoresSafeArea(edges: .top)
                .frame(height: 300)
                
                Button("Open in Maps"){
                    let destination = MKMapItem(placemark: MKPlacemark(coordinate: landmark.locationCoordinates))
                    destination.name = landmark.name
                    destination.openInMaps()
                }
                .padding()
            }
            
            VStack(alignment: .leading, spacing: 20){
                HStack(spacing: 24){
                    CircleView(image: landmark.image.resizable())
                        .frame(width: 160, height: 160)
//                        .offset(y: -130)
//                        .padding(.bottom, -130)
                    
                    VStack(alignment: .leading){
                        HStack {
                            Text(landmark.name)
                                .font(.title)
                            FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                                .buttonStyle(.plain)
                            
                        }
                        VStack(alignment: .leading) {
                            Text(landmark.park)
                            Text(landmark.state)
                        }
                        .font(.subheadline)
                        .foregroundColor(.secondary)

                    }
                }
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
                
            }
            .padding()
            .offset(y: -50)
            .frame(maxWidth: 700)
        }
        .navigationTitle(landmark.name)
        
    }
}

#Preview {
    let modelData = ModelData()
    
    return LandmarkDetail(landmark: modelData.landmarks[0])
        .environmentObject(modelData)
        .frame(width: 850, height: 700)
        
}
