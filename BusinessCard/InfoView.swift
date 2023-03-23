//
//  InfoView.swift
//  BusinessCard
//
//  Created by Shun Ganas on 3/23/23.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(Color.white) //can use .fill(Color.white) and overlay
                .frame(height: 40)
            HStack {
                Image(systemName: imageName)
                    .foregroundColor(.green)
                Text(text)
            }
        }
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello World", imageName: "phone")
            .previewLayout(.sizeThatFits)
    }
}
