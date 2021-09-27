//
//  CountryHeaderTableViewCell.swift
//  Marcy
//
//  Created by J.Sarath Krishnaswamy on 23/09/21.
//

import UIKit

class CountryHeaderTableViewCell: UITableViewCell {

    @IBOutlet weak var Postbtn: UIButton!
    @IBOutlet weak var Photosbtn: UIButton!
    @IBOutlet weak var Videosbtn: UIButton!
    @IBOutlet weak var SelectIndicator: UILabel!
    @IBOutlet weak var Selectindicator_1: UILabel!
    @IBOutlet weak var SelectIndicator_2: UILabel!
    
    var PostBtnTapAction: ((CountryHeaderTableViewCell) -> Void)?
    var PhotoBtnTapAction: ((CountryHeaderTableViewCell) -> Void)?
    var VideosBtnTapAction: ((CountryHeaderTableViewCell) -> Void)?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        reset()
    }
    
    func reset(){
        self.SelectIndicator.isHidden = false
        self.Selectindicator_1.isHidden = true
        self.SelectIndicator_2.isHidden = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func PostsBtnOnPressed(_ sender: Any) {
        PostBtnTapAction?(self)
    }
    
    @IBAction func PhotosbtnOnPressed(_ sender: Any) {
        PhotoBtnTapAction?(self)
    }
    
    @IBAction func VideosBtnOnPressed(_ sender: Any) {
        VideosBtnTapAction?(self)
    }
}
