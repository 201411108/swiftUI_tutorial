//
//  GeoCodeList.swift
//  ToupInfo
//
//  GeocodeViewModel을 통해 지역정보 API를 호출하여 뷰에 바인딩
//  각 도시를 눌렀을 때 해당 code값을 기반으로 시/군/구명을 불러오는 API를 호출함.
//  Created by 김한동 on 2021/07/27.
//

import SwiftUI

struct GeoCodeList: View {
    @ObservedObject var viewModel: GeocodeViewModel
    
    var body: some View {
        NavigationView {
            List(viewModel.itemsList ?? [Item(code: 1, name: "서울", rnum: 1)], id: \.code) { item in
                NavigationLink(destination: DistrictList(viewModel: DistrictViewModel(code: item.code, geocodeService: GeocodeService()))) {
                    RowView(name: item.name)
                }
            }
            .onAppear(perform: viewModel.refresh)
            .navigationTitle("지역 선택")
        }
    }
}

struct GeoCodeList_Previews: PreviewProvider {
    static var previews: some View {
        GeoCodeList(viewModel: GeocodeViewModel(geocodeService: GeocodeService()))
    }
}
