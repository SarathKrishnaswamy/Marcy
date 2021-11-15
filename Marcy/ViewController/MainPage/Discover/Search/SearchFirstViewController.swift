//
//  SearchFirstViewController.swift
//  Marcy
//
//  Created by J.Sarath Krishnaswamy on 27/10/21.
//

import UIKit

class SearchFirstViewController: UIViewController {

    @IBOutlet var TableView: UITableView!
    @IBOutlet var SearchButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.SearchButton.layer.cornerRadius = 10.0
    }
    

    @IBAction func SearchButtonOnPressed(_ sender: Any) {
        if let parent = self.parent as? MainViewController {
            parent.search_page()
        }
    }
    
    @IBAction func BackBtnOnPressed(_ sender: Any) {
        if let parent = self.parent as? MainViewController {
            parent.home()
        }
    }
    
}
extension SearchFirstViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomCell
        return cell
    }
    
    
}

class CustomCell : UITableViewCell{
    @IBOutlet var ThumbImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
   
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
