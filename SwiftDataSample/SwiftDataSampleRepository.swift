//
//  SwiftDataSampleRepository.swift
//  SwiftDataSample
//
//  Created by Hayato Aoki on 2024/09/27.
//

import Foundation
import SwiftData

final class SwiftDataSampleRepository {
    
    @MainActor
    private let modelContext: ModelContext = SwiftDataManager.sharedModelContainer.mainContext
    
    @MainActor
    func createData(model: any PersistentModel) {
        modelContext.insert(model)
        do {
            _ = try modelContext.save()
        } catch {
            print(error)
        }
    }
    
    @MainActor
    func update() {
        do {
            _ = try modelContext.save()
        } catch {
            print(error)
        }
    }

//    @MainActor
//    func delete(model: any PersistentModel, indexSet: IndexSet) {
//        for index in indexSet {
//            modelContext.delete(model[index])
//        }
//    }
}
