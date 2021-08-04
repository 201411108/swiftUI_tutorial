//
//  Geocode.swift
//  ToupInfo
//
//  Created by 김한동 on 2021/08/04.
//

import Foundation

public struct Geocode {
    let code: Int
    let name: String
    let rnum: Int
    
    init(response: APIResponse) {
        code = response.response.body.items.item[1].code
        name = response.response.body.items.item[1].name
        rnum = response.response.body.items.item[1].rnum
    }
}
