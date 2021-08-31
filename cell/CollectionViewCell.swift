//
//  CollectionViewCell.swift
//  cell
//
//  Created by Nirmal Chandran on 24/08/21.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    lazy var img :UIImageView = {
        var img = UIImageView(frame: CGRect(x: 25, y: 20, width: 50, height: 50))
        img.image = UIImage(named: "N")
        return img
    }()
    
    lazy var title: UILabel = {
        var title = UILabel(frame: CGRect(x: 22, y: 55, width: 80, height: 50))
        title.text = "Receiving"
        title.font = title.font.withSize(12)
        return title
    }()
    
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(img)
        contentView.addSubview(title)
        contentView.backgroundColor = .white
        contentView.alpha = 60
        contentView.clipsToBounds = true
        contentView.layer.cornerRadius = 49
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
