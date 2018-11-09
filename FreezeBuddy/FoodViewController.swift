//
//  FoodViewController.swift
//  FreezeBuddy
//
//  Created by Valentin Knabel on 09.11.18.
//  Copyright © 2018 Valentin Knabel. All rights reserved.
//

import UIKit

class FoodViewControler: UICollectionViewController {
    var items: [UIImage]  = [
        #imageLiteral(resourceName: "meat-0.jpg"), #imageLiteral(resourceName: "peas-0.jpg"),#imageLiteral(resourceName: "peas-1.jpg"), #imageLiteral(resourceName: "meat-1.jpg"), 
    ]
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "foodCell", for: indexPath) as? FoodCellCollectionViewCell else {
            fatalError()
        }
        cell.imageView.image = items[indexPath.item]
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "selectedItem" {
            let destination = segue.destination as! FoodDetailViewController
            destination.food = items[collectionView.indexPathsForSelectedItems![0].item]
        }
    }
}
