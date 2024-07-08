//
//  resultView.swift
//  DataCoordinator
//
//  Created by Emmanuel Zambrano on 8/07/24.
//

import Foundation

import Foundation
import UIKit

class resultView: UIViewController {
    
    var nameLabel: UILabel = {
        let view: UILabel = UILabel(frame: CGRect(x: 50, y: 100, width: 300, height: 50))
        view.text = ""
        view.textColor = .black
        view.translatesAutoresizingMaskIntoConstraints = true
        return view
        
    }()
    
    var lastNameLabel: UILabel = {
        let view: UILabel = UILabel(frame: CGRect(x: 50, y: 150, width: 300, height: 50))
        view.text = ""
        view.textColor = .black
        view.translatesAutoresizingMaskIntoConstraints = true
        return view
        
    }()
    
    var ageLabel: UILabel = {
        let view: UILabel = UILabel(frame: CGRect(x: 50, y: 200, width: 300, height: 50))
        view.text = ""
        view.textColor = .black
        view.translatesAutoresizingMaskIntoConstraints = true
        return view
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(nameLabel)
        view.addSubview(lastNameLabel)
        view.addSubview(ageLabel)
        
        addButton1()
        setLabels()
    }
    func addButton1() {
        let button = UIButton(frame: CGRect(x: 50, y: 250, width: 300, height: 50))
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 20
        button.setTitle("Go To next View", for: .normal)
        button.addTarget(self, action: #selector(buttonAction1), for: .touchUpInside)
        
        self.view.addSubview(button)
    }
    
    @objc
    func buttonAction1(sender: UIButton!) {
        MainDataCoodinator.reset()
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    func setLabels() {
        nameLabel.text = MainDataCoodinator.share.name
        lastNameLabel.text = MainDataCoodinator.share.lastName
        ageLabel.text = MainDataCoodinator.share.age
    }
}



#Preview() {
    resultView()
}


