//
//  ContentView.swift
//  Landmarks
//
//  Created by xiangxx on 2021/6/15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    //预览
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
