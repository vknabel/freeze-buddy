//
//  FoodViewController.swift
//  FreezeBuddy
//
//  Created by Valentin Knabel on 09.11.18.
//  Copyright © 2018 Valentin Knabel. All rights reserved.
//

import UIKit

class FoodViewControler: UICollectionViewController {
    var foods = Food.mocks
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewLayout.delegate
        
        collectionView.register(
            UICollectionReusableView.self,
            forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
            withReuseIdentifier: "filterBar"
        )
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return foods.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "foodCell", for: indexPath) as? FoodCellCollectionViewCell else {
            fatalError()
        }
        cell.imageView.image = foods[indexPath.item].image
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "selectedItem" {
            let destination = segue.destination as! FoodDetailViewController
            destination.food = foods[collectionView.indexPathsForSelectedItems![0].item]
        }
    }
    
    func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(
            ofKind: UICollectionView.elementKindSectionHeader,
            withReuseIdentifier: "filterBar",
            for: indexPath
        )
        header.frame.size.height = 100
        return header
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.size.width, height: 100)
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.size.width, height: 100)
    }
}
