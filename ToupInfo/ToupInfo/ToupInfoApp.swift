//
//  ToupInfoApp.swift
//  ToupInfo
//
//  Created by κΉνλ on 2021/07/26.
//

import SwiftUI

@main
struct ToupInfoApp: App {
    var body: some Scene {
        WindowGroup {
            let geocodeService = GeocodeService()
            let _viewModel = GeocodeViewModel(geocodeService: geocodeService)
            GeoCodeList(viewModel: _viewModel)
        }
    }
}
