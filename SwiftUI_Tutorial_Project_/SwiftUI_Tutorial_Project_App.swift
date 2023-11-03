//
//  SwiftUI_Tutorial_Project_App.swift
//  SwiftUI_Tutorial_Project_
//
//  Created by Rakshitha Rodrigo on 2023-09-26.
//

import SwiftUI
//import UIKit
import Foundation


@main
struct SwiftUI_Tutorial_Project_App: App {
//    private var idiom: UIUserInterfaceIdiom {
//        UIDevice.current.userInterfaceIdiom
//    }
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            
            ContentView()
                .environment(modelData)
            
//            if(UIDevice.current.localizedModel == "UIINterface"){
//                ContentViewiPad()
//            } else {
//                ContentView()
//                    .environment(modelData)
//            }
            
//            switch traitCollection.userInterfaceIdiom {
//                    
//                case .unspecified:
//                    // do something
//                case .phone:
//                    // do something
//                case .pad:
//                    // do something
//                case .tv:
//                    // do something
//                case .carPlay:
//                    // do something
//                case .mac:
//                    // do something
//                @unknown default:
//                    // do something
//            }
        }
        #if !os(watchOS)
        .commands {
            LandmarkCommands()
        }
        #endif
        
        
        #if os(watchOS)
        WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear")
        #endif
        
        #if os(macOS)
        Settings {
            LandmarkSettings()
        }
        #endif
    }
}
