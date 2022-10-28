//
//  ContentView.swift
//  BullEye
//
//  Created by Trung Pham on 06/10/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var alertIsVisible: Bool = false
    @State private var sliderValue: Double = 50.0
//    @State private var game: Game = .init()
    @State private var game: Game = .init()

    var body: some View {
        ZStack {
//            rgb(229, 229, 229)
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("PUT THE BULLEYE AS CLOSE AS YOU CAN! 🎯")
                    .kerning(2.0)
                    .bold()
                    .font(.footnote)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 15)
                    .lineSpacing(4.0)
                Text(String(game.target))
                    .kerning(-1)
                    .font(.largeTitle)
                    .fontWeight(.black)

                HStack {
                    Text("1")
                        .kerning(-1)
                        .bold()
                        .font(.headline)
                        .padding(.horizontal, 20)
                    Slider(value: $sliderValue, in: 1.0 ... 100.0)
                    Text("100")
                        .kerning(-1)
                        .bold()
                        .font(.headline)
                        .padding(.horizontal, 20)
                }

                Button(action: {
                    print("Hello SwiftUI")
                    alertIsVisible = true
                }) {
                    Text("Hit Me".uppercased())
                        .bold()
                        .font(.title3)
                }
                .padding(20)
                .background(
                    ZStack{
                        Color("ButtonColor")
                        LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
                    }
                )
                .foregroundColor(Color.white)
                .cornerRadius(21)
//                .border(Color.white, width: 3
                .alert("Hello there!", isPresented: $alertIsVisible) {
                    Button("Awesome!") {}
                } message: {
                    let roundedValue = Int(sliderValue.rounded())

                    Text("The slider's value is \(roundedValue).\n" +
                        "You scored \(self.game.points(sliderValue: roundedValue)) Points\n🎉🎉🎉")
                }
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
