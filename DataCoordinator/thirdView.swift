//
//  File.swift
//  DataCoordinator
//
//  Created by Emmanuel Zambrano on 8/07/24.
//

//
//  thirdView.swift
//  DataCoordinator
//
//  Created by Emmanuel Zambrano Quitian on 7/5/24.
//

import Foundation
import UIKit

class thirdView: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        textField.text = MainDataCoodinator.share.age
    }
    
    var titleLabel: UILabel = {
        let view: UILabel = UILabel(frame: CGRect(x: 50, y: 150, width: 300, height: 50))
        view.text = "enter your Age"
        view.textColor = .black
        view.translatesAutoresizingMaskIntoConstraints = true
        return view
        
    }()
    
    var textField: UITextField = {
        let view = UITextField(frame: CGRect(x: 50, y: 200, width: 300, height: 50))
        view.placeholder = "Age"
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
        guard let age = textField.text else {
            return
        }
        MainDataCoodinator.share.age = age
        let vc = resultView()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}



#Preview() {
    thirdView()
}

