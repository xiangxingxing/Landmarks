//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by xiangxx on 2021/6/15.
//

import SwiftUI

@main
struct LandmarksApp: App {
    //@StateObject 仅初始化一次
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
