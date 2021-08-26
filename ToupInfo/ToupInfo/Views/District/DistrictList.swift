//
//  DistrictList.swift
//  ToupInfo
//
//  Created by 김한동 on 2021/07/28.
//

import SwiftUI

struct DistrictList: View {
    @ObservedObject var viewModel: DistrictViewModel
    
    var body: some View {
        List(viewModel.itemsList ?? [Item(code: 1, name: "", rnum: 1)], id: \.code) { item in
            item.name != "" ?
                RowView(name: item.name) :
                RowView(name: "없음") // 이 경우에는 바로 지역관광정보 사용
        }
        .onAppear(perform: viewModel.refresh)
    }
}

struct DistrictList_Previews: PreviewProvider {
    static var previews: some View {
        DistrictList(viewModel: DistrictViewModel(code: 1, geocodeService: GeocodeService()))
    }
}
