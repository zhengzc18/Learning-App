//
//  LearningAppApp.swift
//  LearningApp
//
//  Created by JAESOON on 2021/08/17.
//

import SwiftUI

@main
struct LearningApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ContentModel())
        }
    }
}
