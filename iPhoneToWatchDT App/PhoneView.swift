//
//  ContentView.swift
//  iPhoneToWatchDT App
//
//  Created by Joynal Abedin on 23/7/23.
//

import SwiftUI

struct PhoneView: View {
    
    var vm = PhoneVM()
    
    var body: some View {
        VStack{
            Text("Sent Data To Watch")
                .onTapGesture {
                    vm.send(message: ["iPhone":  "Hey Joynal Vai"])
                }
        }
    }
}

#Preview {
    PhoneView()
}
