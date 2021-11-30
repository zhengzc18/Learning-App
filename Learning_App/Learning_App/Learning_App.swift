//
//  Learning_AppApp.swift
//  Learning_App
//
//  Created by JAESOON on 2021/11/30.
//

import SwiftUI

@main
struct Learning_App: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ContentModel())
        }
    }
}
