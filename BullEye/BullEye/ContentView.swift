//
//  ContentView.swift
//  BullEye
//
//  Created by Trung Pham on 06/10/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("PUT THE BULLEYE AS CLOSE AS YOU CAN! 🎯")
                .kerning(2.0)
                .bold()
                .font(.footnote)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 15)
                .lineSpacing(4.0)
            Text("89")
                .kerning(-1)
                .font(.largeTitle)
                .fontWeight(.black)
            
            HStack{
                Text("1")
                    .kerning(-1)
                    .bold()
                    .font(.headline)
                    .padding(.horizontal, 30)
                Slider(value: .constant(50), in: 1.0...100.0)
                Text("100")
                    .kerning(-1)
                    .bold()
                    .font(.headline)
                    .padding(.horizontal, 30)

                
            }
            Button(action: {}){
                Text("Hit Me")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
        
    }
}
