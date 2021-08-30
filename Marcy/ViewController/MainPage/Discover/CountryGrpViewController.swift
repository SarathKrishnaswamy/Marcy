//
//  CountryGrpViewController.swift
//  Marcy
//
//  Created by J.Sarath Krishnaswamy on 30/08/21.
//

import UIKit

class CountryGrpViewController: UIViewController {

    @IBOutlet weak var TableView: UITableView!
    
    var post_item = [UIImage(named: "post1-1"),UIImage(named: "post2"),UIImage(named: "post3")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func BackBtnOnPressed(_ sender: Any) {
        if let parent = self.parent as? MainViewController{
            parent.countries_page()
        }
    }
}
extension CountryGrpViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return post_item.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CountryGrpTableViewCell", for: indexPath) as! CountryGrpTableViewCell
        cell.ThumbnailImage.image = post_item[indexPath.row]
        return cell
    }
    
    
}

