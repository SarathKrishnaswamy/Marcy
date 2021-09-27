//
//  OtherAccountViewController.swift
//  Marcy
//
//  Created by J.Sarath Krishnaswamy on 24/09/21.
//

import UIKit

class OtherAccountViewController: UIViewController {

    @IBOutlet weak var TableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func BackBtnOnPressed(_ sender: Any) {
        if let parent = self.parent as? MainViewController{
            parent.settings_page()
        }
    }


}

extension OtherAccountViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileNameTableViewCell", for: indexPath) as! ProfileNameTableViewCell
            return cell
        }
        else if indexPath.row == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProfPvtTableViewCell", for: indexPath) as! ProfPvtTableViewCell
            return cell
        }
        else if indexPath.row == 2{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ProfOtherAccountsTableViewCell", for: indexPath) as! ProfOtherAccountsTableViewCell
            cell.Lbl.textColor = .systemRed
            cell.MoreBtn.isHidden = true
            return cell
        }
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "NoPartTableViewCell", for: indexPath) as! NoPartTableViewCell
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 3{
            return 129
        }
        else{
            return 58
        }
        
    }
    

}
