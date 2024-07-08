//
//  secondView.swift
//  DataCoordinator
//
//  Created by Emmanuel Zambrano Quitian on 7/5/24.
//

import Foundation
import UIKit

class secondView: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        textField.text = MainDataCoodinator.share.lastName
    }
    
    var titleLabel: UILabel = {
        let view: UILabel = UILabel(frame: CGRect(x: 50, y: 150, width: 300, height: 50))
        view.text = "enter your last Name"
        view.textColor = .black
        view.translatesAutoresizingMaskIntoConstraints = true
        return view
        
    }()
    
    var textField: UITextField = {
        let view = UITextField(frame: CGRect(x: 50, y: 200, width: 300, height: 50))
        view.placeholder = "last Name"
        view.borderStyle = .roundedRect
        view.translatesAutoresizingMaskIntoConstraints = true
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(titleLabel)
        view.addSubview(textField)
        
        addButton1()
    }
    func addButton1() {
        let button = UIButton(frame: CGRect(x: 50, y: 270, width: 300, height: 50))
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 20
        button.setTitle("Go To next View", for: .normal)
        button.addTarget(self, action: #selector(buttonAction1), for: .touchUpInside)
        
        self.view.addSubview(button)
    }
    
    @objc
    func buttonAction1(sender: UIButton!) {
        guard let lastName = textField.text else {
            return
        }
        MainDataCoodinator.share.lastName = lastName
        let vc = thirdView()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}


#Preview() {
    secondView()
}
