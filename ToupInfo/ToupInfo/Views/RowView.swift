//
//  RowView.swift
//  ToupInfo
//
//  이 뷰는 지역명 및 시군구명 표시 시 선택할 List 화면 구성을 위한 보조 View이다.
//
//  Created by 김한동 on 2021/07/28.
//

import SwiftUI

struct RowView: View {
    var name: String
    
    var body: some View {
        HStack {
            Spacer()
            Text(name)
                .multilineTextAlignment(.center)
            Spacer()
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(name: geocodes[0].name)
    }
}
