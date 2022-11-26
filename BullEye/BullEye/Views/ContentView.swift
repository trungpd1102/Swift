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
    @State private var game: Game = Game()
    
    var body: some View {
        
        ZStack {
            BackgroundView(game: $game)
            VStack {
                InstructionView(game: $game)
                
                SiderView(sliderValue: $sliderValue)
                
                HitMeButton(sliderValue: $sliderValue, alertIsVisible: $alertIsVisible, game: $game)
            }
            .foregroundColor(Color("TextColor"))
        }
    }
}


struct InstructionView: View{
    @Binding var game: Game
    
    var body: some View{
        VStack{
            InstructionText(text: "PUT THE BULLEYE AS CLOSE AS YOU CAN! 🎯")
                .padding(.horizontal, 30)
            BigNumberText(target: String(game.target))
        }
    }
}


struct HitMeButton: View {
    @Binding var sliderValue: Double
    @Binding var alertIsVisible: Bool
    @Binding var game: Game
    
    @State private var points: Int = 0
    @State private var roundedValue: Int = 0
    
    
    var body: some View {
        Button( action: {
            alertIsVisible = true
            roundedValue = Int(sliderValue.rounded())
            points = game.points(sliderValue: roundedValue)
            
        }) {
            Text("Hit Me".uppercased())
                .bold()
                .font(.title3)
        }
        .padding(20)
        .foregroundColor(Color(.white))
        .background(
            ZStack{
                Color("ButtonColor")
                LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
            }
        )
        .cornerRadius(21)
        .overlay(RoundedRectangle(cornerRadius: 21)
            .strokeBorder(Color.white, lineWidth: 2.0))
        .shadow(color: Color.black.opacity(0.1), radius: 10, x: 4, y: 4)
        .alert("Hello there!", isPresented: $alertIsVisible
        ){
            Button("Awesome!", action: {
                game.startNewRound(point: points)
            })
        } message: {
            Text("The slider's value is \(roundedValue).\n" +
                 "You scored \(points) Points\n🎉🎉🎉")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
    }
}
