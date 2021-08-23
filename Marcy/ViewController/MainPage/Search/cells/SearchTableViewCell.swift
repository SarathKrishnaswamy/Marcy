//
//  SearchTableViewCell.swift
//  Marcy
//
//  Created by J.Sarath Krishnaswamy on 22/08/21.
//

import UIKit

class SearchTableViewCell: UITableViewCell {

    @IBOutlet weak var UserImage: UIImageView!
    @IBOutlet weak var UserNameLbl: UILabel!
    @IBOutlet weak var UserSubtitle: UILabel!
    @IBOutlet weak var AddImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
