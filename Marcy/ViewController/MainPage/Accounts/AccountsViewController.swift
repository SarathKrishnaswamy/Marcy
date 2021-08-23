//
//  AccountsViewController.swift
//  Marcy
//
//  Created by J.Sarath Krishnaswamy on 24/08/21.
//

import UIKit

class AccountsViewController: UIViewController {

    @IBOutlet weak var InformationBtn: UIButton!
    @IBOutlet weak var Postsbtn: UIButton!
    @IBOutlet weak var SelectedIndicator: UIView!
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func SettingsBtnOnPressed(_ sender: Any) {
        if let parent = self.parent as? MainViewController{
            parent.settings_page()
        }
    }
    
    @IBAction func InformationBtnOnPressed(_ sender: Any) {
    }
    
    @IBAction func PostbtnOnPressed(_ sender: Any) {
    }
    

}
