//
//  MapView.swift
//  Landmarks
//
//  Created by Toheed Jahan Khan on 17/11/23.
//

import SwiftUI
import MapKit

struct MapView: View {
//    private var region: MKCoordinateRegion {
//           MKCoordinateRegion(
//               center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
//               span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
//           )
//       }
//
//    var body: some View {
//        Map(initialPosition: .region(region))
//    }
    
    /*
     This new initializer expects a Binding to a position, which is a bidirectional connection to the value. Use a .constant() binding here because MapView doesn’t need to detect when someone changes the position by interacting with the map.
     */
    
    var coordinate: CLLocationCoordinate2D
       @State private var region = MKCoordinateRegion()

       var body: some View {
           Map(coordinateRegion: $region)
               .onAppear {
                   setRegion(coordinate)
               }
       }

       private func setRegion(_ coordinate: CLLocationCoordinate2D) {
           region = MKCoordinateRegion(
               center: coordinate,
               span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
           )
       }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
