//
//  ChatuserTableViewCell.swift
//  Marcy
//
//  Created by J.Sarath Krishnaswamy on 18/08/21.
//

import UIKit

class ChatuserTableViewCell: UITableViewCell {

    @IBOutlet weak var UserImage: UIImageView!
    @IBOutlet weak var UserNameLbl: UILabel!
    @IBOutlet weak var UserMsgLbl: UILabel!
    @IBOutlet weak var TimeLbl: UILabel!
    @IBOutlet weak var MsgcountView: UIView!
    @IBOutlet weak var MsgcountLbl: UILabel!
    @IBOutlet weak var ChatOnlineView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.ChatOnlineView.layer.cornerRadius = self.ChatOnlineView.frame.width/2
        self.ChatOnlineView.layer.borderWidth = 1.0
        self.ChatOnlineView.layer.borderColor = UIColor.white.cgColor
        self.UserImage.layer.cornerRadius = self.UserImage.frame.width/2
        self.MsgcountView.layer.cornerRadius = 9.0
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
