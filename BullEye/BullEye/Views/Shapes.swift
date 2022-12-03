//
//  Shapes.swift
//  BullEye
//
//  Created by TrungPham on 06/11/2022.
//

import SwiftUI

struct Shapes: View {
    
    @State private var toggleAnimation: Bool = false
    
    var body: some View {
        VStack{
            Circle()
                .strokeBorder(Color.blue, lineWidth: 2)
                .frame(width: 200, height: 100)
            if toggleAnimation {
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.green)
                    .frame(width: 200, height: 100)
                    .transition(.scale)
            }
            Ellipse()
                .fill(Color.green)
                .frame(width: 200, height: 100)
            
            Capsule()
                .fill(Color.green)
                .frame(width: 200, height: 100)
            Button(action: {
                withAnimation{
                    toggleAnimation.toggle()
                }
            }){
                Text("Animate!")
            }
            
        }
        .background(Color(.lightGray))
        
        
        
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
