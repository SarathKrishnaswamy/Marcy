//
//  MultipleImagesViewController.swift
//  Marcy
//
//  Created by J.Sarath Krishnaswamy on 30/08/21.
//

import UIKit

class MultipleImagesViewController: UIViewController {

    @IBOutlet weak var TableView: UITableView!
    var comment_image = [UIImage(named: ""),UIImage(named: "comment"),UIImage(named: "comment_1")]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func BackBtnOnPressed(_ sender: Any) {
        if let parent = self.parent as? MainViewController {
            parent.home()
        }
    }
    

}
extension MultipleImagesViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "Notification_1TableViewCell", for: indexPath) as! Notification_1TableViewCell
            return cell
        }
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "Notification_2TableViewCell", for: indexPath) as! Notification_2TableViewCell
            cell.ThumbnailImage.image = comment_image[indexPath.row]
            return cell
        }
    }
    
    
}
