//
//  LogInViewController.swift
//  CameraApp
//
//  Created by Rayan Taj on 02/12/2021.
//

import UIKit
// AHMED 
class LogInViewController: UIViewController {
    
    let welcomeLabel = UILabel()
    let accountLabel = UILabel()
    let userNameTextField = UITextField()
    let passwordTextField = UITextField()
    let signInButton = UIButton()
    let image = UIImageView()
//    let stackView = UIStackView()
    let signUpButton = UIButton()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        //stackView
        

//        view.addSubview(stackView)
//        stackView.frame = CGRect(x: 20, y: 150, width: view.frame.width - 40,  height: view.frame.height / 1.5 )
//        stackView.axis = NSLayoutConstraint.Axis.vertical
//        stackView.alignment = UIStackView.Alignment.center
//        stackView.spacing = 10.0
//        stackView.distribution = .fill
//        stackView.backgroundColor = .red
        
        // Label 1
        view.addSubview(welcomeLabel)
        welcomeLabel.frame = CGRect(x: 50 , y: 50, width: 300 , height: 80)
        welcomeLabel.text = "Welcome to Your Camera App"
        welcomeLabel.textColor = .black
        welcomeLabel.textAlignment = .center
        
        //image
        view.addSubview(image)
        image.frame = CGRect(x: 110, y: 200 , width: 200 , height: 200)
        image.image = UIImage(named:"logo")
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = image.frame.height / 2
        image.clipsToBounds = true
        image.backgroundColor = .green
        
        
        
        
        
        
        
        
        
        // text field 1
        view.addSubview(userNameTextField)
        userNameTextField.frame = CGRect(x: 60, y: 500, width: 300, height: 40)
//        textField1.backgroundColor = .lightGray
        userNameTextField.layer.cornerRadius = 10
        userNameTextField.placeholder = "  User Name  "
        userNameTextField.textColor = .black
        userNameTextField.layer.borderWidth = 0.1

        
        // text field 2
        view.addSubview(passwordTextField)
        passwordTextField.frame = CGRect(x: 60, y: 550, width: 300, height: 40)
//        textField2.backgroundColor = .lightGray
        passwordTextField.layer.cornerRadius = 10
        passwordTextField.placeholder = "  Password  "
        passwordTextField.isSecureTextEntry = true
        passwordTextField.textColor = .black
        passwordTextField.layer.borderWidth = 0.1

        
        // Button sign in
        view.addSubview(signInButton)
        signInButton.frame = CGRect(x: 80, y: 610, width: 250, height: 50)
        signInButton.backgroundColor = .black
        signInButton.layer.cornerRadius = 25
        signInButton.setTitle("Login", for: .normal)
        signInButton.addTarget(self, action: #selector(logIn), for: .touchDown)
        signInButton.tintColor = .white
        
        
        
        
        
        
        //label 2
        view.addSubview(accountLabel)
        accountLabel.frame = CGRect(x: 20, y: 700, width: 300, height: 100)
        accountLabel.text = "You don't have an account?"
        accountLabel.textColor = .black
        accountLabel.textAlignment = .center

        
        // Button SignUp
        view.addSubview(signUpButton)
        signUpButton.frame = CGRect(x: 280, y: 734, width: 70, height: 30)
        signUpButton.setTitle("SignUp", for: .normal)
        signUpButton.titleLabel?.font = .boldSystemFont(ofSize: 15)
        signUpButton.setTitleColor(.black, for: .normal)
//        signUpButton.addTarget(self, action: #selector(logIn), for: .touchDown)
        signUpButton.backgroundColor = .white
        signUpButton.layer.cornerRadius = 15
        
    }
    
    @objc func logIn(){
        
            
//        let nextVC = HomeViewController()
//        nextVC.test = textField1.text ?? " "
//        present(next, animated: true, completion: .none)
            
    }
}

extension UITextField {
    func clear(){
        self.text = ""
    }
}
