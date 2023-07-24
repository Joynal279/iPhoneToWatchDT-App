//
//  ContentView.swift
//  iPhoneToWatchDT App
//
//  Created by Joynal Abedin on 23/7/23.
//

import SwiftUI

struct ContentView: View {
    
    var model = ContentVM()
    
    var body: some View {
        VStack{
            Text("Reachable")
                .onTapGesture {
                    model.send(message: ["iPhone":  "Hey Joynal Vai"])
                }
        }
    }
}

#Preview {
    ContentView()
}
