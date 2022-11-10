//
//  ScanViewController.swift
//  SkandiApp
//
//  Created by OSIIOSdev on 06.11.2022.
//

import UIKit

final class ScanViewController: UIViewController {

    @IBOutlet var categoriesDidChanged: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        segmentedControlSet()
    }
    
    private func segmentedControlSet() {
        categoriesDidChanged.setTitleTextAttributes([NSAttributedString.Key.foregroundColor : #colorLiteral(red: 0.321059823, green: 0.4023810029, blue: 0.3317038417, alpha: 1)], for: .normal)
        categoriesDidChanged.setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.white, NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 14)], for: .selected)
    }
}
