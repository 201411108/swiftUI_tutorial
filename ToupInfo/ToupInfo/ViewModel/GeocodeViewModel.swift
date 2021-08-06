//
//  GeocodeViewModel.swift
//  ToupInfo
//
//  model로부터 데이터를 받아 view에서 사용할 수 있도록 해주는 구문
//  Created by 김한동 on 2021/08/04.
//

import Foundation

public class GeocodeViewModel: ObservableObject {
    @Published var itemsList: [Item]?
    
    public let geocodeService: GeocodeService
    
    public init(geocodeService: GeocodeService) {
        self.geocodeService = geocodeService
    }
    
    public func refresh() { // view에서 변경이 일어난 데이터를 반영할 수 있도록 하는 함수(binding)
        geocodeService.loadGeocodeData { geocode in
            DispatchQueue.main.async {
                self.itemsList = geocode.items
            }
        }
    }
}
