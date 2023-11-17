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
        ContentView()
    }
}
