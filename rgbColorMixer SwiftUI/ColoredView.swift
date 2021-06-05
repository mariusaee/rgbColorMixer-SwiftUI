//
//  ColoredView.swift
//  rgbColorMixer SwiftUI
//
//  Created by Marius Malyshev on 05.06.2021.
//

import SwiftUI

struct ColoredView: View {
    @Binding var redValue: Double
    @Binding var greenValue: Double
    @Binding var blueValue: Double
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .foregroundColor(Color(
                red: redValue,
                green: greenValue,
                blue: blueValue))
            .overlay(RoundedRectangle(cornerRadius: 25.0)
                        .stroke(Color.white, lineWidth: 4))
            .frame(height: 170)
    }
}

struct ColoredView_Previews: PreviewProvider {
    static var previews: some View {
        ColoredView(
            redValue: .constant(0),
            greenValue: .constant(1),
            blueValue: .constant(1)
        )
    }
}
