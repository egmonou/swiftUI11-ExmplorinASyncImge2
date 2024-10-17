//
//  imageExplorerExmpale2.swift
//  11-ExmplorinASyncImge
//
//  Created by Mohamed Nour on 17/10/2024.
//

import SwiftUI

struct imageExplorerExmpale2: View {
    @State private var scaleToFit = true
    var body: some View {
        Image(ImgType.imgLightening1.rawValue)
            .resizable()
            .aspectRatio(contentMode: scaleToFit ? .fit : .fill)
            .cornerRadius(20)
            .padding()
            .onTapGesture {
                scaleToFit.toggle()
            }
    }
}

#Preview {
    imageExplorerExmpale2()
}
