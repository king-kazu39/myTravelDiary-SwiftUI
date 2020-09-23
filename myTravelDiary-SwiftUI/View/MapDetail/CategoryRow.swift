//
//  CategoryRow.swift
//  myTravelDiary-SwiftUI
//
//  Created by kazuya on 2020/09/22.
//  Copyright © 2020 kazuya. All rights reserved.
//

import SwiftUI
import MapKit

struct CategoryRow: View {
    
    var categoryName: String
    var items: [Landmark]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(self.categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack (alignment: .top, spacing: 0) {
                    ForEach(self.items, id: \.id) { landmark in
                        NavigationLink(
                            destination: DetailView(landmark: landmark)) {
                            CategoryItem(landmark: landmark)
                        }
                    }
                }
            }
            .frame(height: 185)
        }
    }
}


struct CategoryItem: View {
    var landmark: Landmark
    var body: some View {
        VStack(alignment: .leading) {
            Image("turtlerock")
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(landmark.name)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
    
}


struct CategoryRow_Previews: PreviewProvider {
    
    
    static var previews: some View {
        CategoryRow(
            categoryName: "Coffee",
            items: [Landmark(placemark:MKPlacemark(coordinate:CLLocationCoordinate2D(latitude: 26.232808,longitude: 127.695937))),Landmark(placemark:MKPlacemark(coordinate:CLLocationCoordinate2D(latitude: 34.011286,longitude: -116.166868)))])
    }
}
