//
//  SwiftUI_Tutorial_Project_App.swift
//  SwiftUI_Tutorial_Project_
//
//  Created by Rakshitha Rodrigo on 2023-09-26.
//

import SwiftUI

@main
struct SwiftUI_Tutorial_Project_App: App {
    private var idiom : UIUserInterfaceIdiom { UIDevice.current.userInterfaceIdiom }
    
    var body: some Scene {
        WindowGroup {
            if(idiom == .pad){
                ContentViewiPad()
            } else {
                ContentView()
            }
            
        }
    }
}
