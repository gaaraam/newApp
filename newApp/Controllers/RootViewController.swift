//
//  RootViewController.swift
//  newApp
//
//  Created by 이가람 on 2021/07/08.
//

import UIKit

class RootViewController: UIViewController{
    
    //MARK: Properties
    lazy var HelloWorldLabel: UILabel = {
        let label = UILabel()
        label.text = "hello world"
        return label
    }()
    
    lazy var HelloWorldButton: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.setTitle("next", for: UIControl.State.normal)
        return button
    }()
    
    lazy var HelloWorldView: UIView = {
        let view = UIView()
//        view.backgroundColor = .tertiarySystemGroupedBackground // 제 2의 백그라운드컬러
        view.layer.cornerRadius = 10
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.tertiarySystemGroupedBackground.cgColor
        return view
    }()
    
    lazy var HelloWorldTextField: UITextField = {
        let textField = UITextField()
        return textField
    }()
    
    // MARK: Life Cycle Function
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ConfigureViewComponent()
    }
    
    // MARK: Configures
    func ConfigureViewComponent(){
        self.view.backgroundColor = .systemBackground
        
        // 레이블을 추가
        view.addSubview(HelloWorldLabel)
        // 스토리보드가 아닌 코드로 뷰를 작성하겠다
        HelloWorldLabel.translatesAutoresizingMaskIntoConstraints = false
        HelloWorldLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        HelloWorldLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        // 버튼을 추가
        view.addSubview(HelloWorldButton)
        HelloWorldButton.translatesAutoresizingMaskIntoConstraints = false
        HelloWorldButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        HelloWorldButton.topAnchor.constraint(equalTo: HelloWorldLabel.bottomAnchor, constant: 15).isActive = true
        // 뷰를 추가
        view.addSubview(HelloWorldView)
        HelloWorldView.translatesAutoresizingMaskIntoConstraints = false
        HelloWorldView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        HelloWorldView.topAnchor.constraint(equalTo: HelloWorldButton.bottomAnchor, constant: 15).isActive = true
        HelloWorldView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        HelloWorldView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        // 텍스트 필드를 추가
        view.addSubview(HelloWorldTextField)
        HelloWorldTextField.translatesAutoresizingMaskIntoConstraints = false
        HelloWorldTextField.topAnchor.constraint(equalTo: HelloWorldView.topAnchor).isActive = true
        HelloWorldTextField.bottomAnchor.constraint(equalTo: HelloWorldView.bottomAnchor).isActive = true
        HelloWorldTextField.leftAnchor.constraint(equalTo: HelloWorldView.leftAnchor, constant: 4).isActive = true
        HelloWorldTextField.rightAnchor.constraint(equalTo: HelloWorldView.rightAnchor, constant: -4).isActive = true
        
        
    }
}
