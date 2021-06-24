//
//  ContentView.swift
//  Landmarks
//
//  Created by 김한동 on 2021/06/24.
//

import SwiftUI

// Section 4 : Create a Custom Image View
// 코드 추가 없이 이미지의 일부 부분을 보일 수 있는 뷰를 만드는 방법
struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Turtle Rock")
                .font(.title)
            HStack {
                Text("Joshua Tree National Park")
                    .font(.subheadline)
                Spacer()
                Text("California")
                    .font(.subheadline)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
