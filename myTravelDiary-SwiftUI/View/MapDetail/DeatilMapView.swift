//
//  DeatilMapView.swift
//  myTravelDiary-SwiftUI
//
//  Created by kazuya on 2020/09/17.
//  Copyright © 2020 kazuya. All rights reserved.
//

import SwiftUI
import MapKit

struct DetailMapView: UIViewRepresentable {
    
    var coordinate: CLLocationCoordinate2D
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 2.0,
                                    longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
}

struct DetailMapView_Previews: PreviewProvider {
    static var previews: some View {
        DetailMapView(coordinate: CLLocationCoordinate2D(latitude: 34.011286, longitude: -116.166868))
    }
}
