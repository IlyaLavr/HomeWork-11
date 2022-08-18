//
//  ViewController.swift
//  HomeWork-11
//
//  Created by Илья on 18.08.2022.
//
import SnapKit
import UIKit

class ViewController: UIViewController {

    //MARK: - Lifecicle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarhy()
        makeConstraints()
    }
    //MARK: - Outlets
    private lazy var imageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "vk")
        return image
    }()
    
    private lazy var labelLogin: UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 30)
        return label
    }()
    
    private lazy var textFieldLogin: UITextField = {
      let textField = UITextField()
        textField.textColor = .white
        textField.backgroundColor = .white
        textField.textAlignment = .center
        textField.placeholder = "lavrinov86"
        textField.layer.cornerRadius = 17
        textField.layer.shadowColor = UIColor.black.cgColor
        textField.layer.shadowOpacity = 0.3
        textField.layer.shadowOffset = .zero
        textField.layer.shadowRadius = 17
        return textField
    }()
    
    private lazy var textFieldPassword: UITextField = {
      let textField = UITextField()
        textField.textColor = .white
        textField.backgroundColor = .white
        textField.textAlignment = .center
        textField.placeholder = "Password"
        textField.layer.cornerRadius = 17
        textField.layer.shadowColor = UIColor.black.cgColor
        textField.layer.shadowOpacity = 0.3
        textField.layer.shadowOffset = .zero
        textField.layer.shadowRadius = 17
        return textField
    }()
    
    private lazy var buttonEnter: UIButton = {
      let button = UIButton()
        button.backgroundColor = .init(red: 60/255, green: 80/255, blue: 136/255, alpha: 1)
        button.setTitle("Login", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 14)
        button.layer.cornerRadius = 17
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.3
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 17
        return button
    }()
    
    //MARK: - Setup
    private func setupHierarhy () {
        view.addSubview(imageView)
        imageView.addSubview(labelLogin)
        imageView.addSubview(textFieldLogin)
        imageView.addSubview(textFieldPassword)
        imageView.addSubview(buttonEnter)
    }
    
    private func makeConstraints () {
        imageView.snp.makeConstraints { make in
            make.left.right.top.bottom.equalToSuperview()
        }
        
        labelLogin.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalToSuperview().offset(50)
            make.height.equalTo(100)
            make.left.equalTo(imageView.snp.left).offset(20)
            make.right.equalTo(imageView.snp.right).offset(-20)
        }
        
        textFieldLogin.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalToSuperview().offset(150)
            make.height.equalTo(40)
            make.left.equalTo(imageView.snp.left).offset(40)
            make.right.equalTo(imageView.snp.right).offset(-40)
        }
        
        textFieldPassword.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(textFieldLogin.snp.bottom).offset(30)
            make.height.equalTo(40)
            make.left.equalTo(imageView.snp.left).offset(40)
            make.right.equalTo(imageView.snp.right).offset(-40)
        }
        
        buttonEnter.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(textFieldPassword.snp.bottom).offset(100)
            make.height.equalTo(40)
            make.left.equalTo(imageView.snp.left).offset(40)
            make.right.equalTo(imageView.snp.right).offset(-40)
        }
}
}
