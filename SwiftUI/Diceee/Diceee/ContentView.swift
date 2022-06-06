//
//  ContentView.swift
//  Diceee
//
//  Created by Nhat Bui Minh on 04/06/2022.
//
//

import SwiftUI

struct ContentView: View {
    @State var leftDiceNum = 1
    @State var rightDiceNum = 2
    @State var midDiceNum = 2
    var body: some View {
        ZStack {
            Image("background").resizable().ignoresSafeArea(.all)

            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    Dice(diceVal: leftDiceNum)
                    Dice(diceVal: rightDiceNum)
                    Dice(diceVal: midDiceNum)
                }
                .padding(.horizontal)
                Button(action: {
                    self.leftDiceNum = Int.random(in: 1...6)
                    self.rightDiceNum = Int.random(in: 1...6)
                    self.midDiceNum = Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.red)
                Spacer()

            }
        }
    }
}

class ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }

    #if DEBUG
    @objc class func injected() {
        let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
        windowScene?.windows.first?.rootViewController =
                UIHostingController(rootView: ContentView())
    }
    #endif
}

struct Dice: View {
    var diceVal : Int
    var body: some View {
            Image("dice\(diceVal)")
        .resizable()
        .aspectRatio(1, contentMode: .fit)
        .padding()
    }
}
