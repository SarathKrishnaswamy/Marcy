//
//  InterestsViewController.swift
//  Marcy
//
//  Created by J.Sarath Krishnaswamy on 29/08/21.
//

import UIKit

class InterestsViewController: UIViewController {

    @IBOutlet weak var EnregisterBtn: UIButton!
    @IBOutlet weak var TableView: UITableView!
    
    var int_heading = ["1 - Arts", "2 - Tech & Business", "3 - Divertissement", "4 - Sports", "4 - Vie", "5 - Connaissances", "6 - Thèmes du monde", "7 - Bien-être"]
    var int_image = [UIImage(named: "Arts"),UIImage(named: "Tech_business"),UIImage(named: "Divertissement"),UIImage(named: "sports"),UIImage(named: "vie"),UIImage(named: "conai"),UIImage(named: "themes"),UIImage(named: "Bien")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.EnregisterBtn.layer.cornerRadius = self.EnregisterBtn.frame.height/2
        self.TableView.tableFooterView = UIView()
    }
    

    @IBAction func BackBtnOnPressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    

}

extension InterestsViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return int_heading.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AccountsInterestsTableViewCell", for: indexPath) as! AccountsInterestsTableViewCell
        cell.LblHeading.text = int_heading[indexPath.row]
        cell.ThumbnailImage.image = int_image[indexPath.row]
        return cell
    }
    
    
}
