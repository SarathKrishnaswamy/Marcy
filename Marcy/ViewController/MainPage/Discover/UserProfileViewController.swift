//
//  UserProfileViewController.swift
//  Marcy
//
//  Created by J.Sarath Krishnaswamy on 31/08/21.
//

import UIKit

class UserProfileViewController: UIViewController {

    @IBOutlet weak var InformationBtn: UIButton!
    @IBOutlet weak var Postsbtn: UIButton!
    @IBOutlet weak var SelectedIndicator: UIView!
    @IBOutlet weak var ContainerView: UIView!
    @IBOutlet weak var ContainerView_2: UIView!
    @IBOutlet weak var PostSelectedIndicator: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIView.animate(withDuration: 0.1) {
            self.indicator_reset()
            self.SelectedIndicator.isHidden = false
            self.SelectedIndicator.frame.origin.x = 0
            self.InformationBtn.setTitleColor(UIColor(hexString: "#DBAC40"), for: .normal)
            self.containerview_reset()
            self.ContainerView.isHidden = false
        }

        // Do any additional setup after loading the view.
    }
    

    func containerview_reset(){
        self.ContainerView.isHidden = true
        self.ContainerView_2.isHidden = true
        
    }
    
    func indicator_reset(){
        self.SelectedIndicator.isHidden = true
        self.PostSelectedIndicator.isHidden = true
        self.InformationBtn.setTitleColor(UIColor(hexString: "#8A8A8F"), for: .normal)
        self.Postsbtn.setTitleColor(UIColor(hexString: "#8A8A8F"), for: .normal)
    }
   
    @IBAction func InformationBtnOnPressed(_ sender: Any) {
        UIView.animate(withDuration: 0.1) {
            self.indicator_reset()
            self.SelectedIndicator.isHidden = false
            self.SelectedIndicator.frame.origin.x = 0
            self.InformationBtn.setTitleColor(UIColor(hexString: "#DBAC40"), for: .normal)
            self.containerview_reset()
            self.ContainerView.isHidden = false
        }
    }
    
    @IBAction func PostbtnOnPressed(_ sender: Any) {
        UIView.animate(withDuration: 0.1) {
            self.indicator_reset()
            self.PostSelectedIndicator.isHidden = false
            self.Postsbtn.setTitleColor(UIColor(hexString: "#DBAC40"), for: .normal)
            self.containerview_reset()
            self.ContainerView_2.isHidden = false
        }
    }
    
    
    @IBAction func BackBtnOnPressed(_ sender: Any) {
        if let parent = self.parent as? MainViewController {
            parent.stories_view()
        }
    }
    

}
