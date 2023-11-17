//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Toheed Jahan Khan on 17/11/23.
//
/*
 Abstract:
 A single row to be displayed in a list of landmarks.
 */
import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image.resizable()
                .frame(width: 50, height: 50)
            
            Text(landmark.name)
            
            Spacer()
            
            if landmark.isFavorite {
                          Image(systemName: "star.fill")
                              .foregroundStyle(.yellow)
                      }
        }
    }
}
 

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {

        //Two preview will show separately
        LandmarkRow(landmark: landmarks[0])

        LandmarkRow(landmark: landmarks[1])



//        Group {
//            LandmarkRow(landmark: landmarks[0])
//            LandmarkRow(landmark: landmarks[1])
//        }

    }
}
