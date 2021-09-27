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
    @IBOutlet weak var CountryGrpContainerView: UIView!
    @IBOutlet weak var CreatePostContainerView: UIView!
    @IBOutlet weak var StoriesContainerView: UIView!
    @IBOutlet weak var StoriesviewContainerView: UIView!
    @IBOutlet weak var UserProfileContainerview: UIView!
    @IBOutlet weak var OtherSettingsContainerView: UIView!
    @IBOutlet weak var PrivateuserContainerview: UIView!
    //@IBOutlet weak var ShadowView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialsetup()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.Bottomview.setRadiusWithShadow(0)
        //Bottomview.center = self.view.center
        
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
        self.CountryGrpContainerView.isHidden = true
        self.CreatePostContainerView.isHidden = true
        self.StoriesContainerView.isHidden = true
        self.StoriesviewContainerView.isHidden = true
        self.UserProfileContainerview.isHidden = true
        self.OtherSettingsContainerView.isHidden = true
        self.PrivateuserContainerview.isHidden = true
        
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
    func other_settings_page(){
        btnreset()
        self.containerviewreset()
        self.OtherSettingsContainerView.isHidden = false
        self.Accountbtn.setImage(UIImage(named: "Profile_selected"), for: .normal)
        self.AccountLbl.textColor = UIColor(hexString: "#DBAC40")
    }
    func country_grp(){
        btnreset()
        self.containerviewreset()
        self.CountryGrpContainerView.isHidden = false
        self.HomeBtn.setImage(UIImage(named: "home_selected"), for: .normal)
        self.HomeLbl.textColor = UIColor(hexString: "#DBAC40")
    }
    func Private_user(){
        btnreset()
        self.containerviewreset()
        self.PrivateuserContainerview.isHidden = false
        self.HomeBtn.setImage(UIImage(named: "home_selected"), for: .normal)
        self.HomeLbl.textColor = UIColor(hexString: "#DBAC40")
    }
    
    func create_post(){
        btnreset()
        self.containerviewreset()
        self.CreatePostContainerView.isHidden = false
        self.HomeBtn.setImage(UIImage(named: "home_selected"), for: .normal)
        self.HomeLbl.textColor = UIColor(hexString: "#DBAC40")
    }
    
    func stories(){
        btnreset()
        self.containerviewreset()
        self.StoriesContainerView.isHidden = false
        self.HomeBtn.setImage(UIImage(named: "home_selected"), for: .normal)
        self.HomeLbl.textColor = UIColor(hexString: "#DBAC40")
    }
    
    func stories_view(){
        btnreset()
        self.containerviewreset()
        self.StoriesviewContainerView.isHidden = false
        self.HomeBtn.setImage(UIImage(named: "home_selected"), for: .normal)
        self.HomeLbl.textColor = UIColor(hexString: "#DBAC40")
    }
    
    func user_profile(){
        btnreset()
        self.containerviewreset()
        self.UserProfileContainerview.isHidden = false
        self.HomeBtn.setImage(UIImage(named: "home_selected"), for: .normal)
        self.HomeLbl.textColor = UIColor(hexString: "#DBAC40")
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

extension UIView {

  // OUTPUT 1
  func dropShadow(scale: Bool = true) {
    layer.masksToBounds = false
    layer.shadowColor = UIColor.black.cgColor
    layer.shadowOpacity = 0.5
    layer.shadowOffset = CGSize(width: -1, height: 1)
    layer.shadowRadius = 1

    layer.shadowPath = UIBezierPath(rect: bounds).cgPath
    layer.shouldRasterize = true
    layer.rasterizationScale = scale ? UIScreen.main.scale : 1
  }

  // OUTPUT 2
  func Full_dropShadow(color: UIColor, opacity: Float = 0.5, offSet: CGSize, radius: CGFloat = 1, scale: Bool = true) {
    layer.masksToBounds = false
    layer.shadowColor = color.cgColor
    layer.shadowOpacity = opacity
    layer.shadowOffset = offSet
    layer.shadowRadius = radius

    layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
    layer.shouldRasterize = true
    layer.rasterizationScale = scale ? UIScreen.main.scale : 1
  }
}
