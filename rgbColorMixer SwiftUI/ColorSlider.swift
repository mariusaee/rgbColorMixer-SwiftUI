//
//  ColorSlider.swift
//  rgbColorMixer SwiftUI
//
//  Created by Marius Malyshev on 05.06.2021.
//

import SwiftUI

struct ColorSlider: View {
    @Binding var value: Double
    
    var body: some View {
        HStack {
            Slider(value: $value, in: 0...255, step: 1)
        }
    }
}

struct ColorSlider_Previews: PreviewProvider {
    static var previews: some View {
        ColorSlider(value: .constant(10))
    }
}
