//
//  ContentView.swift
//  HW3_1
//
//  Created by VICTOR on 15.10.2020.
//

import SwiftUI

struct ContentView: View {
    
    @State var lableButton = "Start"
    @State var opacityMax = (true, false, false)
    
    var body: some View {
        
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20) {
            
            makeCircle(color: .red, opacity: opacityMax.0 ? 1.0 : 0.5)
            makeCircle(color: .yellow, opacity: opacityMax.1 ? 1.0 : 0.5)
            makeCircle(color: .green, opacity: opacityMax.2 ? 1.0 : 0.5)
            
            Spacer()
            
            Button(action: {
                if opacityMax.0 {
                    if lableButton == "Start" { lableButton = "Next" }
                    opacityMax.1.toggle()
                    opacityMax.0.toggle()
                }
                else if opacityMax.1 {
                    opacityMax.1.toggle()
                    opacityMax.2.toggle()
                }
                else {
                    opacityMax.2.toggle()
                    opacityMax.0.toggle()
                }
            } ) {
                Text(lableButton)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.blue)
                    .bold()
            }
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50, alignment: .center)
            .border(Color.blue, width: 5)
            .cornerRadius(20)
        }
        .padding(20)
        .clipped()
    }
   
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

func makeCircle(color: Color, opacity: Double) -> some View {
    return Circle()
        .foregroundColor(color)
        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .opacity(opacity)
}

