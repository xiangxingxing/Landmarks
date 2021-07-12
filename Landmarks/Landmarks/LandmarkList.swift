//
//  LandmarkList.swift
//  Landmarks
//
//  Created by xiangxx on 2021/7/3.
//

import SwiftUI

struct LandmarkList: View {
    //从LandmarksApp里生成并传递进来
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark]{
        modelData.landmarks.filter{
            landMark in (!showFavoritesOnly || landMark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView{
            List
            {
                Toggle(isOn: $showFavoritesOnly, label: {
                    Text("Favorites only")
                })
                
                //foreach用来结合动态、静态或多种不同动态视图集合
                ForEach(filteredLandmarks){ landmark in
                    NavigationLink(destination: LandmarkDetail(landmark: landmark)){
                        LandmarkRow(landmark: landmark)
                    }
                }
                .navigationTitle("Landmarks")
            }
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static let modelData = ModelData()
    static var previews: some View {
        //不同预览设备上的渲染
//        ForEach(["iPone SE(2nd generation)", "iPhone XS Max"], id: \.self){
//            deviceName in
//            LandmarkList()
//                .previewDevice(PreviewDevice(rawValue: deviceName))
//                .previewDisplayName(deviceName)
//        }
        LandmarkList().environmentObject(modelData)
    }
}
