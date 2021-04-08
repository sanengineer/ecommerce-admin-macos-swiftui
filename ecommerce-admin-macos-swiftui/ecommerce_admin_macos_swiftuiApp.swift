//
//  ecommerce_admin_macos_swiftuiApp.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 07/04/21.
//
import Foundation
import SwiftUI

@main
struct ecommerce_admin_macos_swiftuiApp: App {
    var body: some Scene {
        WindowGroup {
          HomeStack()
        }.windowStyle(HiddenTitleBarWindowStyle())
    }
}

extension NSTextField{
    open override var focusRingType: NSFocusRingType {
        get {.none}
        set {}
    }
}
