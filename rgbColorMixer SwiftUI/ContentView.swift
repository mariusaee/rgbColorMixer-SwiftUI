//
//  ContentView.swift
//  rgbColorMixer SwiftUI
//
//  Created by Marius Malyshev on 05.06.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redValue = Double.random(in: 0...1)
    @State private var greenValue = Double.random(in: 0...1)
    @State private var blueValue = Double.random(in: 0...1)
    @State private var sliderValue = Double.random(in: 0...255)
    @State private var stringValue = "200"

    var body: some View {
        
        ZStack {
            Color(red: 32/255, green: 88/255, blue: 154/255)
                .ignoresSafeArea()
            
            VStack(spacing: 40) {
                ColoredView(redValue: $redValue, greenValue: $greenValue, blueValue: $blueValue)
                HStack {
                    Text("\(lround(sliderValue))")
                        .foregroundColor(.white)
                        .frame(width: 50)
                    ColorSlider(value: $sliderValue, color: .red)
                    TextField("", text: $stringValue)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 60)
                        .multilineTextAlignment(.trailing)
                }
                .font(.title2)
                Spacer()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


