//
//  DiscoverViewController.swift
//  Marcy
//
//  Created by J.Sarath Krishnaswamy on 22/08/21.
//

import UIKit

class DiscoverViewController: UIViewController {

    
    @IBOutlet weak var TableView: UITableView!
    
    var story_image = [UIImage(named: "Item_1"),UIImage(named: "Item_2"),UIImage(named: "Item_3"),UIImage(named: "Item_4")]
    var pop_image = [UIImage(named: "groupe1"),UIImage(named: "groupe2"),UIImage(named: "groupe3"),UIImage(named: "groupe4")]
    var Loc_images = [UIImage(named: "Loc_1"),UIImage(named: "Loc_2"),UIImage(named: "Loc_3"),UIImage(named: "Loc_4"),UIImage(named: "Loc_5")]
    var frnd_bday = [UIImage(named: "userBday1"),UIImage(named: "userBday2"),UIImage(named: "userBday3"),UIImage(named: "userBday4"),UIImage(named: "userBday5")]
    var friend_request = [UIImage(named: "Add1"),UIImage(named: "Add2"),UIImage(named: "Add3"),UIImage(named: "Add4"),UIImage(named: "Add5")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    
    

    @IBAction func SearchBtnOnPressed(_ sender: Any) {
        if let parent = self.parent as? MainViewController {
            parent.search_page()
        }
    }
    
    
    @IBAction func NotificationBtnOnPressed(_ sender: Any) {
        if let parent = self.parent as? MainViewController {
            parent.Notif_page()
        }
    }
    

}

extension DiscoverViewController:UITableViewDelegate,UITableViewDataSource,UICollectionViewDelegate,UICollectionViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 12
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "WhatsOnTableViewCell", for: indexPath) as! WhatsOnTableViewCell
            return cell
        }
        else if indexPath.row == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "StoriesTableViewCell", for: indexPath) as! StoriesTableViewCell
            cell.CollectionView.tag = indexPath.row
            cell.CollectionView.reloadData()
            return cell
        }
        else if indexPath.row == 2{
            let cell = tableView.dequeueReusableCell(withIdentifier: "PopularGroupsTableViewCell", for: indexPath) as! PopularGroupsTableViewCell
            cell.SeeAllBtn.addTarget(self, action: #selector(Allgroups(_:)), for: .touchUpInside)
            cell.SeeAllBtn.tag = indexPath.row
            cell.Collectionview.tag = indexPath.row
            cell.Collectionview.reloadData()
            return cell
        }
        else if indexPath.row == 3{
            let cell = tableView.dequeueReusableCell(withIdentifier: "Feed_1TableViewCell", for: indexPath) as! Feed_1TableViewCell
            cell.Btn.addTarget(self, action: #selector(commentsPage(_:)), for: .touchUpInside)
            cell.Btn.tag = indexPath.row
            return cell
        }
        else if indexPath.row == 4{
            let cell = tableView.dequeueReusableCell(withIdentifier: "Feed_1TableViewCell", for: indexPath) as! Feed_1TableViewCell
            cell.ThumbnailImage.image = UIImage(named: "Feed2")
            cell.Btn.isHidden = true
            return cell
        }
        else if indexPath.row == 5{
            let cell = tableView.dequeueReusableCell(withIdentifier: "CompaTableViewCell", for: indexPath) as! CompaTableViewCell
            cell.SeeAllBtn.addTarget(self, action: #selector(AllCommunities(_:)), for: .touchUpInside)
            cell.SeeAllBtn.tag = indexPath.row
            cell.Collectionview.tag = indexPath.row
            cell.Collectionview.reloadData()
            return cell
        }
        else if indexPath.row == 6{
            let cell = tableView.dequeueReusableCell(withIdentifier: "Feed_1TableViewCell", for: indexPath) as! Feed_1TableViewCell
            cell.ThumbnailImage.image = UIImage(named: "Feed3")
            cell.Btn.isHidden = true
            return cell
        }
        else if indexPath.row == 7{
            let cell = tableView.dequeueReusableCell(withIdentifier: "Notification_3TableViewCell", for: indexPath) as! Notification_3TableViewCell
            cell.CollectionView.tag = indexPath.row
            cell.CollectionView.reloadData()
            return cell
            //
        }
        else if indexPath.row == 8{
            let cell = tableView.dequeueReusableCell(withIdentifier: "Feed_1TableViewCell", for: indexPath) as! Feed_1TableViewCell
            cell.ThumbnailImage.image = UIImage(named: "Feed4")
            cell.Btn.isHidden = true
            return cell
        }
        else if indexPath.row == 9{
            let cell = tableView.dequeueReusableCell(withIdentifier: "Notification_3TableViewCell", for: indexPath) as! Notification_3TableViewCell
            cell.CollectionView.tag = indexPath.row
            cell.CollectionView.reloadData()
            return cell
        }
        else if indexPath.row == 10{
            let cell = tableView.dequeueReusableCell(withIdentifier: "Feed_1TableViewCell", for: indexPath) as! Feed_1TableViewCell
            cell.ThumbnailImage.image = UIImage(named: "Feed5")
            cell.Btn.isHidden = true
            return cell
        }
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "Feed_1TableViewCell", for: indexPath) as! Feed_1TableViewCell
            cell.ThumbnailImage.image = UIImage(named: "Feed6")
            cell.Btn.isHidden = true
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0{
          return 70
        }
       else if indexPath.row == 1{
            return 214
        }
        else if indexPath.row == 2{
            return 170
        }
        else if indexPath.row == 3{
            return 542
        }
        else if indexPath.row == 4{
            return UITableView.automaticDimension
        }
        else if indexPath.row == 5{
            return 174
        }
        else if indexPath.row == 5{
            return UITableView.automaticDimension
        }
        else if indexPath.row == 6{
            return UITableView.automaticDimension
        }
        else if indexPath.row == 7{
            return 208
        }
        else if indexPath.row == 8 {
            return UITableView.automaticDimension
        }
        else if indexPath.row == 9{
            return 208
        }
        else{
            return UITableView.automaticDimension
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView.tag == 1{
            return story_image.count
        }
        else if collectionView.tag == 2{
            return pop_image.count
        }
        else if collectionView.tag == 5{
            return Loc_images.count
        }
        else if collectionView.tag == 7{
            return frnd_bday.count
        }
        else{
            return friend_request.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView.tag == 1{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StoriesCollectionViewCell", for: indexPath) as! StoriesCollectionViewCell
            cell.ThumbnailImage.image = story_image[indexPath.row]
            return cell
        }
        else if collectionView.tag == 2{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PopGroupsCollectionViewCell", for: indexPath) as! PopGroupsCollectionViewCell
            cell.ThumbnailImage.image = pop_image[indexPath.row]
            return cell
        }
        else if collectionView.tag == 5{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FriendRequestCollectionViewCell", for: indexPath) as! FriendRequestCollectionViewCell
            cell.ThumbnailImage.image = Loc_images[indexPath.row]
            return cell
        }
        else if collectionView.tag == 7{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FriendRequestCollectionViewCell", for: indexPath) as! FriendRequestCollectionViewCell
            cell.ThumbnailImage.image = frnd_bday[indexPath.row]
            return cell
        }
        else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FriendRequestCollectionViewCell", for: indexPath) as! FriendRequestCollectionViewCell
            cell.ThumbnailImage.image = friend_request[indexPath.row]
            return cell
        }
    }
    
    @objc func commentsPage(_ sender:UIButton){
        if let parent = self.parent as? MainViewController{
            parent.Comment_page()
        }
    }
    
    @objc func Allgroups(_ sender:UIButton){
        if let parent = self.parent as? MainViewController{
            parent.groups_page()
        }
    }
    
    @objc func AllCommunities(_ sender:UIButton){
        if let parent = self.parent as? MainViewController{
            parent.countries_page()
        }
    }
}
