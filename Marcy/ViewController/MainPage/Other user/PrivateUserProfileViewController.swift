//
//  PrivateUserProfileViewController.swift
//  Marcy
//
//  Created by J.Sarath Krishnaswamy on 24/09/21.
//

import UIKit

class PrivateUserProfileViewController: UIViewController {

    var friend_request = [UIImage(named: "user1"),UIImage(named: "user2"),UIImage(named: "user3"),UIImage(named: "user4"),UIImage(named: "user5")]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func BackBtnOnPressed(_ sender: Any) {
        if let parent = self.parent as? MainViewController{
            parent.stories()
        }
    }
    

}
extension PrivateUserProfileViewController:UITableViewDelegate, UITableViewDataSource,UICollectionViewDelegate,UICollectionViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     
        if indexPath.row == 0{
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
        if indexPath.row == 1{
            return 220
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
