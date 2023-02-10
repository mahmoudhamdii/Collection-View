//
//  ViewController.swift
//  53-56
//
//  Created by hamdi on 07/01/2023.
//

import UIKit
struct Plant  {
    let photo :UIImage
    let Price :Double
}
class ViewController: UIViewController {
    var arr = [Plant]()
    
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        var i = 0
        while (i < 51){
            arr.append(Plant(photo:UIImage(named:"Image 0")!, Price: 2056.25 ))
            arr.append(Plant(photo:UIImage(named:"Image 1")!, Price: 2056.25 ))
            arr.append(Plant(photo:UIImage(named:"Image 2")!, Price: 2056.25 ))
            arr.append(Plant(photo:UIImage(named:"Image 3")!, Price: 2056.25 ))
            arr.append(Plant(photo:UIImage(named:"Image 4")!, Price: 2056.25 ))
            arr.append(Plant(photo:UIImage(named:"Image 5")!, Price: 2056.25 ))
            arr.append(Plant(photo:UIImage(named:"Image 6")!, Price: 2056.25 ))
            i = i+1
        }}


}
extension ViewController :UICollectionViewDelegate {
    
}
extension ViewController :UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        arr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cel = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath ) as! PlantCollectionViewCell
        cel.plantImage.image = arr[indexPath.row].photo
        cel.plantNameLbl.text = "\(arr[indexPath.row].Price) EGY"
//       cel.backgroundColor = UIColor.yellow
        

        return cel
    }
    
    
    
}
extension ViewController:UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width * 0.3, height: self.view.frame.width * 0.3 )
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0.1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        0.1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 1, left: 2, bottom: 1, right: 2)
    }
}

