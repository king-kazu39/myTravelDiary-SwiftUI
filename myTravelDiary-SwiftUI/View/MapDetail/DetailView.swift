//
//  DetailView.swift
//  myTravelDiary-SwiftUI
//
//  Created by kazuya on 2020/09/16.
//  Copyright © 2020 kazuya. All rights reserved.
//

import SwiftUI
import Contacts
import MapKit

struct DetailView: View {
    
    var landmark: Landmark
    
    var body: some View {
        VStack {
            DetailMapView(coordinate: landmark.coordinate)
                .frame(height: 430)
            
            CircleImage(image: Image("turtlerock"))
                .offset(y: -100)
                .padding(.bottom, -100)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                HStack(alignment:.top) {
                    Text(landmark.title)
                        .font(.subheadline)
                    Spacer()
                    Text("Japan")
                        .font(.subheadline)
                }
                
            }.padding()
            
            Spacer()
            
            Button(action: {
                // create action
            }) {
                Text("Register")
                    .font(.headline)
                    .foregroundColor(Color.white)
            }
            .frame(width: UIScreen.main.bounds.width - 100)
            .padding()
            .background(Color.blue)
            .cornerRadius(10)
            
            Spacer()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    
    static var previews: some View {
        DetailView(landmark:
            Landmark(placemark:
                MKPlacemark(coordinate:
                    CLLocationCoordinate2D(latitude: 34.011286,
                                           longitude: -116.166868)
                )
            )
        )
    }
}
