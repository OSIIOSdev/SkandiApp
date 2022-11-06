//
//  ViewController.swift
//  SkandiApp
//
//  Created by OSIIOSdev on 31.10.2022.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var getStartedButtonPressed: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getStartedButtonPressed.layer.cornerRadius = getStartedButtonPressed.frame.height / 2
        
    }
}

