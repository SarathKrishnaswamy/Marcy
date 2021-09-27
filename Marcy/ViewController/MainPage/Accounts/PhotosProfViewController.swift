//
//  PhotosProfViewController.swift
//  Marcy
//
//  Created by J.Sarath Krishnaswamy on 24/09/21.
//

import UIKit

class PhotosProfViewController: UIViewController {

    @IBOutlet weak var TableView: UITableView!
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

  //CountryGrpTableViewCell
    

}

extension PhotosProfViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CountryGrpTableViewCell", for: indexPath) as! CountryGrpTableViewCell
        return cell
    }
    
    
}
