//
//  ContentView.swift
//  11-ExmplorinASyncImge
//
//  Created by Mohamed Nour on 15/10/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Text("Hello, world!")
            .onAppear {
                for i in 1...48 {
                    print("case img\(i)")
                }
            }
    }
}

#Preview {
    ContentView()
}
