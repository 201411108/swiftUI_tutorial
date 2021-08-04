//
//  ToupInfoApp.swift
//  ToupInfo
//
//  Created by 김한동 on 2021/07/26.
//

import SwiftUI

@main
struct ToupInfoApp: App {
    var body: some Scene {
        WindowGroup {
            let geocodeService = GeocodeService()
            let _viewModel = GeocodeViewModel(geocodeService: geocodeService)
//            ContentView()
            GeocodeView(viewModel: _viewModel)
        }
    }
}
