//
//  UserProfileInformationViewController.swift
//  Marcy
//
//  Created by J.Sarath Krishnaswamy on 31/08/21.
//

import UIKit

class UserProfileInformationViewController: UIViewController {

    @IBOutlet weak var TableView: UITableView!
    
    var group_image = [UIImage(named: "Group_1"), UIImage(named: "Group_2"), UIImage(named: "Group_3"),UIImage(named: "Group_4"), UIImage(named: "Group_5")]
    var group_name = ["Every Coast", "✈️To Africa", "Students", "African food", "Finance"]
    
    var friend_image = [UIImage(named: "Friend_1"),UIImage(named: "Friend_2"),UIImage(named: "Friend_3"),UIImage(named: "Friend_4"),UIImage(named: "Friend_5"),UIImage(named: "Friend_6")]
    var friend_name = ["Jeff","Alain","Jessica","Elodie","Sonia","Antoine"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


}
extension UserProfileInformationViewController: UITableViewDelegate,UITableViewDataSource,UICollectionViewDelegate,UICollectionViewDataSource{
   
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return 1
        }
        else if section == 1{
            return 1
        }
        else if section == 2{
            return 1
        }
        else{
            return 1
        }
       
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "InformationDescTableViewCell", for: indexPath) as! InformationDescTableViewCell
            return cell
        }
        else if indexPath.section == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "InterestsTableViewCell", for: indexPath) as! InterestsTableViewCell
            //cell.EditBtn.addTarget(self, action: #selector(editPressed(_:)), for: .touchUpInside)
            return cell
        }
        else if indexPath.section == 2{
            let cell = tableView.dequeueReusableCell(withIdentifier: "AccountGroupsTableViewCell", for: indexPath) as! AccountGroupsTableViewCell
            cell.LblHeading.text = "Groups"
            cell.CollectionView.tag = indexPath.section
            cell.CollectionView.reloadData()
            return cell
        }
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "AccountGroupsTableViewCell", for: indexPath) as! AccountGroupsTableViewCell
            cell.LblHeading.text = "Friends"
            cell.CollectionView.tag = indexPath.section
            cell.CollectionView.reloadData()
            return cell
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0{
         return 100
        }
        else if indexPath.section == 1{
           return 96
        }
        else{
           return 145
        }
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView.tag == 2{
            return 5
        }
        else{
            return 6
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView.tag == 2{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GroupsCollectionViewCell", for: indexPath) as! GroupsCollectionViewCell
            cell.ThumbnailImage.image = group_image[indexPath.row]
            //cell.ThumbnailImage.dropShadow(color: UIColor.black, opacity: 0.2, offSet: CGSize(width: 1.0, height: 0.0), radius: 20.0, scale: true)
            cell.LblGroup.text = group_name[indexPath.row]
            return cell
        }
        else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GroupsCollectionViewCell", for: indexPath) as! GroupsCollectionViewCell
            cell.ThumbnailImage.image = friend_image[indexPath.row]
            //cell.ThumbnailImage.dropShadow(color: UIColor.black, opacity: 0.5, offSet: CGSize(width: 1.0, height: 0.0), radius: 20, scale: false)
            cell.LblGroup.text = friend_name[indexPath.row]
            return cell
        }
    }
    
}
