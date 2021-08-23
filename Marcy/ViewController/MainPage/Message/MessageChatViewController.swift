//
//  MessageChatViewController.swift
//  Marcy
//
//  Created by J.Sarath Krishnaswamy on 20/08/21.
//

import UIKit

class MessageChatViewController: UIViewController {

    @IBOutlet weak var Userimage: UIImageView!
    @IBOutlet weak var OnlineIndicatorView: UIView!
    @IBOutlet weak var TableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.OnlineIndicatorView.layer.cornerRadius = self.OnlineIndicatorView.frame.width/2
        self.OnlineIndicatorView.layer.borderWidth = 1.0
        self.OnlineIndicatorView.layer.borderColor = UIColor.white.cgColor
        self.TableView.delegate = self
        self.TableView.dataSource = self
        self.TableView.reloadData()
    }
    

    @IBAction func BackBtnOnPresseed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    

}

extension MessageChatViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "MessageClientTableViewCell", for: indexPath) as! MessageClientTableViewCell
            return cell
        }
        else if indexPath.row == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "MessageUserTableViewCell", for: indexPath) as! MessageUserTableViewCell
            return cell
            
        }
        else if indexPath.row == 2{
            let cell = tableView.dequeueReusableCell(withIdentifier: "MessageJustNowTableViewCell", for: indexPath) as! MessageJustNowTableViewCell
            return cell
            
        }
        else if indexPath.row == 3{
            let cell = tableView.dequeueReusableCell(withIdentifier: "MessageClientTableViewCell", for: indexPath) as! MessageClientTableViewCell
            return cell
            
        }
        else if indexPath.row == 4{
            let cell = tableView.dequeueReusableCell(withIdentifier: "MessageUserTableViewCell", for: indexPath) as! MessageUserTableViewCell
            return cell
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MessageAudioTableViewCell", for: indexPath) as! MessageAudioTableViewCell
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0{
            return 105
        }
        else if indexPath.row == 1{
            return 105
        }
        else if indexPath.row == 2{
            return 44
        }
        else if indexPath.row == 3{
            return 105
        }
        else if indexPath.row == 4{
            return 105
        }
        else{
            return 74
        }
    }
    
}
