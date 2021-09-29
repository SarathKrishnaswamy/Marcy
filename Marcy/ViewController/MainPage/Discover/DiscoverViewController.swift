//
//  DiscoverViewController.swift
//  Marcy
//
//  Created by J.Sarath Krishnaswamy on 22/08/21.
//

import UIKit

class DiscoverViewController: UIViewController {

    
    @IBOutlet weak var TableView: UITableView!
    
    var story_image = [UIImage(named: "Item"),UIImage(named: "Item_2"),UIImage(named: "Item_live"),UIImage(named: "Item_audio")]
    var pop_image = [UIImage(named: "groupe1"),UIImage(named: "groupe2"),UIImage(named: "groupe3"),UIImage(named: "groupe4")]
    var Loc_images = [UIImage(named: "Loc_1"),UIImage(named: "Loc_2"),UIImage(named: "Loc_3"),UIImage(named: "Loc_4"),UIImage(named: "senegal_flag")]
    var frnd_bday = [UIImage(named: "userBday1"),UIImage(named: "userBday2"),UIImage(named: "userBday3"),UIImage(named: "userBday4"),UIImage(named: "userBday5")]
    var friend_request = [UIImage(named: "Add1"),UIImage(named: "Add2"),UIImage(named: "Add3"),UIImage(named: "Add4"),UIImage(named: "Add5")]
    var pop_page_image = [UIImage(named: "NN"),UIImage(named: "Aj+francis"),UIImage(named: "LeMonde"),UIImage(named: "femme"),UIImage(named: "jenueAfrique")]
    
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

extension DiscoverViewController:UITableViewDelegate,UITableViewDataSource,UICollectionViewDelegate,UICollectionViewDataSource,UIImagePickerControllerDelegate,UINavigationControllerDelegate{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 13
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = tableView.dequeueReusableCell(withIdentifier: "HeaderTableViewCell") as! HeaderTableViewCell
        return headerView
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "WhatsOnTableViewCell", for: indexPath) as! WhatsOnTableViewCell
            return cell
        }
        else if indexPath.row == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "StoriesTableViewCell", for: indexPath) as! StoriesTableViewCell
            cell.SeeAllBtn.addTarget(self, action: #selector(stories(_:)), for: .touchUpInside)
            cell.SeeAllBtn.tag = indexPath.row
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
            cell.ThumbnailImage.image = UIImage(named: "post1-2")
            cell.Btn.addTarget(self, action: #selector(commentsPage(_:)), for: .touchUpInside)
            cell.Btn.tag = indexPath.row
            return cell
        }
        else if indexPath.row == 4{
            let cell = tableView.dequeueReusableCell(withIdentifier: "Feed_1TableViewCell", for: indexPath) as! Feed_1TableViewCell
            cell.ThumbnailImage.image = UIImage(named: "post2-1")
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
            cell.ThumbnailImage.image = UIImage(named: "post3-1")
            cell.Btn.isHidden = true
            return cell
        }
        else if indexPath.row == 7{
            let cell = tableView.dequeueReusableCell(withIdentifier: "Notification_3TableViewCell", for: indexPath) as! Notification_3TableViewCell
            cell.LblHeading.text = "Today’s friends Birthday"
            cell.CollectionView.tag = indexPath.row
            cell.CollectionView.reloadData()
            return cell
            //
        }
        else if indexPath.row == 8{
            let cell = tableView.dequeueReusableCell(withIdentifier: "Feed_1TableViewCell", for: indexPath) as! Feed_1TableViewCell
            cell.ThumbnailImage.image = UIImage(named: "post4")
            cell.Btn.isHidden = true
            return cell
        }
        else if indexPath.row == 9{
            let cell = tableView.dequeueReusableCell(withIdentifier: "Notification_3TableViewCell", for: indexPath) as! Notification_3TableViewCell
            cell.LblHeading.text = "Friends’suggest"
            cell.CollectionView.tag = indexPath.row
            cell.CollectionView.reloadData()
            return cell
        }
        else if indexPath.row == 10{
            let cell = tableView.dequeueReusableCell(withIdentifier: "Feed_1TableViewCell", for: indexPath) as! Feed_1TableViewCell
            cell.ThumbnailImage.image = UIImage(named: "post5")
            cell.Btn.isHidden = true
            return cell
        }
        else if indexPath.row == 11{
            let cell = tableView.dequeueReusableCell(withIdentifier: "CompaTableViewCell", for: indexPath) as! CompaTableViewCell
            //cell.SeeAllBtn.addTarget(self, action: #selector(Allgroups(_:)), for: .touchUpInside)
            //cell.SeeAllBtn.tag = indexPath.row
            cell.LblHeading.text = "Popular pages"
            cell.Collectionview.tag = indexPath.row
            cell.Collectionview.reloadData()
            return cell
        }
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "Feed_1TableViewCell", for: indexPath) as! Feed_1TableViewCell
            cell.ThumbnailImage.image = UIImage(named: "post6")
            cell.Btn.isHidden = true
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0{
            if let parent = self.parent as? MainViewController{
                parent.create_post()
            }
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0{
          return 70
        }
       else if indexPath.row == 1{
            return 224
        }
        else if indexPath.row == 2{
            return 165
        }
        else if indexPath.row == 3{
            return 610
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
        else if indexPath.row == 11{
            return 174
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
        else if collectionView.tag == 11{
            return pop_page_image.count
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
        else if collectionView.tag == 11{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FriendRequestCollectionViewCell", for: indexPath) as! FriendRequestCollectionViewCell
            cell.ThumbnailImage.image = pop_page_image[indexPath.row]
            return cell
        }
        else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FriendRequestCollectionViewCell", for: indexPath) as! FriendRequestCollectionViewCell
            cell.ThumbnailImage.image = friend_request[indexPath.row]
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView.tag == 1{
            if indexPath.item == 0{
                self.openCamera()
            }
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
    
    @objc func stories(_ sender:UIButton){
        if let parent = self.parent as? MainViewController{
            parent.stories()
        }
    }
    
    
    
    func openCamera()
    {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.camera) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerController.SourceType.camera
            imagePicker.allowsEditing = false
            self.present(imagePicker, animated: true, completion: nil)
        }
        else
        {
            let alert  = UIAlertController(title: "Warning", message: "You don't have camera", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
}
