//
//  imageExmplre6.swift
//  11-ExmplorinASyncImge
//
//  Created by Mohamed Nour on 24/10/2024.
//

import SwiftUI

struct imageExmplrer6: View {
    let appleURL = "https://media.istockphoto.com/id/184276818/photo/red-apple.jpg?s=612x612&w=0&k=20&c=NvO-bLsG0DJ_7Ii8SSVoKLurzjmV0Qi4eGfn6nW3l5w="
    
    var body: some View {
        AsyncImage(url: URL(string: appleURL)) {
            phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let image):
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
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
    imageExmplrer6()
}
