//
//  ecommerce_admin_macos_swiftuiApp.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 07/04/21.
//
import SwiftUI

@main
struct ecommerce_admin_macos_swiftuiApp: App {
    
    let window = NSWindow(
        contentRect: NSRect(x: 0, y: 0, width: 480, height: 300),
        styleMask: [
            .titled,
            .closable,
            .miniaturizable,
//            .resizable
        ],
        backing: .buffered,
        defer: false)
    
    
    let settings = PublishedConstants()

   
     var body: some Scene {
        WindowGroup{
        
            VStack {
                ContentView().environmentObject(settings)
                    .onAppear {
                        let _ = NSApplication.shared.windows.map { $0.tabbingMode = .disallowed }
                        
                        let _ = NSApplication.shared.windows.map { $0.styleMask = [ .titled,
                                                                                    .closable,
                                                                                    .miniaturizable]}
                    }
                    }
                }
        
        .windowStyle(HiddenTitleBarWindowStyle())
        .commands{
            SidebarCommands()
        }
        .commands {
                CommandGroup(replacing: .newItem) {
              }
            }
        .commands{
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


