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
            RowView(name: item.name)
        }
        .onAppear(perform: viewModel.refresh)
    }
}

struct DistrictList_Previews: PreviewProvider {
    static var previews: some View {
        DistrictList(viewModel: DistrictViewModel(code: 1, geocodeService: GeocodeService()))
    }
}
