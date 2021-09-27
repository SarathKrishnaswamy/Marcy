//
//  VideosProfViewController.swift
//  Marcy
//
//  Created by J.Sarath Krishnaswamy on 24/09/21.
//

import UIKit

class VideosProfViewController: UIViewController {

    @IBOutlet weak var TableView: UITableView!
    
    var items1 = [UIImage(named: "Group 328"),UIImage(named: "Group 330"),UIImage(named: "Group 442")]
    var items2 = [UIImage(named: "Group 328-1"),UIImage(named: "Group 330-1"),UIImage(named: "Group 442-1")]
    var items3 = [UIImage(named: "Group 328-2"),UIImage(named: "Group 330-2"),UIImage(named: "Group 442-2")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

  

}

extension VideosProfViewController:UITableViewDelegate,UITableViewDataSource,UICollectionViewDelegate,UICollectionViewDataSource{
   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideosProfTableViewCell", for: indexPath) as! VideosProfTableViewCell
        cell.CollectionView.reloadData()
        cell.CollectionView.tag = indexPath.row
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 119
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView.tag == 0{
            return 3
        }
        else if collectionView.tag == 1{
            return 3
        }
        else{
            return 3
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView.tag == 0{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "VideosScrollCollectionViewCell", for: indexPath) as! VideosScrollCollectionViewCell
            cell.ThumbnailImage.image = items1[indexPath.row]
            return cell
        }
        else if collectionView.tag == 1{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "VideosScrollCollectionViewCell", for: indexPath) as! VideosScrollCollectionViewCell
            cell.ThumbnailImage.image = items2[indexPath.row]
            return cell
        }
        else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "VideosScrollCollectionViewCell", for: indexPath) as! VideosScrollCollectionViewCell
            cell.ThumbnailImage.image = items3[indexPath.row]
            return cell
        }
    }
    
    
}
