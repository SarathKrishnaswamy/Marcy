//
//  SignUpNextViewController.swift
//  Marcy
//
//  Created by J.Sarath Krishnaswamy on 15/08/21.
//

import UIKit

class SignUpNextViewController: UIViewController {

    @IBOutlet weak var BgView: UIView!
    @IBOutlet weak var ValidateBtn: UIButton!
    @IBOutlet weak var BtnSpaceConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switch UIDevice().type {
        case .iPhoneSE, .iPhone5, .iPhone5S:
            self.BtnSpaceConstraint.constant = 10
            break
            
        case .iPhone6, .iPhone7, .iPhone8, .iPhone6S, .iPhoneSE2:
            self.BtnSpaceConstraint.constant = 60
            break
            
        default:
            self.BtnSpaceConstraint.constant = 90
            break
        }
        
        self.ValidateBtn.layer.cornerRadius = self.ValidateBtn.frame.height/2
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        BgView.layer.configureGradientBackground(UIColor(hexString: "#EDEAC6").cgColor, UIColor(hexString: "#D9A634").cgColor)
    }
    
    
    
    
    @IBAction func ValidateBtnOnPressed(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SignInViewController") as! SignInViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @IBAction func AlreadymemberBtnOnPressed(_ sender: Any) {
    }
    
    
    @IBAction func SignInBtnOnPressed(_ sender: Any) {
    }
    
    @IBAction func BackbtnOnPressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }

   

}
