//
//  ColoredView.swift
//  rgbColorMixer SwiftUI
//
//  Created by Marius Malyshev on 05.06.2021.
//

import SwiftUI

struct ColoredView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .overlay(RoundedRectangle(cornerRadius: 25.0).stroke(Color.white, lineWidth: 4))
            .frame(height: 170)
            .padding()
            .foregroundColor(Color(red: 0, green: 0, blue: 0))
    }
}

struct ColoredView_Previews: PreviewProvider {
    static var previews: some View {
        ColoredView()
    }
}
