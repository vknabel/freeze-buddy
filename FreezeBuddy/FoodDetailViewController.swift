//
//  FoodDetailViewController.swift
//  FreezeBuddy
//
//  Created by Valentin Knabel on 09.11.18.
//  Copyright © 2018 Valentin Knabel. All rights reserved.
//

import UIKit

class FoodDetailViewController: UIViewController {
    var food: Food! {
        didSet {
            applyFood()
        }
    }
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var mhdValueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        applyFood()
    }
    
    func applyFood() {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .none
        
        imageView?.image = food.image
        mhdValueLabel?.text = formatter.string(from: food.mhd)
        navigationItem.title = food.tags.first
    }
}
