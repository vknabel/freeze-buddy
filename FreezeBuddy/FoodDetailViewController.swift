//
//  FoodDetailViewController.swift
//  FreezeBuddy
//
//  Created by Valentin Knabel on 09.11.18.
//  Copyright © 2018 Valentin Knabel. All rights reserved.
//

import UIKit

class FoodDetailViewController: UIViewController {
    var food: UIImage! {
        didSet {
            imageView?.image = food
        }
    }
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = food
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
