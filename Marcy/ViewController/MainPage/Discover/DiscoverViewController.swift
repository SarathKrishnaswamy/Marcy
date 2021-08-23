//
//  DiscoverViewController.swift
//  Marcy
//
//  Created by J.Sarath Krishnaswamy on 22/08/21.
//

import UIKit

class DiscoverViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func SearchBtnOnPressed(_ sender: Any) {
        if let parent = self.parent as? MainViewController {
            parent.search_page()
        }
    }
    

}
