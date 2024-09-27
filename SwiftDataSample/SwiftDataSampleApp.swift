//
//  SwiftDataSampleApp.swift
//  SwiftDataSample
//
//  Created by Hayato Aoki on 2024/09/27.
//

import SwiftUI
import SwiftData

@main
struct SwiftDataSampleApp: App {
        
    init() {
        print("Initializing SwiftDataSampleApp...")
    }
    
    var body: some Scene {
        WindowGroup {
            SwiftDataSampleView()
        }
        .modelContainer(SwiftDataManager.sharedModelContainer)
    }
}
