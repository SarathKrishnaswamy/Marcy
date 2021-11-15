//
//  SignalBadStoriesViewController.swift
//  Marcy
//
//  Created by J.Sarath Krishnaswamy on 26/10/21.
//

import UIKit

class SignalBadStoriesViewController: UIViewController {

    @IBOutlet weak var ReportBtn: UIButton!
    @IBOutlet weak var SendBtn: UIButton!
    @IBOutlet weak var StackView: UIStackView!
    @IBOutlet weak var StackViewBottom: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.StackViewBottom.constant = -1000
        self.ReportBtn.layer.cornerRadius = self.ReportBtn.frame.height/2
        self.SendBtn.layer.cornerRadius = self.SendBtn.frame.height/2

        // Do any additional setup after loading the view.
    }
    

    @IBAction func CloseBtnOnPressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func MoreBtnOnPressed(_ sender: Any) {
        self.StackViewBottom.constant = 55
    }
   

}
