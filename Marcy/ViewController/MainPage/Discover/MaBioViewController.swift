//
//  MaBioViewController.swift
//  Marcy
//
//  Created by J.Sarath Krishnaswamy on 26/10/21.
//

import UIKit

class MaBioViewController: UIViewController {

    @IBOutlet weak var EnregisterBtn: UIButton!
    @IBOutlet weak var TextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.TextView.layer.cornerRadius = 10.0
        self.EnregisterBtn.layer.cornerRadius = self.EnregisterBtn.frame.height/2

        // Do any additional setup after loading the view.
    }
    
    @IBAction func BackBtnOnPressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }

   

}
