//
//  TextViews.swift
//  BullEye
//
//  Created by Trung Pham on 01/11/2022.
//

import SwiftUI

struct InstructionText: View {
    var text: String
    
    var body: some View {
        Text(text.uppercased())
            .kerning(2.0)
            .bold()
            .font(.footnote)
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)    }
}

struct BigNumberText: View {
    var target: String
    
    var body: some View{
        Text(target)
            .kerning(-1)
            .font(.largeTitle)
            .fontWeight(.black)

    }
}

struct TextViews_Previews: PreviewProvider
{
    static var previews: some View {
        VStack{
            InstructionText(text: "PUT THE BULLEYE AS CLOSE AS YOU CAN! 🎯")
            BigNumberText(target: "999")
        }
    }
}
