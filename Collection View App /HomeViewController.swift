//
//  HomeViewController.swift
//  53-56
//
//  Created by hamdi on 07/01/2023.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var pageController: UIPageControl!
    @IBOutlet weak var collectionView: UICollectionView!
    var arr = [UIImage]()
    var timer :Timer?
    var current = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        arr.append(UIImage(named: "Image 12")!)
        arr.append(UIImage(named: "Image 11")!)
        arr.append(UIImage(named: "Image 10")!)
        arr.append(UIImage(named: "Image 9")!)
        arr.append(UIImage(named: "Image 8")!)
        arr.append(UIImage(named: "Image 7")!)
        startTimer()
        pageController.numberOfPages = arr.count
    }
    
  
    
    func startTimer(){
        timer = Timer.scheduledTimer(timeInterval: 2.5, target: self, selector: #selector(MoveIndex), userInfo: nil, repeats: true)
    }
    @objc func MoveIndex (){
        if current < arr.count - 1 {
            current += 1
        }
        else {
            current = 0
        }
        collectionView.scrollToItem(at: IndexPath(item: current, section: 0), at: .centeredHorizontally, animated: true)
        pageController.currentPage = current
    }

}
extension HomeViewController : UICollectionViewDelegate {
    
}
extension HomeViewController :UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        arr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cel = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! HomeCollectionViewCell
        cel.imageViewPhoto.image = arr[indexPath.row]
        return cel
    }


}
extension HomeViewController : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
