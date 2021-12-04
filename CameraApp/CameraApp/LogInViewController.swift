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
    let signUpButton = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.hideKeyboardWhenTappedAround()
        
        view.backgroundColor = .white
        let screenWidth = view.frame.width
        
        // Label 1
        view.addSubview(welcomeLabel)
        welcomeLabel.frame = CGRect(x: 50 , y: 50, width: 300 , height: 80)
        welcomeLabel.text = "Welcome to Your Camera App"
        welcomeLabel.textColor = UIColor(red: 0.61, green: 0.81, blue: 0.91, alpha: 1)
        welcomeLabel.textAlignment = .center
        
        //image
        view.addSubview(image)
        image.frame = CGRect(x: 100, y: 200 , width: 200 , height: 200)
        image.image = UIImage(named:"smile")
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.backgroundColor = .green
        
        // text field user name
        view.addSubview(userNameTextField)
        userNameTextField.frame = CGRect(x: 20, y: 400, width: screenWidth-40 , height: 40)
        userNameTextField.backgroundColor = UIColor(red: 0.61, green: 0.81, blue: 0.91, alpha: 0.2)
        userNameTextField.layer.cornerRadius = 10
        userNameTextField.textColor = UIColor(red: 0.10, green: 0.42, blue: 0.70, alpha: 1.00)
        userNameTextField.layer.borderWidth = 0.2
        userNameTextField.layer.borderColor = CGColor(red: 0.10, green: 0.42, blue: 0.70, alpha: 1.00)
        userNameTextField.enablesReturnKeyAutomatically = true
        userNameTextField.attributedPlaceholder = NSAttributedString(
            string: "  User Name  ",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 0.10, green: 0.42, blue: 0.71, alpha: 0.5)])
        userNameTextField.text = nil
        
        
        // text field password
        view.addSubview(passwordTextField)
        passwordTextField.frame = CGRect(x: 20, y: 450, width: screenWidth-40 , height: 40)
        passwordTextField.backgroundColor = UIColor(red: 0.61, green: 0.81, blue: 0.91, alpha: 0.2)
        passwordTextField.layer.cornerRadius = 10
        passwordTextField.placeholder = "  Password  "
        passwordTextField.isSecureTextEntry = true
        passwordTextField.textColor = UIColor(red: 0.10, green: 0.42, blue: 0.70, alpha: 1.00)
        passwordTextField.layer.borderColor = CGColor(red: 0.10, green: 0.42, blue: 0.70, alpha: 1.00)
        passwordTextField.layer.borderWidth = 0.2
        passwordTextField.attributedPlaceholder = NSAttributedString(
            string: "  Password  ",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor(red: 0.10, green: 0.42, blue: 0.71, alpha: 0.5)])
        passwordTextField.text = nil
        
        // Button sign in
        view.addSubview(signInButton)
        signInButton.frame = CGRect(x: 80, y: 510, width: 250, height: 50)
        signInButton.backgroundColor =  UIColor(red: 0.61, green: 0.81, blue: 0.91, alpha: 1.00)
        signInButton.layer.cornerRadius = 25
        signInButton.setTitle("Login", for: .normal)
        signInButton.addTarget(self, action: #selector(logIn), for: .touchDown)
        signInButton.tintColor = .white
        
        
        //label 2
        view.addSubview(accountLabel)
        accountLabel.frame = CGRect(x: 20, y: 550, width: 300, height: 100)
        accountLabel.text = "You don't have an account?"
        accountLabel.textColor = UIColor(red: 0.61, green: 0.81, blue: 0.91, alpha: 0.8)
        accountLabel.textAlignment = .center
        
        
        // Button SignUp
        view.addSubview(signUpButton)
        signUpButton.frame = CGRect(x: 275, y: 585, width: 70, height: 30)
        signUpButton.setTitle("SignUp", for: .normal)
        signUpButton.titleLabel?.font = .boldSystemFont(ofSize: 15)
        signUpButton.backgroundColor = .white
        signUpButton.layer.cornerRadius = 15
        signUpButton.setTitleColor(UIColor(red: 0.61, green: 0.81, blue: 0.91, alpha: 1), for: .normal)
        
    }
    
    @objc func logIn(){
        
        
        if  userNameTextField.text  != ""  &&  passwordTextField.text != "" {
            
            let homeViewController = HomeViewController()
            homeViewController.modalPresentationStyle = .fullScreen
            homeViewController.userName = userNameTextField.text ?? "IDK"
            self.present(homeViewController, animated:true, completion:nil)
            
        }else{
            image.image = UIImage(named:"sad")
        }
    }
}

extension UIViewController {
    
    func hideKeyboardWhenTappedAround() {
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
