//
//  ProfileViewController.swift
//  SkandiApp
//
//  Created by OSIIOSdev on 06.11.2022.
//

import UIKit

final class ProfileViewController: UIViewController {
    //MARK: - IBOutlets
    @IBOutlet var profilePhotoImageView: UIImageView!
    
    //MARK: - Properties
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        profilePhotoImageView.layer.cornerRadius = profilePhotoImageView.frame.height / 2
    }
    
    
}
