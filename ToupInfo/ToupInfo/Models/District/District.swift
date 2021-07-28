//
//  District.swift
//  ToupInfo
//
//  Created by 김한동 on 2021/07/29.
//

import Foundation

struct District: Hashable, Codable, Identifiable {
    var id: Int
    var numOfRows: Int // 한 페이지 결과 수
    var pageNo: Int // 페이지 번호
    var totalCount: Int // 전체 결과 수
    var code: Int // 지역코드 또는 시군구코드
    var name: String // 지역명 또는 시군구명
    var rnum: Int // 일련번호
}
