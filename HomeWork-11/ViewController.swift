//
//  ViewController.swift
//  HomeWork-11
//
//  Created by Илья on 18.08.2022.
//

import SnapKit
import UIKit

class ViewController: UIViewController {
    
    // MARK: - Elements
    struct Metrics {
        static var labelText = "Login"
        static var labelFontSize = 30
        static var loginText = "lavrinov86"
        static var passwordText = "Password"
        static var enterColour = UIColor(red: 60/255, green: 80/255, blue: 136/255, alpha: 1)
        static var enterTextButton = "Login"
        static var connectText = "Or connect with"
        static var enterFontSize = 14
        static var recoveryButtonText = "Forgot your password?"
        static var connectFontSize = 12
        static var connectColourText = UIColor.lightGray
        static var lineLeftColour = UIColor.lightGray
        static var lineRigthColour = UIColor.lightGray
        static var facebookBackgroungColour = UIColor(red: 0, green: 159/255, blue: 242/255, alpha: 1)
        static var facebookButtonText = "Facebook"
        static var facebookFontSize = 12
        static var twitterBackgroundColour = UIColor(red: 60/255, green: 80/255, blue: 136/255, alpha: 1)
        static var twitterButtonTaxt = "Twitter"
        static var twitterFontSize = 12
        static var noAccountText = "Dont have account?"
        static var noAccountColour = UIColor.lightGray
        static var noAccountFontSize = 12
        static var signUpFontSize = 15
        static var signUpColour = UIColor(red: 60/255, green: 80/255, blue: 136/255, alpha: 1)
        static var signUpButtonText = "Sign up"
    }
    
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "vk")
        return imageView
    }()
    
    private lazy var labelLogin: UILabel = {
        let label = UILabel()
        label.text = Metrics.labelText
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: CGFloat(Metrics.labelFontSize))
        return label
    }()
    
    private lazy var textFieldLogin: UITextField = {
        let textField = UITextField()
        textField.textColor = .white
        textField.backgroundColor = .white
        textField.textAlignment = .center
        textField.placeholder = Metrics.loginText
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
        textField.placeholder = Metrics.passwordText
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
        button.backgroundColor = Metrics.enterColour
        button.setTitle(Metrics.enterTextButton, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: CGFloat(Metrics.enterFontSize))
        button.layer.cornerRadius = 17
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.3
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 17
        return button
    }()
    
    private lazy var buttonRecoveryPassword: UIButton = {
        let button = UIButton()
        button.setTitle(Metrics.recoveryButtonText, for: .normal)
        return button
    }()
    
    private lazy var labelConnect: UILabel = {
        let label = UILabel()
        label.text = Metrics.connectText
        label.textColor = Metrics.connectColourText
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: CGFloat(Metrics.enterFontSize))
        return label
    }()
    
    private lazy var viewLineLeft: UIView = {
        let view = UIView()
        view.backgroundColor = Metrics.lineLeftColour
        view.layer.cornerRadius = 5
        return view
    }()
    
    private lazy var viewLineRight: UIView = {
        let view = UIView()
        view.backgroundColor = Metrics.lineRigthColour
        view.layer.cornerRadius = 5
        return view
    }()
    
    private lazy var buttonFacebook: UIButton = {
        let button = UIButton()
        button.backgroundColor = Metrics.facebookBackgroungColour
        button.setTitle(Metrics.facebookButtonText, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: CGFloat(Metrics.facebookFontSize))
        button.layer.cornerRadius = 17
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.3
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 17
        return button
    }()
    
    private lazy var buttonTwitter: UIButton = {
        let button = UIButton()
        button.backgroundColor = Metrics.twitterBackgroundColour
        button.setTitle(Metrics.twitterButtonTaxt, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: CGFloat(Metrics.twitterFontSize))
        button.layer.cornerRadius = 17
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.3
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 17
        return button
    }()
    
    private lazy var labelNoAccount: UILabel = {
        let label = UILabel()
        label.text = Metrics.noAccountText
        label.textColor = Metrics.noAccountColour
        label.font = UIFont.boldSystemFont(ofSize: CGFloat(Metrics.noAccountFontSize))
        label.textAlignment = .left
        return label
    }()
    
    private lazy var buttonSignup: UIButton = {
        let button = UIButton()
        button.setTitle(Metrics.signUpButtonText, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: CGFloat(Metrics.signUpFontSize))
        button.setTitleColor(Metrics.signUpColour, for: .normal)
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
    
    //MARK: - Lifecicle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarhy()
        makeConstraints()
    }
   
    // MARK: - Setup
    private func setupHierarhy () {
        view.addSubview(imageView)
        view.addSubview(labelLogin)
        view.addSubview(textFieldLogin)
        view.addSubview(textFieldPassword)
        view.addSubview(buttonEnter)
        view.addSubview(buttonRecoveryPassword)
        view.addSubview(labelConnect)
        view.addSubview(viewLineLeft)
        view.addSubview(viewLineRight)
        view.addSubview(buttonFacebook)
        view.addSubview(buttonTwitter)
        view.addSubview(labelNoAccount)
        view.addSubview(buttonSignup)
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

// MARK: - Extensions
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
