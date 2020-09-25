//
//  MemoryList.swift
//  myTravelDiary-SwiftUI
//
//  Created by kazuya on 2020/09/25.
//  Copyright © 2020 kazuya. All rights reserved.
//

import SwiftUI

struct MemoryList: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("This is MemoryList.")
            }
            .navigationBarTitle("MemoryList")
        }
    }
}

struct MemoryList_Previews: PreviewProvider {
    static var previews: some View {
        MemoryList()
    }
}
