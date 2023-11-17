//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Toheed Jahan Khan on 17/11/23.
//

/*
 Abstract:
 A view showing a list of landmarks.
 */
import SwiftUI

struct LandmarkList: View {
    /*
     Because you use state properties to hold information that’s specific to a view and its subviews, you always create state as private.
     */
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                                   Text("Favorites only")
                               }
                
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
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
