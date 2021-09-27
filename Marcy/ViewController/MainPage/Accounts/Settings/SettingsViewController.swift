//
//  SettingsViewController.swift
//  Marcy
//
//  Created by J.Sarath Krishnaswamy on 24/08/21.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var TableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.TableView.tableFooterView = UIView()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func BackBtnOnPressed(_ sender: Any) {
        if let parent = self.parent as? MainViewController{
            parent.account()
        }
    }
    
    
    
}

extension SettingsViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileNameTableViewCell", for: indexPath) as! ProfileNameTableViewCell
            return cell
        }
        else if indexPath.row == 4{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileLogoutTableViewCell", for: indexPath) as! ProfileLogoutTableViewCell
            return cell
        }
        else if indexPath.row == 5{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProfPvtTableViewCell", for: indexPath) as! ProfPvtTableViewCell
            return cell
        }
        else if indexPath.row == 6{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProfOtherAccountsTableViewCell", for: indexPath) as! ProfOtherAccountsTableViewCell
            return cell
        }
        else if indexPath.row == 7{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProfAddmoreTableViewCell", for: indexPath) as! ProfAddmoreTableViewCell
            return cell
        }
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileMailTableViewCell", for: indexPath) as! ProfileMailTableViewCell
            let head = ["Mail", "Country", "Language"]
            let sub = ["sarah.tolita@gmail.com", "France" , "English"]
            if indexPath.row == 1{
                cell.LblHeading.text = head[0]
                cell.LblSubHeading.text = sub[0]
            }
            if indexPath.row == 2{
                cell.LblHeading.text = head[1]
                cell.LblSubHeading.text = sub[1]
            }
            if indexPath.row == 3{
                cell.LblHeading.text = head[2]
                cell.LblSubHeading.text = sub[2]
            }
           
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 58
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 6{
            //other_settings_page()
            if let parent = self.parent as? MainViewController{
                parent.other_settings_page()
            }
        }
    }
    
    
    
}
