//
//  GeoCodeRow.swift
//  ToupInfo
//
//  Created by 김한동 on 2021/07/27.
//

import SwiftUI

struct GeoCodeRow: View {
    var geoName: String
    
    var body: some View {
        HStack {
            Spacer()
            Text(geoName)
                .multilineTextAlignment(.center)
            Spacer()
        }
    }
}

struct GeoCodeRow_Previews: PreviewProvider {
    static var previews: some View {
        GeoCodeRow(geoName: geocodes[0].name)
    }
}
