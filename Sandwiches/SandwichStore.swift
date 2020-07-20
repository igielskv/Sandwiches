//
//  SandwichStore.swift
//  Sandwiches
//
//  Created by Manoli on 20/07/2020.
//  Copyright © 2020 macForce. All rights reserved.
//

import Foundation

class SandwichStore: ObservableObject {
    @Published var sandwiches: [Sandwich]
    
    init(sandwiches: [Sandwich] = []) {
        self.sandwiches = sandwiches
    }
}

let testStore = SandwichStore(sandwiches: testData)
