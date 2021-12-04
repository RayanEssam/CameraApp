//
//  Launch Screen.swift
//  CameraApp
//
//  Created by Ahmad MacBook on 04/12/2021.
//

//import Foundation
import UIKit

var imageLaunchScreen = UIImageView()

class LaunchScreen : UIViewController {
    
    override func viewDidLoad() {
        
        view.backgroundColor = .white
        
        view.addSubview(imageLaunchScreen)
        imageLaunchScreen.frame = CGRect(x: 110, y: 200 , width: 200 , height: 200)
        imageLaunchScreen.image = UIImage(named:"smile")
        imageLaunchScreen.contentMode = .scaleAspectFill
        imageLaunchScreen.layer.cornerRadius = imageLaunchScreen.frame.height / 2
        imageLaunchScreen.clipsToBounds = true
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        imageLaunchScreen.center = view.center
        
        DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
            self.animate()
        }
    }
    
    func animate() {
        UIView.animate(withDuration: 1 , animations: {
            
            let size = self.view.frame.width * 3
            let diffX = size - self.view.frame.size.width
            let diffY = self.view.frame.size.height - size
            
            
            imageLaunchScreen.frame = CGRect(
                x: -(diffX/2) ,
                y: diffY/2 ,
                width: size,
                height: size
            )
            
        })
        
        UIView.animate(withDuration: 1.5 , animations: {
            
            imageLaunchScreen.alpha = 0
        }) { done in
            if done {
                DispatchQueue.main.asyncAfter(deadline: .now()+0.5, execute: {
                    
                    let loginPage = LogInViewController()
                    loginPage.modalTransitionStyle = .crossDissolve
                    loginPage.modalPresentationStyle = .fullScreen
                    self.present(loginPage, animated: true)
                })
            }
        }
    }
}

