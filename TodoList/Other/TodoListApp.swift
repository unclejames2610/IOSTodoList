//
//  TodoListApp.swift
//  TodoList
//
//  Created by Ebuka on 08/11/25.
//

import FirebaseCore
import SwiftUI

@main
struct TodoListApp: App {
    
    init (){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
