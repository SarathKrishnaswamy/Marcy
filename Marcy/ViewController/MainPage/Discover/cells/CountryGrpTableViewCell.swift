//
//  CountryGrpTableViewCell.swift
//  Marcy
//
//  Created by J.Sarath Krishnaswamy on 30/08/21.
//

import UIKit

class CountryGrpTableViewCell: UITableViewCell {

    @IBOutlet weak var ThumbnailImage: UIImageView!
    @IBOutlet weak var Videobg: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.Videobg.isHidden = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
