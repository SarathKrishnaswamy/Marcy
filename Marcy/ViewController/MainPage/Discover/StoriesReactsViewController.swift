//
//  StoriesReactsViewController.swift
//  Marcy
//
//  Created by J.Sarath Krishnaswamy on 31/08/21.
//

import UIKit

class StoriesReactsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func CloseBtnOnPressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
