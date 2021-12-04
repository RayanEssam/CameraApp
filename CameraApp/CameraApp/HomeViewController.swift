//
//  HomeViewController.swift
//  CameraApp
//
//  Created by Rayan Taj on 02/12/2021.
//

import UIKit

// IBRA
class HomeViewController: UIViewController
, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var userNameLable = UILabel()
    var cameraButton = UIButton()
    var imageViewObject = UIImageView()
    
    var userName : String = " "
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        let screenWidth = view.frame.width
        
        self.view.addSubview(userNameLable)
        self.view.addSubview(imageViewObject)
        self.view.addSubview(cameraButton)
        
        userNameLable.frame = CGRect(x: 20, y: 80, width: screenWidth-40 , height: 35)
        userNameLable.textColor = UIColor(red: 0.61, green: 0.81, blue: 0.91, alpha: 1.00)
        userNameLable.text = "Hello \(userName) ,"
        userNameLable.font = .boldSystemFont(ofSize: 28)
        userNameLable.textAlignment = .left
        
        
        imageViewObject.frame = CGRect(x:20, y: 150, width:  screenWidth-40 , height: 300)
        imageViewObject.image = UIImage(named:"NoImage")
        
        
        
        cameraButton.frame = CGRect(x:70, y: 600, width: 250, height: 50)
        cameraButton.setTitle("Camera!", for: .normal)
        cameraButton.addTarget(self, action: #selector(cameraButtonTapped), for: .touchDown)
        cameraButton.backgroundColor = UIColor(red: 0.61, green: 0.81, blue: 0.91, alpha: 1.00)
        cameraButton.layer.cornerRadius = 25
        
    }
    
    
    @objc func cameraButtonTapped(){
        
        let vc = UIImagePickerController()
        vc.sourceType = .camera
        vc.allowsEditing = true
        vc.delegate = self
        present(vc, animated: true)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        picker.dismiss(animated: true)
        
        guard let image = info[.editedImage] as? UIImage else {
            print("No image found")
            return
        }
        
        imageViewObject.image = image
        imageViewObject.contentMode = .scaleAspectFill
    }
}

