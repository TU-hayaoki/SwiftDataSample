//
//  BloodType.swift
//  SwiftDataSample
//
//  Created by Hayato Aoki on 2024/09/27.
//

import Foundation

enum BloodType: String, Codable, CaseIterable {
    case a = "A型"
    case b = "B型"
    case ab = "AB型"
    case o = "O型"
}
