//
//  HomeViewController.swift
//  CameraApp
//
//  Created by Rayan Taj on 02/12/2021.
//

import UIKit

// IBRA
class HomeViewController: UIViewController  , UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var homeStackView = UIStackView()
    
    var userNameLable = UILabel()
    
    var cameraButton = UIButton()
    
    var imageViewObject = UIImageView()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        
        userNameLable.frame = CGRect(x:100, y: 60, width: 200, height: 40)
        userNameLable.backgroundColor = .white
        userNameLable.text = "Hello Ahmed"
        userNameLable.textAlignment = .center
        
        
        
        imageViewObject = UIImageView(frame:CGRect(x: 0, y: 100, width: 400, height: 600))
        
        
        imageViewObject.image = UIImage(named:"bb")
        
        
        
        self.view.addSubview(imageViewObject)
        
        
        
        
        
        
        
        
        cameraButton.frame = CGRect(x:70, y: 800, width: 300, height: 40)
        cameraButton.setTitle("login", for: .normal)
        cameraButton.addTarget(self, action: #selector(cameraButtonTapped), for: .touchDown)
        cameraButton.backgroundColor = .blue
        
        
        
        view.addSubview(userNameLable)
        view.addSubview(cameraButton)
    }
    
    
    @objc func cameraButtonTapped(){
        
        
        let vc = UIImagePickerController()
        vc.sourceType = .camera
        vc.allowsEditing = true
        vc.delegate = self
        present(vc, animated: true)
        
        
        print("iiii")
        
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true)

          guard let image = info[.editedImage] as? UIImage else {
              print("No image found")
              return
          }

          // print out the image size as a test
        
        imageViewObject.image = image
          print(image.size)
    }
    
    
    
    
}








