//
//  LandmarkAnnotation.swift
//  myTravelDiary-SwiftUI
//
//  Created by kazuya on 2020/09/08.
//  Copyright © 2020 kazuya. All rights reserved.
//

import MapKit
import UIKit

final class LandmarkAnnotation: NSObject, MKAnnotation {
    let title: String?
    var coordinate: CLLocationCoordinate2D
    
    init(landmark: Landmark){
        self.title = landmark.title
        self.coordinate = landmark.coordinate
    }
}
