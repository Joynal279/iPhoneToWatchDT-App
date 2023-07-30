//
//  ContentView.swift
//  iPhoneToWatchDT App Watch App
//
//  Created by Joynal Abedin on 23/7/23.
//

import SwiftUI

struct WatchView: View {
    
    @StateObject private var vm = WatchVM()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Loading Data...")
            Text(vm.getDataFromPhone)
        }
        .padding()
    }
}

#Preview {
    WatchView()
}
