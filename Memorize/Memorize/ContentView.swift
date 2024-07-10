//
//  ContentView.swift
//  Memorize
//
//  Created by marco on 10/7/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFacedUp: true)
            CardView()
        }
        .padding()
        .foregroundColor(.orange)
    }
}

struct CardView: View {
    var isFacedUp: Bool = false
    
    var body : some View {
        ZStack {
            if(isFacedUp){
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 2)
                Text("🧸").font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 12)
            }
            
        }
    }
}


#Preview {
    ContentView()
}
