//
//  RoundViews.swift
//  BullEye
//
//  Created by TrungPham on 19/11/2022.
//

import SwiftUI

struct RoundedImageViewStroked: View {
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title2)
            .foregroundColor(Color("TextColor"))
            .frame(width: 56.0, height: 56.0)
            .overlay(
                Circle()
                    .strokeBorder(Color("StrokeColor"), lineWidth: 2)
            )
    }
}

struct RoundedImageViewFilled: View {
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title2)
            .frame(width: 56.0, height: 56.0)
            .foregroundColor(Color("FilledTextColor"))
            .background(
                Circle()
                    .fill(Color("FilledBackgroundColor"))
            )


    }
}

struct RoundedImageViewStroked_Previews: PreviewProvider {
    static var previews: some View {
        RoundedImageViewStroked(systemName: "arrow.counterclockwise")
        RoundedImageViewFilled(systemName: "list.dash")
        RoundedImageViewFilled(systemName: "xmark")
        
    }
}
