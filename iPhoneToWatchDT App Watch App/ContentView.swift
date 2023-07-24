//
//  ContentView.swift
//  iPhoneToWatchDT App Watch App
//
//  Created by Joynal Abedin on 23/7/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var vm = WatchVM()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Text(vm.getDataFromPhone)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
