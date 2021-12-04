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
    

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        let screenWidth = view.frame.width
        let screenHeight = view.frame.width
        

        self.view.addSubview(userNameLable)
        self.view.addSubview(imageViewObject)
        self.view.addSubview(cameraButton)

        userNameLable.frame = CGRect(x: 20, y: 80, width: screenWidth-40 , height: 35)
        userNameLable.backgroundColor = .white
        userNameLable.text = "Hello Ahmed"
        userNameLable.font = .boldSystemFont(ofSize: 25)
        userNameLable.textAlignment = .left
        
        
        

        imageViewObject.backgroundColor = .green
        imageViewObject.frame = CGRect(x:20, y: 150, width:  screenWidth-40 , height: 300)
        imageViewObject.image = UIImage(named:"bb")
        
        
        
        
    
        
        cameraButton.frame = CGRect(x:80, y: 800, width: 250, height: 50)
        cameraButton.setTitle("Camera!", for: .normal)
        cameraButton.addTarget(self, action: #selector(cameraButtonTapped), for: .touchDown)
        cameraButton.backgroundColor = .black
        cameraButton.layer.cornerRadius = 25
        cameraButton.tintColor = .white
        cameraButton.layoutMargins = .init(top: 20, left: 20, bottom: 20, right: 20)
        
        
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
        imageViewObject.contentMode = .scaleAspectFill
          print(image.size)
    }
    
    
    
    
}







