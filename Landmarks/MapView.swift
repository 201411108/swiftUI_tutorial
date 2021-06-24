//
//  MapView.swift
//  Landmarks
//
//  Created by 김한동 on 2021/06/25.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    var body: some View {
        // $의 역할 : 유저가 지도에 상호작용을 할 때, 해당 상호작용이 바로 반영될 수 있도록 하기 위함
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
