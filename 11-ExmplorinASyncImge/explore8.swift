

import SwiftUI

struct explore8: View {
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVGrid(columns: columns) {
                ForEach(MoreImages.allCases, id: \.self){
                    image in
                    Image(image.rawValue)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(10)
                        .shadow(radius: 20)
                }
            }.padding()
        }
        
    }
}

#Preview {
    explore8()
}
