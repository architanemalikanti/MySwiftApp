
//  ContentView.swift
//  Starbucks
//
//  Created by Archita Nemalikanti on 2/28/24.
//

import SwiftUI

enum Emoji: String, CaseIterable{
    case 😁, 🥲, 😎, 😪
}

struct ContentView: View {
    @State var selection: Emoji = .😁
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.green.opacity(0.7)
                    .ignoresSafeArea()
                
                VStack{
                    Text(selection.rawValue)
                        .font(.system(size: 150))
                        .foregroundColor(.white) // Set text color to white
                    
                    Picker("Select Emoji", selection: $selection){
                        ForEach(Emoji.allCases, id:\.self){emoji in
                            Text(emoji.rawValue)
                        }
                    }
                    .pickerStyle(.segmented)
                    .padding()
                }

                
             
            }
            
            .navigationTitle("Starbucks Cold Pull")
            
        }
        .foregroundColor(.white)
    }
}
