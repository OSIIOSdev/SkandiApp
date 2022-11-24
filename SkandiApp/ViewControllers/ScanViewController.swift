//
//  ScanViewController.swift
//  SkandiApp
//
//  Created by OSIIOSdev on 06.11.2022.
//

import UIKit

final class ScanViewController: UIViewController {
    // MARK: IBOutlets
    @IBOutlet var roomImageView: UIImageView!
    @IBOutlet var categoriesDidChanged: UISegmentedControl!
    
    // MARK: Private properties
    private let roomImagesArray = [UIImage(named: "roomExampleFrst"),
                                   UIImage(named: "roomExampleSec"),
                                   UIImage(named: "roomExampleThrd")]
    private let kitchenImagesArray = [UIImage(named: "kitchenExampleFrst"),
                                     UIImage(named: "kitchenExampleSec"),
                                     UIImage(named: "kitchenExampleThrd")]
    private let bathroomImagesArray = [UIImage(named: "bathroomExampleFrst"),
                                       UIImage(named: "bathroomExampleSec"),
                                       UIImage(named: "bathroomExampleThrd")]
    private let otherRoomImagesArray = [UIImage(named: "otherImageExampleFrst"),
                                       UIImage(named: "otherImageExampleSec"),
                                       UIImage(named: "otherImageExampleThrd")]
    
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        roomImageView.image = UIImage(named: "roomExampleFrst")
        
        segmentedControlSet()
        segmentedControlChanged()
    }
    
    // MARK: Private methods
    private func segmentedControlSet() {
        categoriesDidChanged.setTitleTextAttributes([NSAttributedString.Key.foregroundColor : #colorLiteral(red: 0.321059823, green: 0.4023810029, blue: 0.3317038417, alpha: 1)], for: .normal)
        categoriesDidChanged.setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.white, NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 14)], for: .selected)
    }
    
    private func segmentedControlChanged() {
        categoriesDidChanged.addTarget(self, action: #selector(selectedValue), for: .valueChanged)
    }
    
    @objc func selectedValue(target: UISegmentedControl) {
        if target == self.categoriesDidChanged {
            let segmentIndex = target.selectedSegmentIndex
            
            if segmentIndex == 0 {
                roomImageView.image = roomImagesArray[0]
            } else if segmentIndex == 1 {
                roomImageView.image = kitchenImagesArray[0]
            } else if segmentIndex == 2 {
                roomImageView.image = bathroomImagesArray[0]
            } else {
                roomImageView.image = otherRoomImagesArray[0]
            }
        }
    }
}
