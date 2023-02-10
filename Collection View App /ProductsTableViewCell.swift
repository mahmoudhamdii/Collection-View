//
//  ProductsTableViewCell.swift
//  53-56
//
//  Created by hamdi on 20/01/2023.
//

import UIKit

class ProductsTableViewCell: UITableViewCell , UICollectionViewDelegate ,UICollectionViewDataSource ,UICollectionViewDelegateFlowLayout {
   
    var arrPhotos = [UIImage]()

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var lblText: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        arrPhotos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cel = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductsCollectionViewCell", for: indexPath) as!ProductsCollectionViewCell
        cel.imgProductsPhoto.image = arrPhotos[indexPath.row]
        return cel
    }
    func setUpcell (title :String ,arrPhotos :[UIImage]){
        self.lblText.text = title
        self.arrPhotos = arrPhotos
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: collectionView.frame.width * 0.2, height: collectionView.frame.height * 0.2)
    }

}
