//
//  CollectionViewController.swift
//  StoryboardExamples
//
//  Created by Yiğithan Sönmez on 1.01.2024.
//

import UIKit

struct MovieType{
    let title: String
    let imageName: String
}

class ViewController: UIViewController {
    
    @IBOutlet var collectionView: UICollectionView!
    
    var dataSource: [MovieType] = [
        MovieType(title: "Search", imageName: "magnifyingglass"),
        MovieType(title: "Download", imageName: "arrow.down"),
        MovieType(title: "Home", imageName: "house.fill"),
        MovieType(title: "Search", imageName: "magnifyingglass"),
        MovieType(title: "Download", imageName: "arrow.down"),
        MovieType(title: "Home", imageName: "house.fill"),
        MovieType(title: "Search", imageName: "magnifyingglass"),
        MovieType(title: "Download", imageName: "arrow.down"),
        MovieType(title: "Home", imageName: "house.fill"),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? CollectionViewCell{
            cell.configure(with: dataSource[indexPath.row].title, imageSource: dataSource[indexPath.row].imageName)
            return cell
        }
        
        return UICollectionViewCell()
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 300)
    }
}
