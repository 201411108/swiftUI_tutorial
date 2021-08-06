//
//  DistrictList.swift
//  ToupInfo
//
//  Created by 김한동 on 2021/07/28.
//

import SwiftUI

struct DistrictList: View {
    // var geocode: Int // 지역 코드를 geocode view로부터 받음
    var districts: [String] = ["노원구", "강남구", "도봉구"]
    
    var body: some View {
        List(districts, id: \.self) { district in
            RowView(name: district)
        }
    }
}

struct DistrictList_Previews: PreviewProvider {
    static var previews: some View {
        DistrictList()
    }
}
