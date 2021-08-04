//
//  GeocodeService.swift
//  ToupInfo
//
//  Created by 김한동 on 2021/08/04.
//

import Foundation
import Combine

public final class GeocodeService: NSObject {
    private let API_KEY = "TTDpPyMyhGKry04rdO32btLuHoKvtkW75Qvlf%2FkAIkncTZORanIa8PNun7aG6DP5dmJF7XDTkM2ayEi32UlwsQ%3D%3D"
    private var completionHandler: ((Geocode) -> Void)? // Model의 데이터를 View와 바인딩할 함수
    
    public func loadGeocodeData(_ completionHandler: @escaping((Geocode) -> Void)) {
        self.completionHandler = completionHandler
    }
    
    public func makeDataRequest() { // request를 보낼 함수
        guard let url = URL(string: "http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaCode?serviceKey=TTDpPyMyhGKry04rdO32btLuHoKvtkW75Qvlf%2FkAIkncTZORanIa8PNun7aG6DP5dmJF7XDTkM2ayEi32UlwsQ%3D%3D&MobileOS=IOS&MobileApp=ToupInfo&_type=json") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                return
            }
            
            if let response = try? JSONDecoder().decode(APIResponse.self, from: data) {
                self.completionHandler?(Geocode(response: response))
                print(response)
            }
        }.resume()
    }
}

struct APIResponse: Codable {
    var response: APIMain
}

struct APIMain: Codable {
    var header: APIHeader
    var body: APIBody
}

struct APIHeader: Codable {
    var resultCode: String
    var resultMsg: String
}

struct APIBody: Codable {
    var items: Items
    
    var numOfRows: Int
    var pageNo: Int
    var totalCount: Int
}

struct Items: Codable {
    var item: [Item]
}

struct Item: Codable {
//    var id = UUID()
    var code: Int
    var name: String
    var rnum: Int
}
