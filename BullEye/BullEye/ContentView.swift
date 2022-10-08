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
                .bold()
                .kerning(2.0)
                .font(.footnote)
                .multilineTextAlignment(.center)
                .padding(20)
                .lineSpacing(4.0)
            Text("89")
            HStack{
                Text("1")
                Slider(value: .constant(50), in: 1.0...100.0)
                Text("100")
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
            .previewLayout(.fixed(width: 568, height: 320))
        
    }
}
