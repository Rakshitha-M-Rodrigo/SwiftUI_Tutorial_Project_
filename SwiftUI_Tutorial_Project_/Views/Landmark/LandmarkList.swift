//
//  LandmarkList.swift
//  SwiftUI_Tutorial_Project_LandMarks
//
//  Created by Rakshitha Rodrigo on 2023-10-05.
//

import Foundation
import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    @State private var filter = FilterCategory.all
    @State private var selectedLandmark: Landmark?
    
    enum FilterCategory: String, CaseIterable, Identifiable {
        var id: FilterCategory {self}
        
        case all = "All"
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
            && (filter == .all || filter.rawValue == landmark.category.rawValue)
        }
    }
    
    var index: Int? {
        modelData.landmarks.firstIndex(where: {$0.id == selectedLandmark?.id})
    }
    
    var title: String {
        let title = filter == .all ? "Landmarks" : filter.rawValue
        return showFavoritesOnly ? "Favorite \(title)": title
    }
    
    var body: some View {
        NavigationSplitView {
            List(selection: $selectedLandmark) {
                
                ForEach(filteredLandmarks){ landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                    .tag(landmark)
                }
                
            }
            .navigationTitle(title)
            .frame(minWidth: 300)
//            .scrollIndicators(.hidden)
            .toolbar {
                ToolbarItem {
                    Menu {
                        Picker("Category", selection: $filter){
                            ForEach(FilterCategory.allCases){
                                category in
                                Text(category.rawValue).tag(category)
                            }
                        }
                        .pickerStyle(.inline)
                        Toggle(isOn: $showFavoritesOnly) {
                            Text("Favorites only")
                        }
                    } label: {
                        Label("Filter", systemImage: "slider.horizontal.3")
                    }
                }
            }
            
//            Text("Select a Landmark")
        } detail: {
            Text("Select a Landmark")
        }
        .focusedValue(\.selectedLandmark, $modelData.landmarks[index ?? 0])
        
//        if (index ?? 0 > 0){
//            
//        }
            
        
    }
    
}

#Preview {
    LandmarkList()
        .environment(ModelData())
}
