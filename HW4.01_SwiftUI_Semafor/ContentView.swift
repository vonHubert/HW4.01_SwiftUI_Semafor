//
//  ContentView.swift
//  HW4.01_SwiftUI_Semafor
//
//  Created by MacBook Air 13 on 11.01.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var LightPosition = 0
    
    var body: some View {
        VStack {
            CircleView(color: .red)
                .padding(.top, 16)
                .brightness(LightPosition == 1 ? 0 : 0.25)
            
            CircleView(color: .yellow)
                .padding(.top, 16)
                .brightness(LightPosition == 2 ? 0 : 0.25)
    
            CircleView(color: .green)
                .padding(.top, 16)
                .brightness(LightPosition == 3 ? 0 : 0.25)
         
            Button(action: {
                LightPosition = LightPosition < 3 ? LightPosition + 1 : 1
            }) {
                Text("\(LightPosition == 0 ? "Start":"Next color")")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
            }.padding(.top, 32)
        }
        .padding(.top, 16)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
