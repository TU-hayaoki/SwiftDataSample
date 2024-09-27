//
//  ContentView.swift
//  SwiftDataSample
//
//  Created by Hayato Aoki on 2024/09/27.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Query private var sampleDataLists: [SwiftDataSampleModel]
    @State private var text: Int = 0
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            ForEach(sampleDataLists) { sampleData in
                Text(sampleData.name)
                Text(sampleData.bloodType.rawValue)
            }
            TextField("Test", value: $text, formatter: NumberFormatter())
        }
        .padding()
    }
}

#Preview { @MainActor in
    ContentView()
        .modelContainer(previewContainer)
}
