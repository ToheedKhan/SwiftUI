//
//  ContentView.swift
//  Landmarks
//
//  Created by Toheed Jahan Khan on 16/11/23.
//

/*
 Abstract:
 A view showing the list of landmarks.
 */

import SwiftUI
import CoreLocation

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
//        ContentView()
        /*
         Update the ContentView preview to add the model object to the environment, which makes the object available to any subview.
         */
        /*
         A preview fails if any subview requires a model object in the environment, but the view you are previewing doesn’t have the environment(_:) modifier.
         */
        ContentView()
               .environment(ModelData())
    }
}
