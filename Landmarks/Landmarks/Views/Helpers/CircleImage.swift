//
//  CircleImage.swift
//  Landmarks
//
//  Created by Toheed Jahan Khan on 17/11/23.
//

import SwiftUI
/*
 Abstract:
 A view that clips an image to a circle and adds a stroke and shadow.
 */
 
struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image.clipShape(Circle()).overlay {
            Circle().stroke(.white, lineWidth: 4).shadow(radius: 7)
        }
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image( "turtlerock"))
    }
}
