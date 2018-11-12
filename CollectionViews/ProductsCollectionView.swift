//
//  ProductsCollectionView.swift
//  PocEcomHome
//
//  Created by Md. Mahadhi Hassan Chowdhury on 11/12/18.
//  Copyright © 2018 Md. Mahadhi Hassan Chowdhury. All rights reserved.
//

import UIKit

class ProductsCollectionView: UICollectionView {

    
    override func awakeFromNib() {
        self.delegate = self
        self.dataSource = self
    }

}

extension ProductsCollectionView : UICollectionViewDelegate, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as! ProductCell
        
        return cell
    }
    
    
    
}
