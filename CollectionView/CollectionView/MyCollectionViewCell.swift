//
//  MyCollectionViewCell.swift
//  CollectionView
//
//  Created by GAMZE AKYÜZ on 17.09.2022.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {

    @IBOutlet var imageView: UIImageView!
    
    static let identifier = "MyCollectionViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    public func configure(with image: UIImage){
        imageView.image = image
    }
    
    /*
     UINib = Interface Builder uç dosyalarını içeren bir nesne.
     nib() = Genel bakış mevcut değil.
     */
    
    static func nib() -> UINib {
        return  UINib(nibName: "MyCollectionViewCell", bundle: nil)
    }

}
