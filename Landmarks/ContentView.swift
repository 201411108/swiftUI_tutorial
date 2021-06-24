//
//  ContentView.swift
//  Landmarks
//
//  Created by 김한동 on 2021/06/24.
//

import SwiftUI

// Section 3 : combine views using stacks
// 한 개의 뷰만 body 변수에 포함되기 여러 뷰를 보여주기 위해서는 스택에 포함시켜야 함
// 1. Text의 cmd + click -> embed in vstack을 통해 vstack 생성(virtical stack)
// 2. HStack -> horizontal stack
// 3. Spacer -> 설정된 컨첸츠의 크기 대신 부모 View의 모든 공간을 활용할 수 있도록 해준다.
struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) { // 정렬 방식 수정
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
        .padding() // 내부 padding 부여
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
