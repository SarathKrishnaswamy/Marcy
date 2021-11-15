//
//  OtherAccountsViewController.swift
//  Marcy
//
//  Created by J.Sarath Krishnaswamy on 27/10/21.
//

import UIKit

class OtherAccountsViewController: UIViewController {

    @IBOutlet var BgView: UIView!
    @IBOutlet var TopView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.TopView.layer.cornerRadius = self.TopView.frame.height/2
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
       
        BgView.clipsToBounds = true
        BgView.layer.cornerRadius = 30
        BgView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner] // Top right corner, Top left corner respectively
    }
    

  

}
