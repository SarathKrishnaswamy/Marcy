//
//  StoriesTableViewCell.swift
//  Marcy
//
//  Created by J.Sarath Krishnaswamy on 30/08/21.
//

import UIKit

class StoriesTableViewCell: UITableViewCell {

    @IBOutlet weak var CollectionView: UICollectionView!
    @IBOutlet weak var SeeAllBtn: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        configureCollectionView()
    }

    func configureCollectionView(){
    
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 5, left: 0, bottom: 5, right: 0)
        layout.itemSize = CGSize(width:UIScreen.main.bounds.width/3.7, height: 179)
        layout.minimumInteritemSpacing = 10
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 10
        CollectionView.collectionViewLayout = layout
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
