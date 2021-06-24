//
//  CircleImage.swift
//  Landmarks
//
//  Created by 김한동 on 2021/06/24.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock") // assets에 저장된 이미지 이름을 통해 이미지 불러오기
            .clipShape(Circle()) // clip할 모양 선택
            .overlay(Circle().stroke(Color.white, lineWidth: 4)) // 원 모양에 대한 스타일 속성 지정
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
