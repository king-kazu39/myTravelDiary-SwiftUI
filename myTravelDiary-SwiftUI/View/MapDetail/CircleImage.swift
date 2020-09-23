//
//  CircleImage.swift
//  myTravelDiary-SwiftUI
//
//  Created by kazuya on 2020/09/17.
//  Copyright © 2020 kazuya. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    
    var image: Image
    
    var body: some View {
        image
            .frame(width:250, height: 250)
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.gray, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
