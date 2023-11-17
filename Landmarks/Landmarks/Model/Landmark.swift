//
//  Landmark.swift
//  Landmarks
//
//  Created by Toheed Jahan Khan on 17/11/23.
//

/*
 Abstract:
 A representation of a single landmark.
 */
import Foundation
import SwiftUI //for **Image** type
import CoreLocation
/*
 Adding Codable conformance makes it easier to move data between the structure and a data file. The Decodable component of the Codable protocol to data from file.
 */

struct Landmark: Hashable, Codable, Identifiable {
    //The Landmark data already has the id property required by Identifiable protocol
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    
    /* An imageName property to read the name of the image from the data.
     private because users of the Landmarks structure care only about the image itself
     */
    private var imageName: String
    //A computed image property that loads an image from the asset catalog.
    var image: Image {
        Image(imageName)
    }
    
    /*
     A nested Coordinates type that reflects the storage in the JSON data structure.
     Mark this property as private because it is used only to create a public computed property.
     */
    
    private var coordinates: Coordinates
    
    var locationCoordinates: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude,
                               longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
