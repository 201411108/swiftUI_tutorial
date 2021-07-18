//
//  LandmarkList.swift
//  Landmarks
//
//  Created by 김한동 on 2021/07/18.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        /* static
        List {
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
        }
        */
        // dynamic
        // passing a key path or Identifiable data
        List(landmarks) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
