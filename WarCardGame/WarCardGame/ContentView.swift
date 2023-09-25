//
//  ContentView.swift
//  WarCardGame
//
//  Created by sunbeam  on 25/07/23.
//

import SwiftUI

struct ContentView: View {
    
    //property wrapper which change accordingly,type that can read and write a value managed by SwiftUI. Modifier can change the visual state
    @State var playerCard = "card7"
    @State var CPUCard = "card13"
    
   
    @State var playerScore = 0
    @State var CPUScore = 0
    
    var body: some View {
        ZStack{
            Image("background-plain").resizable().ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(CPUCard)
                    Spacer()
                }
                Spacer()
                
                //button with image
                //double click on action
                Button {
                    deal()
                } label: {
                    //visual representation
                    Image("button")
                }

                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player").font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore)).font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU").font(.headline).padding(.bottom,10.0)
                        Text(String(CPUScore)).font(.largeTitle)
                    }
                    Spacer()
                }.foregroundColor(.white)
                Spacer()
            }
        }
    }
    
    func deal(){
        //randomize the players card
        
        //random function wrap with string as image only accept string
        var playerCardValue = String(Int.random(in: 2...14))
        playerCard = "card" + playerCardValue
        
        //randomize the CPUs card
        var CPUCardValue = String(Int.random(in: 2...14))
        CPUCard = "card" + CPUCardValue
        
        
        //Update the score card
        if playerCardValue > CPUCardValue {
            //add 1 to playerScore
            playerScore += 1
        }
        else if CPUCardValue > playerCardValue {
            CPUScore += 1
        }
        
    }
}
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

