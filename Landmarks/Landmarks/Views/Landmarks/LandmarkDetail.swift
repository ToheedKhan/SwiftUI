//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Toheed Jahan Khan on 17/11/23.
//

/*
 Abstract:
 A view showing the details for a landmark.
 */
import SwiftUI
import CoreLocation

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinates).frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading, spacing: 5.0) {
                Text(landmark.name)
                    .font(.title)
                .fontWeight(.bold)
                HStack {
                    Text(landmark.park)
                    Spacer() /*A spacer expands to make its containing view use all of the space of its parent view, instead of having its size defined only by its contents.
                              */
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                Divider()


                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()

        Spacer()
            
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
