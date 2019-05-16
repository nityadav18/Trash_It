//
//  ViewController.swift
//  Trash_It
//
//  Created by Neha Pamidi on 5/16/19.
//  Copyright © 2019 Neha Pamidi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var camera: UIButton!
    
    @IBOutlet weak var PhotoLibrary: UIButton!
    
    
    @IBOutlet weak var ImageDisplay: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func PhotoLibraryAction(_ sender: UIButton) {
        let picker = UIImagePickerController()
        
        picker.delegate = self
        picker.sourceType = .photoLibrary
        
        present(picker, animated: true, completion: nil)
        
    
    }
    
    
    @IBAction func cameraAction(_ sender: UIButton) {
        
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .camera
        
        present(picker, animated: true, completion:nil)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        ImageDisplay.image = info[UIImagePickerControllerOriginalImage] as? UIImage;
        dismiss(animated: true, completion: nil)
        
    }
    

}

