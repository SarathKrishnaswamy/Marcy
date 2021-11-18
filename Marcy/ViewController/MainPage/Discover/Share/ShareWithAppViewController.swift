//
//  ShareWithAppViewController.swift
//  Marcy
//
//  Created by J.Sarath Krishnaswamy on 17/11/21.
//

import UIKit

class ShareWithAppViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.share()
        }
   
        
    }
    
    func share(){
        // Do any additional setup after loading the view.
        let objectsToShare = ["Freece"] as [Any] //comment!, imageData!, myWebsite!]
        
        let activityVC = UIActivityViewController(activityItems: objectsToShare, applicationActivities: nil)
        
        activityVC.setValue("Video", forKey: "subject")
        activityVC.completionWithItemsHandler = { activity, success, items, error in
            if success {
             // Success handling here
               // print("Success handling here")
                self.dismiss(animated: true, completion: nil)
            }
           }
        
        //New Excluded Activities Code
        if #available(iOS 9.0, *) {
            activityVC.excludedActivityTypes = [UIActivity.ActivityType.airDrop, UIActivity.ActivityType.addToReadingList, UIActivity.ActivityType.assignToContact, UIActivity.ActivityType.mail, UIActivity.ActivityType.message, UIActivity.ActivityType.openInIBooks, UIActivity.ActivityType.postToTencentWeibo, UIActivity.ActivityType.postToVimeo, UIActivity.ActivityType.postToWeibo, UIActivity.ActivityType.print]
        } else {
            // Fallback on earlier versions
            activityVC.excludedActivityTypes = [UIActivity.ActivityType.airDrop, UIActivity.ActivityType.addToReadingList, UIActivity.ActivityType.assignToContact, UIActivity.ActivityType.mail, UIActivity.ActivityType.message, UIActivity.ActivityType.postToTencentWeibo, UIActivity.ActivityType.postToVimeo, UIActivity.ActivityType.postToWeibo, UIActivity.ActivityType.print ]
        }
        
        
        self.present(activityVC, animated: true) {
            //self.dismiss(animated: true, completion: nil)
        }
    }
    

    @IBAction func BackBtnOnPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    

}
