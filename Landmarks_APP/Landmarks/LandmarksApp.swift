//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by κΉνλ on 2021/06/24.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
