//
//  TabView.swift
//  myTravelDiary-SwiftUI
//
//  Created by kazuya on 2020/09/25.
//  Copyright © 2020 kazuya. All rights reserved.
//

import SwiftUI

struct TabTopView: View {
    var body: some View {
        TabView {
            SearchMapView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("地図検索")
                }

            MemoryList()
                .tabItem {
                    Image(systemName: "person.2.square.stack")
                    Text("思い出リスト")
                }
            
            CalendarView()
                .tabItem{
                    Image(systemName: "calendar")
                    Text("旅の日")
                }
        }
    }
}

struct TabTopView_Previews: PreviewProvider {
    static var previews: some View {
        TabTopView()
    }
}
