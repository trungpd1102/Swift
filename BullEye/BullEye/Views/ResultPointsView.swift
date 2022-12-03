//
//  ResultPointsView.swift
//  BullEye
//
//  Created by TrungPham on 27/11/2022.
//

import SwiftUI

struct ResultPointsView: View {
    @Binding var sliderValue: Double
    @Binding var game: Game
    @Binding var alertIsVisible: Bool
    
    
    var body: some View {
        
        let roundedValue = Int(sliderValue.rounded())
        let points = game.points(sliderValue: roundedValue)
        
        ZStack{
            Color(.gray).opacity(0.25).edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 10){
                InstructionText(text: "The slider's value is")
                BigNumberText(target: String(roundedValue))
                BodyText(text: "Your score \(points) Points\n🎉🎉🎉")
                Button(action: {
                    game.startNewRound(point: points)
                    withAnimation {
                        alertIsVisible = false
                    }
                }){
                    ButtonText(text: "Start New Round")
                }
                
            }
            .padding()
            .frame(maxWidth: 300)
            .background(Color("BackgroundColor"))
            .cornerRadius(21)
            .shadow(color: .black.opacity(0.15),radius: 10, x: 5, y: 5)
//            .transition(.opacity)
        }
        
    }
    
}

struct ResultPointsView_Previews: PreviewProvider {
    static var previews: some View {
        ResultPointsView(sliderValue: .constant(50.0), game: .constant(Game()), alertIsVisible: .constant(true))
        
    }
}
