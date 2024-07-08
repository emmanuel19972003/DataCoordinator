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
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setInfoLabels()
        nameTextFiled.text = MainDataCoodinator.share.name
    }
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var lastNameLabel: UILabel!
    
    @IBOutlet weak var ageName: UILabel!
    
    @IBOutlet weak var nameTextFiled: UITextField!
    
    @IBAction func goToNextView(_ sender: UIButton) {
        guard let name = nameTextFiled.text else {
            return
        }
        MainDataCoodinator.share.name = name
        let vc = secondView()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func setInfoLabels() {
        nameLabel.text = "the name value is: \(MainDataCoodinator.share.name ?? "")"
        lastNameLabel.text = "the las tName value is: \(MainDataCoodinator.share.lastName ?? "")"
        ageName.text = "the age value is: \(MainDataCoodinator.share.age ?? "")"
    }
}

