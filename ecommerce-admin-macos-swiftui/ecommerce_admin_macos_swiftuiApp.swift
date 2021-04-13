//
//  ecommerce_admin_macos_swiftuiApp.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 07/04/21.
//
import SwiftUI

@main
struct ecommerce_admin_macos_swiftuiApp: App {

    let settings = PublishedConstants()

     var body: some Scene {
        WindowGroup{
            VStack {
                ContentView().environmentObject(settings)
                    .onAppear {
                        let _ = NSApplication.shared.windows.map { $0.tabbingMode = .disallowed }
                        let _ = NSApplication.shared.windows.map { $0.styleMask = [ .titled,.closable,.miniaturizable]}
                        }
                    }
                }
        .windowStyle(HiddenTitleBarWindowStyle())
        .commands {
            SidebarCommands()
            CommandGroup(replacing: .newItem) {}
            ToolbarCommands()
            }
    }
}

extension NSTextField{
    open override var focusRingType: NSFocusRingType {
        get {.none}
        set {}
    }
}


