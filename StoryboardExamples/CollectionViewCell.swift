//
//  CollectionViewCell.swift
//  StoryboardExamples
//
//  Created by Yiğithan Sönmez on 1.01.2024.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet private var countryNameLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    func configure(with imageName: String, imageSource: String){
        countryNameLabel.text = imageName
        imageView.image = UIImage(systemName: imageSource)
    }
}
