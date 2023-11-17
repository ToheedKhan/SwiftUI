//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Toheed Jahan Khan on 17/11/23.
//

import SwiftUI

struct LandmarkList: View {
    /*
     Because you use state properties to hold information that’s specific to a view and its subviews, you always create state as private.
     */
    @State private var showFavoritesOnly = true
    
    var filteredLandmarks: [Landmark] {
           landmarks.filter { landmark in
               (!showFavoritesOnly || landmark.isFavorite)
           }
       }
    
    var body: some View {
        NavigationSplitView {
            List(filteredLandmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
