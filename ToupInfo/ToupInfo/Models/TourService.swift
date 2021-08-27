//
//  TourService.swift
//  ToupInfo
//
//  지역기반 관광정보를 조회하는 서비스 코드
//  지역기반 코드가 지역 정보 코드(code)와 시/군/구 코드를 모두 필요로 한다.
//  Created by 김한동 on 2021/08/27.
//

import Foundation

public final class TourService: NSObject {
    private let API_KEY = "API_KEY" // Commit 시 제외하고 Commit 할 것
    private var completionHandler: ((Geocode) -> Void)?
    
    public func loadTourData(_ code: Int, _ completionHandler: @escaping((Geocode) -> Void)) {
        self.completionHandler = completionHandler
        // api call function
        makeTourRequest(code)
    }
    
    public func makeTourRequest(_ code: Int) {
        // NOTICE :: code - sigunguCode 같이 사용
        // 세종시의 경우 code만 사용
        guard let url = URL(string: "http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?serviceKey=\(API_KEY)&MobileApp=ToupInfo&MobileOS=IOS&arrange=A&areaCode=\(code)&sigunguCode=1&listYN=Y") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                return
            }
            
            if let response = try? JSONDecoder().decode(APIResponse.self, from: data) {
                self.completionHandler?(Geocode(response: response))
            }
        }.resume()
    }
}

// MARK: - TourResponse
struct TourResponse: Codable {
    let response: TourMain
}

// MARK: - TourMain
struct TourMain: Codable {
    let header: TourHeader
    let body: TourBody
}

// MARK: - TourBody
struct TourBody: Codable {
    let items: TourItems
    let numOfRows, pageNo, totalCount: Int
}

// MARK: - TourItems
struct TourItems: Codable {
    let item: TourItem
}

// MARK: - TourItem
struct TourItem: Codable {
    let addr1: String
    let areacode: Int
    let cat1, cat2, cat3: String
    let contentid, contenttypeid, createdtime: Int
    let firstimage, firstimage2: String
    let mapx, mapy: Double
    let mlevel, modifiedtime, readcount, sigungucode: Int
    let tel, title, zipcode: String
}

// MARK: - TourHeader
struct TourHeader: Codable {
    let resultCode, resultMsg: String
}
