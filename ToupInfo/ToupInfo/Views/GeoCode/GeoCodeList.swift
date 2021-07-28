//
//  GeoCodeList.swift
//  ToupInfo
//
//  Created by 김한동 on 2021/07/27.
//

import SwiftUI

struct GeoCodeList: View {
    var body: some View {
        List(geocodes) { geocode in
            GeoCodeRow(geoName: geocode.name)
        }
    }
}

struct GeoCodeList_Previews: PreviewProvider {
    static var previews: some View {
        GeoCodeList()
    }
}
