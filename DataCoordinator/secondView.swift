//
//  secondView.swift
//  DataCoordinator
//
//  Created by Emmanuel Zambrano Quitian on 7/5/24.
//

import Foundation
import UIKit

class secondView: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        print(MainDataCoodinator.share?.name)
        addButton1()
        addButton2()
        addButton3()
    }
    
    func addButton1() {
        let button = UIButton(frame: CGRect(x: 50, y: 100, width: 300, height: 50))
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 20
        button.setTitle("cambiar valor", for: .normal)
        button.addTarget(self, action: #selector(buttonAction1), for: .touchUpInside)
        
        self.view.addSubview(button)
    }
    
    func addButton2() {
        let button = UIButton(frame: CGRect(x: 50, y: 300, width: 300, height: 50))
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 20
        button.setTitle("check value", for: .normal)
        button.addTarget(self, action: #selector(buttonAction2), for: .touchUpInside)
        
        self.view.addSubview(button)
    }
    
    func addButton3() {
        let button = UIButton(frame: CGRect(x: 50, y: 500, width: 300, height: 50))
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 20
        button.setTitle("deinit", for: .normal)
        button.addTarget(self, action: #selector(buttonAction3), for: .touchUpInside)
        
        self.view.addSubview(button)
    }
    
    @objc
    func buttonAction1(sender: UIButton!) {
        MainDataCoodinator.share?.name = "nuevo valor bine loco"
    }
    
    @objc
    func buttonAction2(sender: UIButton!) {
        print("\(MainDataCoodinator.share?.name)")
    }
    
    @objc
    func buttonAction3(sender: UIButton!) {
        MainDataCoodinator.reset()
    }
}
