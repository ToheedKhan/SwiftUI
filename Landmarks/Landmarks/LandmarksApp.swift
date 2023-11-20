//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Toheed Jahan Khan on 16/11/23.
//

/*
 Abstract:
 The top-level definition of the Landmarks app.
 */
 
import SwiftUI

@main
struct LandmarksApp: App {
    /*
     Update the LandmarksApp to create a model instance and supply it to ContentView using the environment(_:) modifier.
     */
    /*
     Use the @State attribute to initialize a model object the same way you use it to initialize properties inside a view. Just like SwiftUI initializes state in a view only once during the lifetime of the view, it initializes state in an app only once during the lifetime of the app.
     */
    @State private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
