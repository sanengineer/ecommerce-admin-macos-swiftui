//
//  ecommerce_admin_macos_swiftuiApp.swift
//  ecommerce-admin-macos-swiftui
//
//  Created by San Engineer on 07/04/21.
//
import SwiftUI


struct windowSize {
    let minWidth: CGFloat = 400
    let minHeight: CGFloat = 500
}

@main
struct ecommerce_admin_macos_swiftuiApp: App {
    
    let defaults = UserDefaults.standard
    
    
    
    var auth = false
   
 
    var body: some Scene {
        WindowGroup{
            
            ZStack {
                
                if defaults.object(forKey: "username_field") == nil {
                    LoginStack()
                }
                if defaults.object(forKey: "username_field") != nil {
                  HomeStack()
                    //                            .onAppear {
                    //                                let _ = NSApplication.shared.windows.map { $0.tabbingMode = .disallowed }
                    //                            }
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
