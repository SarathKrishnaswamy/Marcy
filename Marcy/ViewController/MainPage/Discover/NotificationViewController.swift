//
//  NotificationViewController.swift
//  Marcy
//
//  Created by J.Sarath Krishnaswamy on 29/08/21.
//

import UIKit

class NotificationViewController: UIViewController {

    @IBOutlet weak var TableView: UITableView!
    var Notifi_image = [UIImage(named: "notification_1"),UIImage(named: "notification_2")]
    var friend_request = [UIImage(named: "user1"),UIImage(named: "user2"),UIImage(named: "user3"),UIImage(named: "user4"),UIImage(named: "user5")]
    
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
extension NotificationViewController: UITableViewDelegate,UITableViewDataSource,UICollectionViewDelegate,UICollectionViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "Notification_1TableViewCell", for: indexPath) as! Notification_1TableViewCell
            cell.Thumbnailimage.image = Notifi_image[0]
            return cell
        }
        else if indexPath.row == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "Notification_1TableViewCell", for: indexPath) as! Notification_1TableViewCell
            cell.Thumbnailimage.image = Notifi_image[1]
            return cell
        }
        else if indexPath.row == 2{
            let cell = tableView.dequeueReusableCell(withIdentifier: "Notification_2TableViewCell", for: indexPath) as! Notification_2TableViewCell
            return cell
        }
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "Notification_3TableViewCell", for: indexPath) as! Notification_3TableViewCell
            cell.CollectionView.tag = indexPath.row
            cell.CollectionView.reloadData()
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 3{
            return 208
        }
        else{
            return UITableView.automaticDimension
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return friend_request.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FriendRequestCollectionViewCell", for: indexPath) as! FriendRequestCollectionViewCell
        cell.ThumbnailImage.image = friend_request[indexPath.row]
        return cell
    }
    
    
    
    
}
