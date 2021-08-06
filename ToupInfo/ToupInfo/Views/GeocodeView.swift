//
//  GeocodeView.swift
//  ToupInfo
//
//  Created by 김한동 on 2021/08/04.
//

import SwiftUI

struct GeocodeView: View {
    @ObservedObject var viewModel: GeocodeViewModel
    
    var body: some View {
        List(viewModel.itemsList ?? [Item(code: 1, name: "서울", rnum: 1)], id: \.code) { item in
            Text(item.name)
        }.onAppear(perform: viewModel.refresh)
    }
}

struct GeocodeView_Previews: PreviewProvider {
    static var previews: some View {
        GeocodeView(viewModel: GeocodeViewModel(geocodeService: GeocodeService()))
    }
}
