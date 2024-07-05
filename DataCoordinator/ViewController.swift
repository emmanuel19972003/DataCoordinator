//
//  ViewController.swift
//  DataCoordinator
//
//  Created by Emmanuel Zambrano on 5/07/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var nameTextFiled: UITextField!
    
    
    @IBAction func goToNextView(_ sender: UIButton) {
        print("\(nameTextFiled.text)")
        print("Emma")
    }
    
    
    
}

