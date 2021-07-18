//
//  LandmarkList.swift
//  Landmarks
//
//  Created by 김한동 on 2021/07/18.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    // 이 구문의 추가를 통해 UI에 > 기호가 추가됨
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
