//
//  ContentView.swift
//  Memorize
//
//  Created by marco on 10/7/24.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["🧸", "🎀", "✂️", "⛄️", "🧸", "🎀", "✂️", "⛄️"]
    
    @State var cardCount: Int = 4
    
    var body: some View {
        ScrollView {
            cards
        }
        .padding()
    }
    
    var cards: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 120))], alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/) {
            ForEach(0..<cardCount, id: \.self){index in
                CardView(content: emojis[index])
                    .aspectRatio(2/3, contentMode: .fit)
            }
            
        }.foregroundColor(.orange)
    }
}

struct CardView: View {
    let content : String
    @State var isFacedUp: Bool = true
   
    var body : some View {
        let base = RoundedRectangle(cornerRadius: 12)
        
        ZStack {
            Group {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            }
            .opacity(isFacedUp ? 1 : 0 )
            base.fill().opacity(isFacedUp ? 0 : 1)
        }.onTapGesture {
            isFacedUp.toggle()
        }
    }
}


#Preview {
    ContentView()
}
