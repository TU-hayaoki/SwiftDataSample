//
//  SwiftDataSampleModel.swift
//  SwiftDataSample
//
//  Created by Hayato Aoki on 2024/09/27.


import Foundation
import SwiftData

@Model
class SwiftDataSampleModel: Identifiable {
    @Attribute(.unique) private(set) var id: UUID
    var name: String
    var bloodType: BloodType
    
    init(name: String, bloodType: BloodType) {
        self.id = UUID()
        self.name = name
        self.bloodType = bloodType
    }
}
