//
//  Shapes.swift
//  BullEye
//
//  Created by TrungPham on 06/11/2022.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        VStack{
            Circle()
                .strokeBorder(Color.blue, lineWidth: 2)
                .frame(width: 200, height: 100)
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.green)
                .frame(width: 200, height: 100)
            Ellipse()
                .fill(Color.green)
                .frame(width: 200, height: 100)

            Capsule()
                .fill(Color.green)
                .frame(width: 200, height: 100)

        }
        .background(Color(.red))
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
