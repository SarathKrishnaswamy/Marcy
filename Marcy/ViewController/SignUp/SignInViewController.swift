//
//  SignInViewController.swift
//  Marcy
//
//  Created by J.Sarath Krishnaswamy on 15/08/21.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var BgView: UIView!
    @IBOutlet weak var SignInBtn: UIButton!
    @IBOutlet weak var TermsSpaceConstraint: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.SignInBtn.layer.cornerRadius = self.SignInBtn.frame.height/2
        switch UIDevice().type {
        case .iPhoneSE, .iPhone5, .iPhone5S:
            self.TermsSpaceConstraint.constant = 110
            break
            
        case .iPhone6, .iPhone7, .iPhone8, .iPhone6S, .iPhoneSE2:
            self.TermsSpaceConstraint.constant = 130
            break
            
        default:
            self.TermsSpaceConstraint.constant = 180
            break
        }

    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        BgView.layer.configureGradientBackground(UIColor(hexString: "#EDEAC6").cgColor, UIColor(hexString: "#D9A634").cgColor)
    }

    @IBAction func BackbtnOnPressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func SignInBtnOnPressed(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "VerificationViewController") as! VerificationViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
   

}
