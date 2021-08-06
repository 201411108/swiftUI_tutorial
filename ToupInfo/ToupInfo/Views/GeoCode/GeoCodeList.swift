//
//  GeoCodeList.swift
//  ToupInfo
//
//  Created by 김한동 on 2021/07/27.
//

import SwiftUI

struct GeoCodeList: View {
    @ObservedObject var viewModel: GeocodeViewModel
    
    var body: some View {
        NavigationView {
            List(viewModel.itemsList ?? [Item(code: 1, name: "서울", rnum: 1)], id: \.code) { item in
                NavigationLink(destination: DistrictList()) {
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
