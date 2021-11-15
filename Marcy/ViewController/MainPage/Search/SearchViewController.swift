//
//  SearchViewController.swift
//  Marcy
//
//  Created by J.Sarath Krishnaswamy on 22/08/21.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var TableView: UITableView!
    @IBOutlet var SearchBar: UISearchBar!
    
    var user_image = [UIImage(named: "fU_4"), UIImage(named: "fU_1"), UIImage(named: "fU_5"), UIImage(named: "fU_7"), UIImage(named: "fU_8"), UIImage(named: "fU_9")]
    var user_name = ["Inverness McKenzie", "Archibald Northbottom", "Dylan Meringue", "Natalya Undergrowth", "Chauffina Carr", "Burgundy Flemming"]
    var user_subtitle = ["You’re friend on instagram","You’re friend on twitter", "You’re friend on facebook", "You’re friend on facebook", "You’re friend on twitter", "You’re friend on instagram"]
    var follow_image = [UIImage(named: "Following"),UIImage(named: "Add_user"),UIImage(named: "Add_user"),UIImage(named: "Add_user"),UIImage(named: "Following"),UIImage(named: "Following")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.TableView.tableFooterView = UIView()
        //self.SearchBar.becomeFirstResponder()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("Appearing")
    }

    @IBAction func BackBtnOnPressed(_ sender: Any) {
        if let parent = self.parent as? MainViewController {
            parent.home()
        }
    }
    
    
    @IBAction func CancelBtnOnPressed(_ sender: Any) {
        self.SearchBar.resignFirstResponder()
        if let parent = self.parent as? MainViewController {
            parent.first_search_page()
        }
    }
    
}

extension SearchViewController:UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return user_name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchTableViewCell", for: indexPath) as! SearchTableViewCell
        cell.AddImage.image = follow_image[indexPath.row]
        cell.UserImage.image = user_image[indexPath.row]
        cell.UserNameLbl.text = user_name[indexPath.row]
        cell.UserSubtitle.text = user_subtitle[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }
    
}
