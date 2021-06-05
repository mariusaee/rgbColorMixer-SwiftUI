//
//  ColorSlider.swift
//  rgbColorMixer SwiftUI
//
//  Created by Marius Malyshev on 05.06.2021.
//

import SwiftUI

struct ColorSlider: View {
    @Binding var value: Double
    var color: Color
    
    var body: some View {
            Slider(value: $value, in: 0...255, step: 1)
                .accentColor(color)
                
    }
}

struct ColorSlider_Previews: PreviewProvider {
    static var previews: some View {
        ColorSlider(value: .constant(10), color: .red)
    }
}
