//
//  ContentView.swift
//  BusinessCard
//
//  Created by Shun Ganas on 3/22/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .ignoresSafeArea(.all)
            VStack {
                Image("profile")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(Color.white, lineWidth: 5)
                    )
                Text("Bestguy 360")
                    .font(Font.custom("DeliciousHandrawn-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                Divider()
                    .frame(maxWidth: 100)
                InfoView(text: "(123) 456-7890", imageName: "phone.fill")
                InfoView(text: "test123@gmail.com", imageName: "envelope.fill")
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

