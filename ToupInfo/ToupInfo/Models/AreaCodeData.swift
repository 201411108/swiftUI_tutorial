//
//  AreaCodeData.swift
//  ToupInfo
//
//  Created by 김한동 on 2021/08/03.
//

import Foundation

final class AreaCodeData: ObservableObject {
    @Published var areaCodes: AreaCode?
}

func loadData() {
    guard let url = URL(string: "http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaCode?serviceKey=TTDpPyMyhGKry04rdO32btLuHoKvtkW75Qvlf%2FkAIkncTZORanIa8PNun7aG6DP5dmJF7XDTkM2ayEi32UlwsQ%3D%3D&MobileOS=IOS&MobileApp=ToupInfo&_type=json") else {
        fatalError("Invalid URL")
    }

    let request = URLRequest(url: url)

    URLSession.shared.dataTask(with: request) { data, response, error in
        guard let data = data, error == nil else {
            return
        }
        
        let result = try? JSONDecoder().decode(AreaCode.self, from: data)
        if let result = result {
            AreaCodeData().areaCodes = result
            print(result)
//            print(result.response.body.items)
        }
    }.resume()
    return
}
