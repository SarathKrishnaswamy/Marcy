//
//  MessagesViewController.swift
//  Marcy
//
//  Created by Marcy on 18/08/21.
//

import UIKit

class MessagesViewController: UIViewController {

    @IBOutlet weak var TableView: UITableView!
    
    var fu_image = [UIImage(named: "fU_1"),UIImage(named: "fU_2"),UIImage(named: "fU_3"),UIImage(named: "fU_4"),UIImage(named: "fU_5"),UIImage(named: "fU_6")]
    var border_width = [2.0,0,2.0,2.0,0,0]
    var online = [false,true,false,false,true,true]
    var name = ["Dianne","Wisteria","Fleece","Hilary","Parsley","Brian"]
    
    var user_name = ["Gunther","Gunther","Burgundy","Hugh","Ingrid","Pamela","Girth"]
    var mins = ["15 min","15 min","32 min","1 hour","5 hour","Mon","Tue"]
    var msg_count = ["1","1","2","0","0","0","0"]
    var online_msg = [false,false,false,false,true,true,true]
    var desc_text = ["Quisque blandit arcu quis turpis tincidunt facilisis…","Sed ligula erat, dignissim sit at amet dictum id, iaculis… ","Quisque blandit arcu quis turpis tincidunt facilisis…","Sed ligula erat, dignissim sit at amet dictum id, iaculis… ","Duis eget nibh tincidunt odio id venenatis ornare quis…","Curabitur elementum orci vitae turpis vulputate…","Donec ut lorem tristique dui sit faucibus tincidunt….","Cras felis dui, facilisis sit amet dolor ac, tincidunt…"]
    var user_image = [UIImage(named: "user_1"),UIImage(named: "user_1"),UIImage(named: "user_2"),UIImage(named: "user_3"),UIImage(named: "user_4"),UIImage(named: "user_5"),UIImage(named: "user_6")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

   

}

extension MessagesViewController :UITableViewDelegate,UITableViewDataSource,UICollectionViewDelegate,UICollectionViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 7
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "FrequentUserTableViewCell", for: indexPath) as! FrequentUserTableViewCell
            cell.Collectionview.tag = indexPath.row
            cell.Collectionview.delegate = self
            cell.Collectionview.dataSource = self
            cell.Collectionview.reloadData()
            return cell
        }
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ChatuserTableViewCell", for: indexPath) as! ChatuserTableViewCell
            cell.ChatOnlineView.isHidden = online_msg[indexPath.row]
            let count = msg_count[indexPath.row]
            if count == "0"{
                cell.MsgcountView.isHidden = true
            }
            else{
                cell.MsgcountView.isHidden = false
                cell.MsgcountLbl.text = count
            }
            cell.TimeLbl.text = mins[indexPath.row]
            cell.UserImage.image = user_image[indexPath.row]
            cell.UserNameLbl.text = user_name[indexPath.row]
            cell.UserMsgLbl.text = desc_text[indexPath.row]
            
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 1{
            let vc = storyboard?.instantiateViewController(withIdentifier: "MessageChatViewController") as! MessageChatViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0{
            return 90
        }
        else{
            return 90
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView.tag == 0{
            return fu_image.count
        }
        else{
            return 0 
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView.tag == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FrequentUserCollectionViewCell", for: indexPath) as! FrequentUserCollectionViewCell
            cell.OnlineView.isHidden = online[indexPath.row]
            cell.UserImage.image = fu_image[indexPath.row]
            cell.StoryView.layer.borderWidth = CGFloat(border_width[indexPath.row])
            cell.FrequentUsernameLbl.text = name[indexPath.row]
            print(cell.FrequentUsernameLbl.text)
            return cell
        }
        else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FrequentUserCollectionViewCell", for: indexPath) as! FrequentUserCollectionViewCell
            cell.OnlineView.isHidden = online[indexPath.row]
            cell.UserImage.image = fu_image[indexPath.row]
            cell.StoryView.layer.borderWidth = CGFloat(border_width[indexPath.row])
            cell.FrequentUsernameLbl.text = name[indexPath.row]
            return cell
        }
    }
    
   
}


