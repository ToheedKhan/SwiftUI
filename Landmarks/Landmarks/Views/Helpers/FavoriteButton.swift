//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Toheed Jahan Khan on 20/11/23.
//

/*
Abstract:
A button that acts as a favorites indicator.
*/

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool

    var body: some View {
        /*
         The title string that you provide for the button’s label doesn’t appear in the UI when you use the iconOnly label style, but VoiceOver uses it to improve accessibility.
         */
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow : .gray)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))

    }
}
