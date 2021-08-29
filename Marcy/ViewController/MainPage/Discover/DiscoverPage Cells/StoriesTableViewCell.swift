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
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
