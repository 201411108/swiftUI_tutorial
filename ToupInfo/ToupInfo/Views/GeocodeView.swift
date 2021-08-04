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
        VStack {
            Text(String(viewModel.codeValue))
            Text(viewModel.nameValue)
                .font(.largeTitle)
                .padding()
            Text(String(viewModel.rnumValue))
                .font(.system(size: 70))
                .bold()
        }.onAppear(perform: viewModel.refresh)
    }
}

struct GeocodeView_Previews: PreviewProvider {
    static var previews: some View {
        GeocodeView(viewModel: GeocodeViewModel(geocodeService: GeocodeService()))
    }
}
