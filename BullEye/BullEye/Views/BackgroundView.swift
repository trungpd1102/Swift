//
//  BackgroundView.swift
//  BullEye
//
//  Created by TrungPham on 19/11/2022.
//

import SwiftUI

struct BackgroundView: View {
    @Binding var game: Game
    @Binding var sliderValue: Double
    
    var body: some View {
        VStack{
            TopView(game: $game, sliderValue: $sliderValue)
            Spacer()
            BottomView(game: $game)
        }
        .edgesIgnoringSafeArea(.all)
        .background(RingsView())
        
    }
}

struct TopView: View {
    @State private var alertIsVisible: Bool = false
    @Binding var game: Game
    @Binding var sliderValue: Double
    
    var body: some View {
        HStack{
            Button(action: {
                alertIsVisible = true
            }){
                RoundedImageViewStroked(systemName: "arrow.counterclockwise")
            }
            .alert("Are you sure you want to start over?", isPresented: $alertIsVisible
            ){
                Button("OK", action: {
                    game.restart()
                    sliderValue = 50.0
                })
                
                Button("Cancel", action: {
                })
                
            }
            Spacer()
            RoundedImageViewFilled(systemName: "list.dash")
            
        }
        .padding(30)
        //        .padding(.vertical, 50)
    }
}

struct BottomView: View {
    @Binding var game: Game
    
    var body: some View {
        HStack{
            RoundedTextView(title: "score", value: game.score)
            Spacer()
            RoundedTextView(title: "round", value: game.round)
        }
        .padding(30)
    }
}

struct RingsView: View{
    
    @Environment(\.colorScheme) var colorSchema
    
    var body: some View{
        ZStack{
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
            
            ForEach(1..<6){ ring in
                let size = CGFloat(ring * 100)
                let opacity = colorSchema == .dark ? 0.1 : 0.3
                
                Circle()
                    .stroke(lineWidth: 20.0)
                    .fill(
                        RadialGradient(gradient: Gradient(colors: [Color("RingColor").opacity(0.8 * opacity), Color("RingColor").opacity(0)]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, startRadius: 100, endRadius: 300)
                        
                    )
                    .frame(width: size, height: size)
            }
            
        }
    }
}


struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(game: .constant(Game()), sliderValue: .constant(50.0))
    }
}
