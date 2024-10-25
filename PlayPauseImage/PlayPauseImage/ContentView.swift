//
//  ContentView.swift
//  PlayPauseImage
//
//  Created by Mohamed Nour on 25/10/2024.
//

import SwiftUI

struct ContentView: View {
    @State var meditation: Bool = false
    var prompt: String {
        return meditation ? "Pause" : "Play"
    }
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, .purple], startPoint: .topLeading, endPoint: .bottomTrailing)
                .opacity(0.3)
                .ignoresSafeArea()
            
            Image("singingBowl")
                .resizable()
                .frame(width: 250, height: 250)
                .clipShape(.circle)
                .overlay(
                    Text(prompt)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.horizontal,10)
                        .padding(.vertical, 5)
                        .foregroundColor(.green)
                        .background(.blue)
                        .cornerRadius(40)
                ).onTapGesture {
                    withAnimation {
                        meditation.toggle()
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}
