//
//  ContentView.swift
//  Landmarks
//
//  Created by Toheed Jahan Khan on 16/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 4.0) {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            VStack(alignment: .leading, spacing: 5.0) {
                Text("Turtle Rock")
                    .font(.title)
                .fontWeight(.bold)
                HStack {
                    Text("Joshua Tree National Park").font(.subheadline)
                    Spacer() /*A spacer expands to make its containing view use all of the space of its parent view, instead of having its size defined only by its contents.
                              */
                    Text("California")
                }
            }
                
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
