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
    /* We need toadd the FavoriteButton to the detail view, binding the button’s isSet property to the isFavorite property of a given landmark.
     
     Compute the index of the input landmark by comparing it with the model data.
     */
     var landmarkIndex: Int {
             modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
         }

     
    var landmark: Landmark
    
    var body: some View {
        /*
         add the model data using a Bindable wrapper. Embed the landmark’s name in an HStack with a new FavoriteButton; provide a binding to the isFavorite property with the dollar sign ($).
         */
        @Bindable var modelData = modelData

        ScrollView {
            MapView(coordinate: landmark.locationCoordinates).frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            /*
             Use landmarkIndex with the modelData object to ensure that the button updates the isFavorite property of the landmark stored in your model object.
             */
            VStack(alignment: .leading, spacing: 5.0) {
                /*
                 Use landmarkIndex with the modelData object to ensure that the button updates the isFavorite property of the landmark stored in your model object.
                 */
                HStack {
                                 Text(landmark.name)
                                     .font(.title)
                                 FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                             }
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
//        LandmarkDetail(landmark: landmarks[0])
        let landmarks = ModelData().landmarks

    }
}
