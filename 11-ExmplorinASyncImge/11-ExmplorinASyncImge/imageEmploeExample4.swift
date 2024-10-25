//
//  imageEmploeExample4.swift
//  11-ExmplorinASyncImge
//
//  Created by Mohamed Nour on 22/10/2024.
//

import SwiftUI

struct imageEmploeExample4: View {
    @State private  var showName = false
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 30) {
                ForEach(ImgType.allCases, id: \.self) {
                    image in
                    let name = image.rawValue
                    let niceName =   name.replacingOccurrences(of: "img", with: "")
                    Image(name)
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.8)
                        .scaledToFill()
                        .cornerRadius(20)
                        .padding()
                        .shadow(radius: 10)
                        .overlay(
                            Text(showName ? niceName.capitalized : "")
                                .foregroundColor(.white)
                                .fontWeight(.semibold)
                                .shadow(color: .white.opacity(0.7), radius: 5, x: 5, y: 5)
                        )
                        .onTapGesture {
                            withAnimation(.easeIn(duration: 1)) {
                                showName.toggle()
                            }
                        }
                }
            }
        }
    }
}


#Preview {
    imageEmploeExample4()
}
