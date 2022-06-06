//
//  InfoView.swift
//  BussinessCard
//
//  Created by Nhat Bui Minh on 04/06/2022.
//

import SwiftUI

struct InfoView: View {
    let text :String
    let img : String
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(Color.gray)
            .frame(height: 50)
            .overlay(
                HStack {
                    Image(systemName: img).foregroundColor(.green)
                    Text(text).foregroundColor(.white)
                }
            ).padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text:"Hello",img: "phone.fill").previewLayout(.sizeThatFits)
    }
}
