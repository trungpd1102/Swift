//
//  RoundedTextView.swift
//  BullEye
//
//  Created by TrungPham on 21/11/2022.
//

import SwiftUI

struct RoundedTextView: View {
    var title: String
    var value: Int
    
    var body: some View {
        VStack{
            Text(title.uppercased())
                .font(.caption)
            
            Text(String(value))
                .font(.title2)
                .foregroundColor(Color("TextColor"))
                .frame(width: 68.0, height: 56.0)
                .overlay(
                    RoundedRectangle(cornerRadius: 21 )
                        .strokeBorder(Color("StrokeColor"), lineWidth: 2)
                )
        }
        .fontWeight(.bold)
        
    }
}

struct RoundedTextView_Previews: PreviewProvider {
    static var previews: some View {
        RoundedTextView(title: "score", value: 999)
    }
}
