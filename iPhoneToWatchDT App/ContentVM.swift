//
//  ContentVM.swift
//  iPhoneToWatchDT App
//
//  Created by Joynal Abedin on 23/7/23.
//

import Foundation
import UIKit
import SwiftUI
import WatchConnectivity

class ContentVM: NSObject, ObservableObject {
    
    private let session: WCSession
    
    init(session: WCSession = .default){
           self.session = session
           super.init()
           session.delegate = self
           session.activate()
        
        #if os(iOS)
        print("Connection provider initialized on phone")
        #endif

        #if os(watchOS)
        print("Connection provider initialized on watch")
        #endif
        
        self.connect()
        
   }
    
    func connect(){
        guard WCSession.isSupported() else {
            print("WCSession not supported")
            return
        }
        
        session.activate()
    }
    
}

extension ContentVM: WCSessionDelegate {
    
    func send(message: [String: Any]) -> Void {
        session.sendMessage(message, replyHandler: nil) { error in
            print(error.localizedDescription)
        }
    }
    
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        if let error {
            print("session activation failed with error: \(error.localizedDescription)")
        }
    }
    
    #if os(iOS)
    func sessionDidBecomeInactive(_ session: WCSession) {
        session.activate()
    }
    
    func sessionDidDeactivate(_ session: WCSession) {
        session.activate()
    }
    #endif
}
