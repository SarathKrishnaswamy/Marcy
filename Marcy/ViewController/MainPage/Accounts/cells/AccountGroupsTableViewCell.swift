//
//  AccountGroupsTableViewCell.swift
//  Marcy
//
//  Created by J.Sarath Krishnaswamy on 29/08/21.
//

import UIKit

class AccountGroupsTableViewCell: UITableViewCell {

    @IBOutlet weak var CollectionView: UICollectionView!
    @IBOutlet weak var LblHeading: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        configureCollectionView()
    }
    
    func configureCollectionView(){
    
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.itemSize = CGSize(width:UIScreen.main.bounds.width/4.65, height: UIScreen.main.bounds.height/8)
        layout.minimumInteritemSpacing = 0
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 0
        CollectionView.collectionViewLayout = layout
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
