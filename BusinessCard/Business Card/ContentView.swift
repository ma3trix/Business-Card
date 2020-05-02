//
//  ContentView.swift
//  Business Card
//
//  Created by Malik Adebiyi on 2020-03-23.
//  Copyright © 2020 dot.sandbox. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red:0.18, green:0.80, blue:0.44, opacity:1.00)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("mypicture")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300.0, height: 300.0)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                )
                    
                Text("Malik Adebiyi")
                .font(Font.custom("Pacifico-Regular", size: 40))
                .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+437 247 ****", imageName: "phone.fill")
                InfoView(text: "ma3trikx@gmail.com", imageName: "envelope.fill")
                
                

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

