//
//  imageExmplrer5.swift
//  11-ExmplorinASyncImge
//
//  Created by Mohamed Nour on 24/10/2024.
//

import SwiftUI

struct imageExmplrer5: View {
    let appleURL = "https://media.istockphoto.com/id/184276818/photo/red-apple.jpg?s=612x612&w=0&k=20&c=NvO-bLsG0DJ_7Ii8SSVoKLurzjmV0Qi4eGfn6nW3l5w="
    var body: some View {
        AsyncImage(url: URL(string: appleURL))
        
    }
}

#Preview {
    imageExmplrer5()
}
