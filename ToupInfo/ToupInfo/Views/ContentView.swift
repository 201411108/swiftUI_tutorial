//
//  ContentView.swift
//  ToupInfo
//
//  Created by 김한동 on 2021/07/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            GeoCodeRow(geoName: "노원구")
            GeoCodeRow(geoName: "강남구")
            GeoCodeRow(geoName: "강북구")
            GeoCodeRow(geoName: "도봉구")
            GeoCodeRow(geoName: "성북구")
            GeoCodeRow(geoName: "동대문구")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
