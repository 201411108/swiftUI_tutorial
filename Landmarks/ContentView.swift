//
//  ContentView.swift
//  Landmarks
//
//  Created by 김한동 on 2021/06/24.
//

import SwiftUI

// 컨텐츠와 레이아웃을 포함하고 묘사하는 구조체
// UI를 변경하는 방법
// 1. inspector(미리보기 창)에서 선택하는 방법
//    - 원하는 구성 요소에 cmd + 클릭을 통해 속성을 변경할 수 있음
//    - modifiers 메소드를 통해 SwiftUI를 커스터마이징 할 수 있음
//    - modifiers 메소드가 각 속성에 맞는 뷰를 보여줌.
//    - modifires는 체이닝 방식으로, 수직적으로 작성됨
// Xcode가 변경된 점을 바로 업데이트하여 사용자에게 보여준다.
// 2. 코드에서 UI 요소를 cmd + 클릭 -> show swiftui inspector를 통해 디자인을 수정할 수 있음
struct ContentView: View {
    var body: some View {
        Text("Turtle Rock")
            .font(.title) // modifiers
    }
}

// view의 preview를 제공하는 구조체
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
