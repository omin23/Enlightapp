//
//  EnlightApp.swift
//  Enlight
//
//  Created by macbook on 26.07.2023.
//

import SwiftUI

@main
struct EnlightApp: App {
    @StateObject var AI = secview()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(secview())
        }
    }
}
import SwiftUI

