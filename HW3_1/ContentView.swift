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
        ZStack {
            Color(#colorLiteral(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393, alpha: 1)).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 25) {
                VStack {
                makeCircle(color: .red, opacity: opacityMax.0 ? 1.0 : 0.5)
                makeCircle(color: .yellow, opacity: opacityMax.1 ? 1.0 : 0.5)
                makeCircle(color: .green, opacity: opacityMax.2 ? 1.0 : 0.5)
                }
                .padding(10)
                .border(Color.gray, width: 3).cornerRadius(20.0)
                
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
                    Text(lableButton).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold()
                }
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 50, alignment: .center)
                .border(Color.blue, width: 3)
                .cornerRadius(15)
            }
            .padding(25)
        }
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
        .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .opacity(opacity)
}

