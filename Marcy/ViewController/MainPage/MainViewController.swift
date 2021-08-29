//
//  MainViewController.swift
//  Marcy
//
//  Created by J.Sarath Krishnaswamy on 17/08/21.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var Bottomview: UIView!
    @IBOutlet weak var HomeBtn: UIButton!
    @IBOutlet weak var MessageBtn: UIButton!
    @IBOutlet weak var Accountbtn: UIButton!
    @IBOutlet weak var HomeLbl: UILabel!
    @IBOutlet weak var MessageLbl: UILabel!
    @IBOutlet weak var AccountLbl: UILabel!
    @IBOutlet weak var ContainerView: UIView!
    @IBOutlet weak var ContainerView_1: UIView!
    @IBOutlet weak var ContainerView_2: UIView!
    @IBOutlet weak var SearchContainerView: UIView!
    @IBOutlet weak var SettingsContainerView: UIView!
    @IBOutlet weak var NotificationContainerView: UIView!
    @IBOutlet weak var AllgroupsContainerView: UIView!
    @IBOutlet weak var AllCommunitiesContainerView: UIView!
    @IBOutlet weak var MultipleImageContainerView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialsetup()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.Bottomview.setRadiusWithShadow(0)
    }
    
    
    
    func initialsetup(){
        self.btnreset()
        self.containerviewreset()
        home()
    }
    
    func btnreset(){
        self.HomeBtn.setImage(UIImage(named: "Home"), for: .normal)
        self.MessageBtn.setImage(UIImage(named: "Message"), for: .normal)
        self.Accountbtn.setImage(UIImage(named: "Profile"), for: .normal)
        self.HomeLbl.textColor = UIColor(hexString: "#000000")
        self.MessageLbl.textColor = UIColor(hexString: "#000000")
        self.AccountLbl.textColor = UIColor(hexString: "#000000")
    }
    
    func containerviewreset(){
        self.ContainerView.isHidden = true
        self.ContainerView_1.isHidden = true
        self.ContainerView_2.isHidden = true
        self.SearchContainerView.isHidden = true
        self.SettingsContainerView.isHidden = true
        self.NotificationContainerView.isHidden = true
        self.AllgroupsContainerView.isHidden = true
        self.AllCommunitiesContainerView.isHidden = true
        self.MultipleImageContainerView.isHidden = true
    }

    func home(){
        btnreset()
        self.containerviewreset()
        self.ContainerView.isHidden = false
        self.HomeBtn.setImage(UIImage(named: "home_selected"), for: .normal)
        self.HomeLbl.textColor = UIColor(hexString: "#DBAC40")
    }
    
    func message(){
        btnreset()
        self.containerviewreset()
        self.ContainerView_1.isHidden = false
        self.MessageBtn.setImage(UIImage(named: "Message_selecetd"), for: .normal)
        self.MessageLbl.textColor = UIColor(hexString: "#DBAC40")
        
    }
    
    func account(){
        btnreset()
        self.containerviewreset()
        self.ContainerView_2.isHidden = false
        self.Accountbtn.setImage(UIImage(named: "Profile_selected"), for: .normal)
        self.AccountLbl.textColor = UIColor(hexString: "#DBAC40")
        
    }
    
    func search_page(){
        btnreset()
        self.containerviewreset()
        self.SearchContainerView.isHidden = false
        self.HomeBtn.setImage(UIImage(named: "home_selected"), for: .normal)
        self.HomeLbl.textColor = UIColor(hexString: "#DBAC40")
    }
    
    func Notif_page(){
        btnreset()
        self.containerviewreset()
        self.NotificationContainerView.isHidden = false
        self.HomeBtn.setImage(UIImage(named: "home_selected"), for: .normal)
        self.HomeLbl.textColor = UIColor(hexString: "#DBAC40")
    }
    
    func Comment_page(){
        btnreset()
        self.containerviewreset()
        self.MultipleImageContainerView.isHidden = false
        self.HomeBtn.setImage(UIImage(named: "home_selected"), for: .normal)
        self.HomeLbl.textColor = UIColor(hexString: "#DBAC40")
    }
    func groups_page(){
        btnreset()
        self.containerviewreset()
        self.AllgroupsContainerView.isHidden = false
        self.HomeBtn.setImage(UIImage(named: "home_selected"), for: .normal)
        self.HomeLbl.textColor = UIColor(hexString: "#DBAC40")
    }
    
    func countries_page(){
        btnreset()
        self.containerviewreset()
        self.AllCommunitiesContainerView.isHidden = false
        self.HomeBtn.setImage(UIImage(named: "home_selected"), for: .normal)
        self.HomeLbl.textColor = UIColor(hexString: "#DBAC40")
    }
    
    
    func settings_page(){
        btnreset()
        self.containerviewreset()
        self.SettingsContainerView.isHidden = false
        self.Accountbtn.setImage(UIImage(named: "Profile_selected"), for: .normal)
        self.AccountLbl.textColor = UIColor(hexString: "#DBAC40")
    }
   
    @IBAction func HpmeBtnOnPressed(_ sender: Any) {
        home()
    }
    
    
    
    @IBAction func MessagebtnOnPressed(_ sender: Any) {
        message()
    }
    
    
    @IBAction func AccountBtnOnPressed(_ sender: Any) {
        account()
    }
    
}
