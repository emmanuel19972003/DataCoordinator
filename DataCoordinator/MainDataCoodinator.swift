//
//  MainDataCoodinator.swift
//  DataCoordinator
//
//  Created by Emmanuel Zambrano Quitian on 7/5/24.
//

import Foundation

class MainDataCoodinator {
    
    var name: String?
    
    static var share: MainDataCoodinator? = MainDataCoodinator()
    
    static func reset() {
        share = nil
    }
    
    private init() {}
    
    deinit {
        print("se borro el singelto")
    }
    
    func setName(name: String) {
        self.name = name
    }
}
