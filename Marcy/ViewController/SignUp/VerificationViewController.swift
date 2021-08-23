//
//  VerificationViewController.swift
//  Marcy
//
//  Created by J.Sarath Krishnaswamy on 15/08/21.
//

import UIKit

class VerificationViewController: UIViewController {

    @IBOutlet weak var ValidateBtn: UIButton!
    @IBOutlet weak var BgView: UIView!
    @IBOutlet weak var TermsSpaceConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.ValidateBtn.layer.cornerRadius = self.ValidateBtn.frame.height/2

        // Do any additional setup after loading the view.
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        BgView.layer.configureGradientBackground(UIColor(hexString: "#EDEAC6").cgColor, UIColor(hexString: "#D9A634").cgColor)
    }

    @IBAction func ValidateBtnOnPressed(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func BackbtnOnPressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }

}
