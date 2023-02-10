//
//  ProductsViewController.swift
//  53-56
//
//  Created by hamdi on 20/01/2023.
//

import UIKit

class ProductsViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var arrProducts = [Product]()
    override func viewDidLoad() {
        super.viewDidLoad()
       tableView.delegate = self
       tableView.dataSource = self
        arrProducts.append(Product(name: "Top Rated", photo: [UIImage(named:"Image 3")!,UIImage(named:"Image 3")!,UIImage(named: "Image 3")!,UIImage(named: "Image 3")!,UIImage(named:"Image 3")!,UIImage(named: "Image 3")!,UIImage(named: "Image 3")!,UIImage(named:"Image 3")!,UIImage(named:"Image 3")!,UIImage(named: "Image 3")!,UIImage(named: "Image 3")!,UIImage(named:"Image 3")!,UIImage(named: "Image 3")!,UIImage(named: "Image 3")!]))
        arrProducts.append(Product(name: "Top Rated", photo: [UIImage(named:"Image 3")!,UIImage(named: "Image 3")!,UIImage(named: "Image 3")!,UIImage(named:"Image 3")!,UIImage(named: "Image 3")!,UIImage(named: "Image 3")!]))
        arrProducts.append(Product(name: "Top Rated", photo: [UIImage(named:"Image 3")!,UIImage(named: "Image 3")!,UIImage(named: "Image 3")!,UIImage(named:"Image 3")!,UIImage(named: "Image 3")!,UIImage(named: "Image 3")!]))
        arrProducts.append(Product(name: "Top Rated", photo: [UIImage(named:"Image 3")!,UIImage(named: "Image 3")!,UIImage(named: "Image 3")!,UIImage(named:"Image 3")!,UIImage(named: "Image 3")!,UIImage(named: "Image 3")!]))
    }
    

   

}
extension ProductsViewController :UITableViewDelegate {
    
}
extension ProductsViewController  :UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrProducts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cel = tableView.dequeueReusableCell(withIdentifier: "ProductsTableViewCell", for: indexPath) as!ProductsTableViewCell
        let productTemp = arrProducts[indexPath.row]
        cel.setUpcell(title: productTemp.name, arrPhotos: productTemp.photo)
        return cel
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        300
    }
    
    
    
}
struct Product {
    let name :String
    let photo :[UIImage]
}
