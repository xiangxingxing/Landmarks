//
//  MapView.swift
//  Landmarks
//
//  Created by xiangxx on 2021/6/20.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coodinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()
    
    //MKCoordinateSpan：增量
//    @State private var region = MKCoordinateRegion(
//        center: CLLocationCoordinate2D(latitude: 39.56, longitude: 116.20), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
//    )
    
    var body: some View {
        Map(coordinateRegion:$region)
            .onAppear{
                setRegion(coodinate)
            }
    }
    
    private func setRegion(_ coodinate: CLLocationCoordinate2D){
        region = MKCoordinateRegion(
            center: coodinate, span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coodinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
