//
//  SwiftDataSampleViewModel.swift
//  SwiftDataSample
//
//  Created by Hayato Aoki on 2024/09/27.
//


/*
 Prerequisites:
 # SwiftDataを活用している
 # ViewModelの役割として、Viewから値を受け取ること、Viewの値に関して検証を行い通知を行うこと、View内の操作を起点に、Modelに関連するCRUD処理をModelへ通知すること
 
 TODO:
 1. ViewModelクラスの作成
 2. Viewのコンポーネントから値を受け取ることができるようにすること
 */


import SwiftUI
import SwiftData

@Observable
final class SwiftDataSampleViewModel {
    
    let repository: SwiftDataSampleRepository
    
    // 下記プロパティについては、Viewと同期
    var age: Int = 0
    var selectedBloodType: BloodType = .a
    
    // 値の検証等の管理
    var errorMessage: String?
    
    init() {
        self.repository = SwiftDataSampleRepository()
    }
    
    // 下記CRUD処理
    @MainActor
    func createData() {
        let swiftDataModel = SwiftDataSampleModel(name: "Test", bloodType: selectedBloodType)
        repository.createData(model: swiftDataModel)
    }
}
