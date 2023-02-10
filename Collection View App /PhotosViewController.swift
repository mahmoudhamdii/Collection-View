////
////  PhotosViewController.swift
////  53-56
////
////  Created by hamdi on 20/01/2023.
////
//
//import UIKit
//
//class PhotosViewController: UIViewController {
//    @IBOutlet weak var collectionView: UICollectionView!
//    var arrphotos = [Photo]()
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        arrphotos.append(Photo(year: "2000", photo: [UIImage(named: "Image 3")!,UIImage(named: "Image 3")!,UIImage(named: "Image 3")!]))
//        arrphotos.append(Photo(year: "2010", photo: [UIImage(named: "Image 3")!,UIImage(named: "Image 3")!,UIImage(named: "Image 3")!]))
//        arrphotos.append(Photo(year: "2020", photo: [UIImage(named: "Image 3")!,UIImage(named: "Image 3")!,UIImage(named: "Image 3")!]))
//      
//        collectionView.delegate = self
//        collectionView.dataSource = self
////        self.view.backgroundColor = UIColor.yellow
//       
//        
//    }
//    
//
//  
//
//}
//extension PhotosViewController : UICollectionViewDelegate {
//     
//}
//extension PhotosViewController : UICollectionViewDataSource {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        arrphotos[section].photo.count
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cel = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotosCollectionViewCell", for: indexPath) as! PhotosCollectionViewCell
//        cel.imgView.image = arrphotos[indexPath.section].photo[indexPath.row]
//        return cel
//    }
//    func numberOfSections(in collectionView: UICollectionView) -> Int {
//        arrphotos.count
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
//        if kind == UICollectionView.elementKindSectionHeader{
//            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "PhotosCollectionReusableView", for: indexPath) as!PhotosCollectionReusableView
//            header.textLbl.text = arrphotos[indexPath.section].year
//            header.backgroundColor = UIColor.brown
//            return header
//        }
//        else {
//            let footer = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "footer", for: indexPath)
//            footer.backgroundColor = UIColor.red
//            return footer
//        }
//    }
//}
//extension PhotosViewController :UICollectionViewDelegateFlowLayout {
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        CGSize(width: collectionView.frame.width * 0.3, height: collectionView.frame.height * 0.25)
//    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
//        CGSize(width: collectionView.frame.width, height: 30)
//    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
//        CGSize(width: collectionView.frame.width, height: 10)
//    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//        1
//    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//        0.1
//    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//        UIEdgeInsets(top: 1, left: 2, bottom: 1, right: 2)
//    }
//    
//    
//}
//struct Photo {
//    let year :String
//    let photo :[UIImage]
//    
//}
