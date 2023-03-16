//
//  ContentView.swift
//  Dice SwiftUI
//
//  Created by German Paul on 16.03.23.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("diceeLogo")
                    .padding(.all)
                Spacer()
                HStack {
                    diceView(num: leftDiceNumber)
                    diceView(num: rightDiceNumber)
                }
                Spacer()
                Button(action: {
                    leftDiceNumber = Int.random(in: 1...6)
                    rightDiceNumber = Int.random(in: 1...6)
                })
                {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color(red: 0.65, green: 0.22, blue: 0.17))
                .padding(.all)
            }
            
            
        }
        
    }
}

struct diceView: View {
    
    let num: Int
    
    var body: some View {
        Image("dice\(num)")
            .padding(.all)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


