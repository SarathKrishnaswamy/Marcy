//
//  ShareViewController.swift
//  Marcy
//
//  Created by J.Sarath Krishnaswamy on 21/10/21.
//

import UIKit

class ShareViewController: UIViewController {

    @IBOutlet weak var SendBtn: UIButton!
    @IBOutlet weak var SearchView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.SendBtn.layer.cornerRadius = self.SendBtn.frame.height/2
        self.SearchView.layer.cornerRadius = 16.0
        print(self.SearchView.frame.origin.y)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    
    }
    

    
    @IBAction func CancelBtnOnPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            if self.SearchView.frame.origin.y == self.SearchView.frame.origin.y {
                self.SearchView.frame.origin.y -= keyboardSize.height
            }
        }
    }

    @objc func keyboardWillHide(notification: NSNotification) {
        if self.SearchView.frame.origin.y != 0 {
            self.SearchView.frame.origin.y = self.SearchView.frame.origin.y
        }
    }
    
}
