//
//  previewContainer.swift
//  SwiftDataSample
//
//  Created by Hayato Aoki on 2024/09/27.
//

import Foundation
import SwiftData

@MainActor
var previewContainer: ModelContainer = {
    
    let container = try! ModelContainer(for: SwiftDataSampleModel.self, configurations: ModelConfiguration(isStoredInMemoryOnly: true))
    
    for sampleData in SampleData.sampleDataLists {
        container.mainContext.insert(sampleData)
    }
    
    return container
}()

struct SampleData {
    static var sampleDataLists: [SwiftDataSampleModel] {
        return [SwiftDataSampleModel(name: "Test", bloodType: .a)]
    }
}
