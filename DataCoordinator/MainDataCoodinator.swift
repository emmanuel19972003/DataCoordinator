//
//  MainDataCoodinator.swift
//  DataCoordinator
//
//  Created by Emmanuel Zambrano Quitian on 7/5/24.
//

import Foundation

class MainDataCoodinator {
    
    var name: String?
    
    var lastName: String?
    
    var age: String?
    
    static private var _shared: MainDataCoodinator?
    
    static var share: MainDataCoodinator {
        if _shared == nil {
            _shared = MainDataCoodinator()
        }
        return _shared!
    }
    
    private init() {}
    
    deinit {
        print("deinit")
    }
    
    static func reset() {
        _shared = nil
    }
}
