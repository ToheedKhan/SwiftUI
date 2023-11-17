//
//  ContentView.swift
//  Landmarks
//
//  Created by Toheed Jahan Khan on 16/11/23.
//

import SwiftUI
import CoreLocation

struct ContentView: View {
    var body: some View {
        VStack(spacing: 4.0) {
            MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868)).frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading, spacing: 5.0) {
                Text("Turtle Rock")
                    .font(.title)
                .fontWeight(.bold)
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer() /*A spacer expands to make its containing view use all of the space of its parent view, instead of having its size defined only by its contents.
                              */
                    Text("California")
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                Divider()


                              Text("About Turtle Rock")
                                  .font(.title2)
                              Text("Descriptive text goes here.")
            }
            .padding()

        Spacer()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
