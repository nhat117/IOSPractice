//
//  ContentView.swift
//  BussinessCard
//
//  Created by Nhat Bui Minh on 04/06/2022.
//
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.96, green: 0.94, blue: 0.91, opacity: 1.00).edgesIgnoringSafeArea(.all)
            VStack {
                Image("my_image")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150.0, height: 150.0)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.gray, lineWidth: 5))
                Text("Nhat Minh BUI")
                        .font(Font.custom("Roboto-Regular", size: 40))
                        .bold()
                        .foregroundColor(.gray)
                Text("Data Scientist").foregroundColor(.gray).font(.system(size: 25))
                Divider()
                InfoView(text: "+84927703809", img:"phone.fill")
                InfoView(text: "nhat.bui@gmail.com", img:"envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

