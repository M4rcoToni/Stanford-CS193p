//
//  ContentView.swift
//  Memorize
//
//  Created by marco on 10/7/24.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["🧸", "🎀", "✂️", "⛄️"]
    var body: some View {
        HStack {
            ForEach(emojis.indices, id: \.self){index in
                CardView(content: emojis[index])
            }
        }
        .padding()
        .foregroundColor(.orange)
    }
}

struct CardView: View {
    let content : String
    @State var isFacedUp: Bool = true
   
    var body : some View {
        let base  = RoundedRectangle(cornerRadius: 12)
        
        ZStack {
            if(isFacedUp){
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            } else {
                base.fill()
            }
            
        }.onTapGesture {
            isFacedUp.toggle()
        }
    }
}


#Preview {
    ContentView()
}
