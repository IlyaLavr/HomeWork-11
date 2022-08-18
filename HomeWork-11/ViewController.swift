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
        textField.setLeftIcon(UIImage(systemName: "person") ?? UIImage())
        textField.setRigthIcon(UIImage(named: "check") ?? UIImage())
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
        textField.setLeftIcon(UIImage(systemName: "lock") ?? UIImage())
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
    
    private lazy var buttonRecoveryPassword: UIButton = {
        let button = UIButton()
        button.setTitle("Forgot your password?", for: .normal)
        return button
    }()
    
    private lazy var labelConnect: UILabel = {
        let label = UILabel()
        label.text = "Or connect with"
        label.textColor = .lightGray
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 12)
        return label
    }()
    
    private lazy var viewLineLeft: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.layer.cornerRadius = 5
        return view
    }()
    
    private lazy var viewLineRight: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.layer.cornerRadius = 5
        return view
    }()
    
    private lazy var buttonFacebook: UIButton = {
        let button = UIButton()
        button.backgroundColor = .init(red: 0, green: 159/255, blue: 242/255, alpha: 1)
        button.setTitle("Facebook", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 12)
        button.layer.cornerRadius = 17
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.3
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 17
        return button
    }()
    
    private lazy var buttonTwitter: UIButton = {
        let button = UIButton()
        button.backgroundColor = .init(red: 60/255, green: 80/255, blue: 136/255, alpha: 1)
        button.setTitle("Twitter", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 12)
        button.layer.cornerRadius = 17
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.3
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 17
        return button
    }()
    
    private lazy var labelNoAccount: UILabel = {
        let label = UILabel()
        label.text = "Dont have account?"
        label.textColor = .lightGray
        label.textAlignment = .left
        label.font = UIFont.boldSystemFont(ofSize: 12)
        return label
    }()
    
    private lazy var buttonSignup: UIButton = {
        let button = UIButton()
        button.setTitle("Sign up", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 15)
        button.setTitleColor(UIColor.init(red: 60/255, green: 80/255, blue: 136/255, alpha: 1), for: .normal)
        return button
    }()
    
    private lazy var imageFacebookLogo: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "facebook")
        return image
    }()
    
    private lazy var imageTwitterLogo: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "twitter")
        return image
    }()
    //MARK: - Setup
    private func setupHierarhy () {
        view.addSubview(imageView)
        imageView.addSubview(labelLogin)
        imageView.addSubview(textFieldLogin)
        imageView.addSubview(textFieldPassword)
        imageView.addSubview(buttonEnter)
        imageView.addSubview(buttonRecoveryPassword)
        imageView.addSubview(labelConnect)
        imageView.addSubview(viewLineLeft)
        imageView.addSubview(viewLineRight)
        imageView.addSubview(buttonFacebook)
        imageView.addSubview(buttonTwitter)
        imageView.addSubview(labelNoAccount)
        imageView.addSubview(buttonSignup)
        buttonFacebook.addSubview(imageFacebookLogo)
        buttonTwitter.addSubview(imageTwitterLogo)
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
        buttonRecoveryPassword.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(buttonEnter).offset(50)
            make.height.equalTo(40)
            make.left.equalTo(imageView.snp.left).offset(20)
            make.right.equalTo(imageView.snp.right).offset(-20)
        }
        
        labelConnect.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.bottom.equalToSuperview().offset(-170)
            make.height.equalTo(30)
            make.width.equalTo(100)
        }
        
        viewLineLeft.snp.makeConstraints { make in
            make.height.equalTo(2)
            make.bottom.equalTo(imageView.snp.bottom).offset(-183)
            make.left.equalTo(imageView.snp.left).offset(20)
            make.right.equalTo(labelConnect.snp.left).offset(-10)
        }
        
        viewLineRight.snp.makeConstraints { make in
            make.height.equalTo(2)
            make.bottom.equalTo(imageView.snp.bottom).offset(-183)
            make.right.equalTo(imageView.snp.right).offset(-20)
            make.left.equalTo(labelConnect.snp.right).offset(10)
        }
        
        buttonFacebook.snp.makeConstraints { make in
            make.bottom.equalTo(imageView.snp.bottom).offset(-110)
            make.height.equalTo(40)
            make.left.equalTo(imageView.snp.left).offset(20)
            make.right.equalTo(imageView.snp.centerX).offset(-10)
        }
        
        buttonTwitter.snp.makeConstraints { make in
            make.bottom.equalTo(imageView.snp.bottom).offset(-110)
            make.height.equalTo(40)
            make.right.equalTo(imageView.snp.right).offset(-20)
            make.left.equalTo(imageView.snp.centerX).offset(10)
        }
        
        labelNoAccount.snp.makeConstraints { make in
            
            make.height.equalTo(50)
            make.bottom.equalTo(imageView.snp.bottom).offset(-55)
            make.right.equalTo(imageView.snp.centerX)
        }
        
        buttonSignup.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-57)
            make.left.equalTo(labelNoAccount.snp.right).offset(10)
            make.height.equalTo(50)
        }
        
        imageFacebookLogo.snp.makeConstraints { make in
            make.height.width.equalTo(25)
            make.bottom.equalTo(buttonFacebook.snp.bottom).offset(-10)
            make.left.equalTo(buttonFacebook.snp.left).offset(10)
        }
        
        imageTwitterLogo.snp.makeConstraints { make in
            make.height.width.equalTo(25)
            make.bottom.equalTo(buttonTwitter.snp.bottom).offset(-8)
            make.left.equalTo(buttonTwitter.snp.left).offset(10)
        }
    }
}


extension UITextField {
    func setLeftIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 30, y: 5, width: 20, height: 20))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
    
    func setRigthIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: -15, y: 3, width: 25, height: 25))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        rightView = iconContainerView
        rightViewMode = .always
    }
}
