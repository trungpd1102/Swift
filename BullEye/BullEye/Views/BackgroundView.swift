//
//  BackgroundView.swift
//  BullEye
//
//  Created by TrungPham on 19/11/2022.
//

import SwiftUI

struct BackgroundView: View {
    @Binding var game: Game
    
    var body: some View {
        VStack{
            HStack{
                RoundedImageViewStroked(systemName: "arrow.counterclockwise")
                Spacer()
                RoundedImageViewFilled(systemName: "list.dash")
                
            }
            .padding(30)
            Spacer()
            HStack{
                RoundedTextView(title: "score", value: game.score)
                Spacer()
                RoundedTextView(title: "round", value: game.round)
            }
            .padding(30)
        }
        .background(Color("BackgroundColor"))
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(game: .constant(Game()))
    }
}
