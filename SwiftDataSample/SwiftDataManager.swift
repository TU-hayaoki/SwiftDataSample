//
//  SwiftDataManager.swift
//  SwiftDataSample
//
//  Created by Hayato Aoki on 2024/09/27.
//

import Foundation
import SwiftData

final class SwiftDataManager {
    // 静的な値が生成される際に、失敗しない時点で、それ以降は保証。
    @MainActor
    static let sharedModelContainer: ModelContainer = {
        do {
            let schema = Schema([SwiftDataSampleModel.self])
            let container = try ModelContainer(for: schema)
            return container
        } catch {
            fatalError("Failed to create ModelContainer: \(error)")
        }
    }()
}
