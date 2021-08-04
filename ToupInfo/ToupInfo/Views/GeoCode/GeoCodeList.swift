//
//  GeoCodeList.swift
//  ToupInfo
//
//  Created by 김한동 on 2021/07/27.
//

import SwiftUI

struct GeoCodeList: View {
    var body: some View {
        NavigationView {
            List(geocodes) { geocode in
                NavigationLink(
                    destination: DistrictList()) {
                    RowView(name: geocode.name)
                }
            }
            .navigationTitle("지역 선택")
        }
    }
}

struct GeoCodeList_Previews: PreviewProvider {
    static var previews: some View {
        GeoCodeList()
    }
}
