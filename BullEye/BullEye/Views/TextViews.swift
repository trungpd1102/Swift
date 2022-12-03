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

struct SliderLabelText: View{
    var labelValue: String

    var body: some View {
        Text(labelValue)
            .kerning(-1)
            .bold()
            .font(.headline)
            .frame(width: 60)
    }
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

struct BodyText: View {
    var text: String
    
    var body: some View{
        Text(text)
            .font(.subheadline)
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
            .lineSpacing(10)

    }
}

struct ButtonText: View {
    var text: String
    
    var body: some View{
        Text(text)
            .padding()
            .font(.body)
            .frame(maxWidth: .infinity)
            .fontWeight(.bold)
            .foregroundColor(Color.white)
            .background(Color("AccentColor"))
            .cornerRadius(12)

    }
}


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
        .kerning(-0.2)
        .fontWeight(.bold)
        
    }
}


struct TextViews_Previews: PreviewProvider
{
    static var previews: some View {
        VStack{
            InstructionText(text: "PUT THE BULLEYE AS CLOSE AS YOU CAN! 🎯")
            RoundedTextView(title: "score", value: 999)
            InstructionText(text: "The slider's value is")
            BigNumberText(target: "999")
            BodyText(text: "Your score 200 Points\n🎉🎉🎉")
            ButtonText(text: "Start New Round")
        }
    }
}
