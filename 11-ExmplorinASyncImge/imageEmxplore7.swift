//
//  imageEmxplore7.swift
//  11-ExmplorinASyncImge
//
//  Created by Mohamed Nour on 24/10/2024.
//

import SwiftUI

struct imageEmxplore7: View {
    @State private var scaleTofit = true
    let urlString = "https://media.istockphoto.com/id/184276818/photo/red-apple.jpg?s=612x612&w=0&k=20&c=NvO-bLsG0DJ_7Ii8SSVoKLurzjmV0Qi4eGfn6nW3l5w="
    
    var body: some View {

        ImageFromURl(width: .infinity, heiht: 300, urlString: urlString, contentMode: scaleTofit ? .fit : .fill, cornerRadius: 20)
            .shadow(radius: 30)
            //.background(Color.blue)
            .padding()
           // .background(Color.green)
            .onTapGesture {
                scaleTofit.toggle()
            }
  }
}

struct ImageFromURl: View {
    let width : CGFloat
    let heiht: CGFloat
    let urlString: String
    let contentMode: ContentMode
    let cornerRadius: CGFloat
    var body: some View {
        AsyncImage(url: URL(string: urlString)) {
            phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let image):
                image
                    .resizable()
                    .cornerRadius(cornerRadius)
                    .aspectRatio(contentMode: contentMode)
                    .frame(width: width, height: heiht)
            case .failure:
                Image(systemName: "photo")
                    .imageScale(.large)
            default :
                EmptyView()
            }
        }

    }
}

#Preview {
    imageEmxplore7()
}
