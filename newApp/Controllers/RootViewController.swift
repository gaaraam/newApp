//
//  RootViewController.swift
//  newApp
//
//  Created by 이가람 on 2021/07/08.
//

import UIKit

class RootViewController: UIViewController{
    
    // MARK: Properties
    lazy var helloWorldLabel: UILabel = {
        let label = UILabel()
        label.text = "hello world"
        return label
    }()
    
    lazy var helloWorldButton: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("hello world", for: UIControl.State.normal)
        return button
    }()
    
    // MARK: Life Cycle Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ConfigureViewComponent()
    }
    
    // MARK: Configures
    func ConfigureViewComponent(){
        self.view.backgroundColor = .systemBackground
        
        view.addSubview(helloWorldLabel)
        helloWorldLabel.translatesAutoresizingMaskIntoConstraints = false
        helloWorldLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        helloWorldLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(helloWorldButton)
        helloWorldButton.translatesAutoresizingMaskIntoConstraints = false
        helloWorldButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        helloWorldButton.topAnchor.constraint(equalTo: helloWorldLabel.bottomAnchor, constant: 15).isActive = true
    }
}
