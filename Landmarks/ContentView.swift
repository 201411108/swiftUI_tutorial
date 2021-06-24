//
//  ContentView.swift
//  Landmarks
//
//  Created by 김한동 on 2021/06/24.
//

import SwiftUI

// Section 6 : Compose the Detail View
// 생성한 view들을 하나로 합치기
struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top) // 화면 위쪽까지 채우기
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130) // 이미지를 mapview 위에 겹치게 하기 위해 사용
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline) // refactoring
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
