//
//  ViewController.swift
//  cell
//  Created by Nirmal Chandran on 24/08/21.


import UIKit

class ViewController: UIViewController {
    
    var mainImage = UIImageView()
    
   
    let layout = UICollectionViewFlowLayout()
    
    
    lazy var collectionview: UICollectionView = {
        var collectionview = UICollectionView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height), collectionViewLayout: layout)
            collectionview.backgroundColor = .systemGray5
            collectionview.delegate = self
            collectionview.dataSource = self
        return collectionview
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        view.addSubview(collectionview)
        view.addSubview(mainImage)
        //emainImage.frame = self.view.bounds
        mainImage.image = #imageLiteral(resourceName: "coll")
        mainImage.alpha = 0.3
        //self.view.backgroundColor = UIColor(patternImage: UIImage(named: "Back"))
        // Do any additional setup after loading the view.
        
        collectionview.register(CollectionViewCell.self, forCellWithReuseIdentifier: "CollectionViewCell")
        layout.sectionInset = UIEdgeInsets(top: 20, left: 20, bottom: 10, right: 20)
        layout.itemSize = CGSize(width: 100, height: 100)
        layout.minimumLineSpacing = 20
        layout.minimumInteritemSpacing = 0
        
    }

}

extension ViewController: UICollectionViewDelegate{
        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let rootvc = secondViewController()
        let nav = UINavigationController(rootViewController: rootvc)
        self.navigationController?.pushViewController(rootvc, animated: true)
        //self.present(nav, animated: true, completion: nil)
      
    }
    
    
    
}

extension ViewController: UICollectionViewDataSource{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionview.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath)as! CollectionViewCell
        return cell
    }
    
    
}
