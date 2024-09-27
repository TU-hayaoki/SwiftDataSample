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
    
    let container: ModelContainer
    
    init() {
        do{
            let schema = Schema([SwiftDataSampleModel.self])
            container = try ModelContainer(for: schema)
        } catch {
            fatalError("Failed to create ModelContainer: \(error)")
        }
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(container)
    }
}
