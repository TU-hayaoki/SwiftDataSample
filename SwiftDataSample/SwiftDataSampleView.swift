//
//  ContentView.swift
//  SwiftDataSample
//
//  Created by Hayato Aoki on 2024/09/27.
//

import SwiftUI
import SwiftData

struct SwiftDataSampleView: View {
    
    @Query
    private var sampleDataLists: [SwiftDataSampleModel]
    
    @State
    private var vm: SwiftDataSampleViewModel
    // modelContext は Static Propertiesとしてどこからでもアクセス可
    
    init() {
        vm = SwiftDataSampleViewModel()
    }
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Picker("血液型", selection: $vm.selectedBloodType) {
                ForEach(BloodType.allCases, id: \.self) { bloodType in
                    Text(bloodType.rawValue)
                }
            }
            ForEach(sampleDataLists) { sampleData in
                Text(sampleData.name)
                Text(sampleData.bloodType.rawValue)
            }
            TextField("Test", value: $vm.age, formatter: NumberFormatter())
        }
        .padding()
    }
}

#Preview { @MainActor in
    SwiftDataSampleView()
        .modelContainer(previewContainer)
}
