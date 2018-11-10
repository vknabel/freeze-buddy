//
//  Food.swift
//  FreezeBuddy
//
//  Created by Valentin Knabel on 09.11.18.
//  Copyright © 2018 Valentin Knabel. All rights reserved.
//

import UIKit

struct Food {
    var image: UIImage
    var mhd: Date
    var amount: Int
    var unit: Unit
    var tags: [String]
    
    enum Unit {
        case gramm
    }
}

extension Food {
    static var mocks: [Food] {
        return [
            Food(
                image: #imageLiteral(resourceName: "peas-0.jpg"),
                mhd: Date(),
                amount: 1000,
                unit: .gramm,
                tags: ["peas"]
            ),
            Food(
                image: #imageLiteral(resourceName: "peas-1.jpg"),
                mhd: Date(),
                amount: 300,
                unit: .gramm,
                tags: ["peas"]
            ),
            Food(
                image: #imageLiteral(resourceName: "meat-0.jpg"),
                mhd: Date(),
                amount: 1000,
                unit: .gramm,
                tags: ["meat"]
            ),
            Food(
                image: #imageLiteral(resourceName: "meat-1.jpg"),
                mhd: Date(),
                amount: 2000,
                unit: .gramm,
                tags: ["meat"]
            )
        ]
    }
}
