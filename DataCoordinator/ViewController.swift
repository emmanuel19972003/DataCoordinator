//
//  ViewController.swift
//  DataCoordinator
//
//  Created by Emmanuel Zambrano on 5/07/24.
//

import UIKit

struct personalData {
    var name: String?
    var lastName: String?
    var age: String?
}
class ViewController: UIViewController {
    
    var personalData: personalData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        nameTextFiled.text = personalData?.name
    }
    
    @IBOutlet weak var nameTextFiled: UITextField!
    
    
    @IBAction func goToNextView(_ sender: UIButton) {
        guard let name = nameTextFiled.text else {
            return
        }
        personalData = DataCoordinator.personalData(name: name)
        let vc = secondView()
        vc.personalData = personalData
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

