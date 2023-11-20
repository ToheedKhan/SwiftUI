//
//  ModelData.swift
//  Landmarks
//
//  Created by Toheed Jahan Khan on 17/11/23.
//

import Foundation

/*
 Fetches data from the given file.
 
 The load method relies on the return type’s conformance to the Decodable protocol, which is one component of the Codable protocol.
 */

/*Abstract:
 Storage for model data.
 */
//var landmarks: [Landmark] = load("landmarkData.json")

/*
 SwiftUI updates a view only when an observable property changes and the view’s body reads the property directly.
 */
@Observable
class ModelData {
    var landmarks: [Landmark] = load("landmarkData.json")
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
