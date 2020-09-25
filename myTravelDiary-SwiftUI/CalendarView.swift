//
//  CalendarView.swift
//  myTravelDiary-SwiftUI
//
//  Created by kazuya on 2020/09/25.
//  Copyright © 2020 kazuya. All rights reserved.
//

import SwiftUI

struct CalendarView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("This is Calendar.")
            }
            .navigationBarTitle("Calendar")
        }
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
