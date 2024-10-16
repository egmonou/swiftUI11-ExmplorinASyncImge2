//
//  ContentView.swift
//  11-ExmplorinASyncImge
//
//  Created by Mohamed Nour on 15/10/2024.
//

import SwiftUI

struct ContentViewDepreated: View {
    @State private var scaleToFit = true
    var body: some View {
        if scaleToFit {
                Image(imgLightening1)
                    .resizable()
                    .scaledToFit()
                   .cornerRadius(20)
                   .padding()
                   .onTapGesture {
                       scaleToFit.toggle()
                   }
        } else {
                    Image(imgLightening1)
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width * 0.8
                               , height: UIScreen.main.bounds.height * 0.25)
                       .scaledToFill()
                       .cornerRadius(20)
                       .padding()
                       .onTapGesture {
                           scaleToFit.toggle()
                       }
        }
    }
}


struct ContentViewDNew: View {
    @State private var scaleToFit = true
    var frameWidth: CGFloat? {
        scaleToFit ? nil : UIScreen.main.bounds.width * 0.8
    }
    var frameHeight: CGFloat? {
        scaleToFit ? nil : UIScreen.main.bounds.height * 0.25
    }
    
    var aspectRatio: ContentMode {
        scaleToFit ? .fit : .fill
    }
    
    var body: some View {
        Image(imgLightening1)
            .resizable()
            .frame(width: frameWidth, height: frameHeight)
            .aspectRatio(contentMode: aspectRatio)
            .cornerRadius(20)
            .padding()
            .onTapGesture {
                scaleToFit.toggle()
            }
    }
}

#Preview {
    ContentViewDNew()
}
