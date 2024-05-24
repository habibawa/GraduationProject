//
//  HomeViewController.swift
//  Alkababgee
//
//  Created by Habiba Bawa on 22.05.2024.
//

import UIKit

class HomeViewController: UIViewController {

    
    @IBOutlet weak var CategoryCollectionView: UICollectionView!
    var categories : [DishCategory] = [
        .init(id: "id1", name: "Egyption Dishes", image: "https://picsum.photos/100/200"),
        
        .init(id: "id2", name: "Arabic Dishes ", image: "https://picsum.photos/100/200"),
        
        .init(id: "id3", name: "Asian Dishes", image: "https://picsum.photos/100/200"),
        
        .init(id: "id4", name: "Indian Dishes", image: "https://picsum.photos/100/200"),
        
        
        .init(id: "id5", name: "Mexican Dishes", image: "https://picsum.photos/100/200")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()

    }
    
    private func registerCells() {
         CategoryCollectionView.register(UINib(nibName: CategoryCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
     }

}


extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
 
    

   


   func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as! CategoryCollectionViewCell
       
       return cell
    
}
    }

