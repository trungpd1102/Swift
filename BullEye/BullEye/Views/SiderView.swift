//
//  SiderView.swift
//  BullEye
//
//  Created by TrungPham on 06/11/2022.
//

import SwiftUI

struct SiderView: View {
    @Binding var sliderValue: Double
    
    var body: some View {
        HStack {
            SliderLabelText(labelValue: "1")
            Slider(value: $sliderValue, in: 1.0 ... 100.0)
            SliderLabelText(labelValue: "100")
        }
    }
}

struct SliderLabelText: View{
    var labelValue: String

    var body: some View {
        Text(labelValue)
            .kerning(-1)
            .bold()
            .font(.headline)
//            .padding(.horizontal, 20)
            .frame(width: 60)
    }
}

struct SiderView_Previews: PreviewProvider {
    static var previews: some View {
        SiderView(sliderValue: .constant(50.0))
        
    }
}


