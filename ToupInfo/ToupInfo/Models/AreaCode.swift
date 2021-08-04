//
//  AreaCode.swift
//  ToupInfo
//
//  Created by 김한동 on 2021/08/03.
//

import Foundation
import Combine

struct AreaCode: Codable {
    var response: Response
}

struct Response: Codable {
    var header: Header
    var body: Body
}

struct Header: Codable {
    var resultCode: String
    var resultMsg: String
}

struct Body: Codable {
    var items: Items
    
    var numOfRows: Int
    var pageNo: Int
    var totalCount: Int
}

struct Items: Codable {
    var item: [Item]
}

struct Item: Codable, Identifiable {
    var id = UUID()
    var code: Int
    var name: String
    var rnum: Int
}
