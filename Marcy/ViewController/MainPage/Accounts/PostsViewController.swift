//
//  PostsViewController.swift
//  Marcy
//
//  Created by J.Sarath Krishnaswamy on 25/08/21.
//

import UIKit

class PostsViewController: UIViewController {

    @IBOutlet weak var TableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

   

}

extension PostsViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PoatsTableViewCell", for: indexPath) as! PoatsTableViewCell
        return cell
    }
    
    
}
