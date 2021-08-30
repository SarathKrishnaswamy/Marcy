//
//  CreatePostViewController.swift
//  Marcy
//
//  Created by J.Sarath Krishnaswamy on 30/08/21.
//

import UIKit

class CreatePostViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func CloseBtnOnPressed(_ sender: Any) {
        if let parent = self.parent as? MainViewController{
            parent.home()
        }
    }
    

}
