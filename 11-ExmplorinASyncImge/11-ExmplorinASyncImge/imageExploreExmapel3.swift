//
//  imageExploreExmapel3.swift
//  11-ExmplorinASyncImge
//
//  Created by Mohamed Nour on 17/10/2024.
//

import SwiftUI

struct imageExploreExmapel3: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                ForEach(ImgType.allCases, id: \.self) {
                    image in
                    Image(image.rawValue)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(20)
                        .padding()
                        .shadow(radius: 10)
                }
            }
        }}
}

#Preview {
    imageExploreExmapel3()
}
