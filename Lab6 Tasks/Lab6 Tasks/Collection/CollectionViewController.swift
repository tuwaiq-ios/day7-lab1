//
//  CollectionViewController.swift
//  Lab6 Tasks
//
//  Created by Eth Os on 27/02/1443 AH.
//

import UIKit

class CollectionViewController: UICollectionViewController {
    let fruts = ["🍉","🍌","🍊","🍇","🥝","🍑","🍐","🫐"]
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return fruts.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "colcell", for: indexPath) as! CollectionViewCell
        let data = fruts[(indexPath.row)]
        
        cell.emojiLabel.text = "\(data)"
         
        if (indexPath.row % 2 == 0){
            cell.backgroundColor = UIColor.systemGray
        }else {
            cell.backgroundColor = UIColor.yellow
        }
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       
        let alert = UIAlertController(title: "Alert ! ", message: " This Is Collection View .", preferredStyle: .alert )
        alert.addAction(UIAlertAction (title: "OK", style: .default, handler: { _ in
            return
        }))
        self.present(alert, animated: true, completion: nil)
        return
    }
}
