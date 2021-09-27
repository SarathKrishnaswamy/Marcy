//
//  FrequentUserCollectionViewCell.swift
//  Marcy
//
//  Created by J.Sarath Krishnaswamy on 18/08/21.
//

import UIKit

class FrequentUserCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var FrequentUsernameLbl: UILabel!
   // @IBOutlet weak var OnlineView: UIView!
    @IBOutlet weak var UserImage: UIImageView!
    @IBOutlet weak var StoryView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        //self.OnlineView.layer.cornerRadius = self.OnlineView.frame.width/2
        //self.UserImage.layer.cornerRadius = self.UserImage.frame.width/2
        //self.StoryView.layer.cornerRadius = self.StoryView.frame.width/2
        //self.StoryView.layer.borderColor = UIColor(hexString: "#DBAC40").cgColor
        //self.StoryView.layer.borderWidth = 1.0
        
    }
}
