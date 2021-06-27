//
//  CircleImage.swift
//  Landmarks
//
//  Created by 김한동 on 2021/06/24.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("seoul")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
