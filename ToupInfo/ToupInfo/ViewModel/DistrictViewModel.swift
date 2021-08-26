//
//  DistrictViewModel.swift
//  ToupInfo
//
//  시/군/구 정보를 위한 뷰모델
//  Created by 김한동 on 2021/08/18.
//

import Foundation

public class DistrictViewModel: ObservableObject {
    private var code: Int
    @Published var itemsList: [Item]?
    
    public let geocodeService: GeocodeService
    
    public init(code: Int, geocodeService: GeocodeService) {
        self.code = code
        self.geocodeService = geocodeService
    }
    
    public func refresh() {
        geocodeService.loadDistrictData(self.code) { districtcode in
            DispatchQueue.main.async {
                self.itemsList = districtcode.items
            }
        }
    }
}
