//
//  Geocode.swift
//  ToupInfo
//
//  지역정보를 위한 모델
//  Created by 김한동 on 2021/08/04.
//

import Foundation

public struct Geocode {
    var items: [Item]
    
    init(response: APIResponse) {
        items = response.response.body.items.item
    }
}
