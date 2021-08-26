//
//  GeocodeViewModel.swift
//  ToupInfo
//
//  model로부터 데이터를 받아 view에서 사용할 수 있도록 해주고
//  view에서 일어난 상호작용을 model에 반영한다.
//  Created by 김한동 on 2021/08/04.
//

import Foundation

public class GeocodeViewModel: ObservableObject {
    @Published var itemsList: [Item]?
    
    public let geocodeService: GeocodeService
    
    public init(geocodeService: GeocodeService) {
        self.geocodeService = geocodeService
    }
    
    public func refresh() {
        geocodeService.loadGeocodeData { geocode in
            DispatchQueue.main.async {
                self.itemsList = geocode.items
            }
        }
    }
}
