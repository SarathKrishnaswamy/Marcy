//
//  CountryGrpViewController.swift
//  Marcy
//
//  Created by J.Sarath Krishnaswamy on 30/08/21.
//

import UIKit

class CountryGrpViewController: UIViewController {

    @IBOutlet weak var TableView: UITableView!
    @IBOutlet weak var BgView: UIView!
    
    var post_item = [UIImage(named: ""),UIImage(named: "post-1"),UIImage(named: "post2-1"),UIImage(named: "Barbie")]
    var post_1_item = [UIImage(named: ""),UIImage(named: "post-1"),UIImage(named: "post2-1"),UIImage(named: "photos")]
    var post_2_item = [UIImage(named: ""),UIImage(named: "post-1"),UIImage(named: "post2-1"),UIImage(named: "videos")]
    var photos = [UIImage(named: "All kids"),UIImage(named: "Beach Day"), UIImage(named: "cannes"), UIImage(named: "Atl"), UIImage(named: "travel"), UIImage(named: "foods")]
    var table_id = 1
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
       
        BgView.clipsToBounds = true
        BgView.layer.cornerRadius = 30
        BgView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner] // Top right corner, Top left corner respectively
    }
    

    @IBAction func BackBtnOnPressed(_ sender: Any) {
        if let parent = self.parent as? MainViewController{
            parent.countries_page()
        }
    }
}
extension CountryGrpViewController:UITableViewDelegate,UITableViewDataSource,UICollectionViewDelegate, UICollectionViewDataSource{
    
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        else{
            if table_id == 1{
                return post_item.count
            }
            else if table_id == 2{
                return self.post_item.count
            }
            else{
                return post_item.count
            }
        }
    }
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headercell = tableView.dequeueReusableCell(withIdentifier: "CountryHeaderTableViewCell") as! CountryHeaderTableViewCell
        
        headercell.PostBtnTapAction = { post in
            headercell.SelectIndicator.isHidden = false
            headercell.Selectindicator_1.isHidden = true
            headercell.SelectIndicator_2.isHidden = true
            headercell.Postbtn.tintColor = UIColor.init(hexString: "DBAC40")
            headercell.Photosbtn.tintColor = UIColor.init(hexString: "8A8A8F")
            headercell.Videosbtn.tintColor = UIColor.init(hexString: "8A8A8F")
            self.table_id = 1
            let indexes = (0..<self.post_item.count).map { IndexPath(row: $0, section: 1) }
            self.TableView.reloadRows(at: indexes, with: .bottom)
            
        }
        
        headercell.PhotoBtnTapAction = { photo in
            headercell.SelectIndicator.isHidden = true
            headercell.Selectindicator_1.isHidden = false
            headercell.SelectIndicator_2.isHidden = true
            headercell.Postbtn.tintColor = UIColor.init(hexString: "8A8A8F")
            headercell.Photosbtn.tintColor = UIColor.init(hexString: "DBAC40")
            headercell.Videosbtn.tintColor = UIColor.init(hexString: "8A8A8F")
            self.table_id = 2
            let indexes = (0..<self.post_item.count).map { IndexPath(row: $0, section: 1) }
            self.TableView.reloadRows(at: indexes, with: .left)
            
            
        }
        
        headercell.VideosBtnTapAction = { video in
            headercell.SelectIndicator.isHidden = true
            headercell.Selectindicator_1.isHidden = true
            headercell.SelectIndicator_2.isHidden = false
            headercell.Postbtn.tintColor = UIColor.init(hexString: "8A8A8F")
            headercell.Photosbtn.tintColor = UIColor.init(hexString: "8A8A8F")
            headercell.Videosbtn.tintColor = UIColor.init(hexString: "DBAC40")
            self.table_id = 3
            let indexes = (0..<self.post_item.count).map { IndexPath(row: $0, section: 1) }
            self.TableView.reloadRows(at: indexes, with: .left)
            
        }
        
        
       
        return headercell
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            if indexPath.row == 0{
                let cell = tableView.dequeueReusableCell(withIdentifier: "CountryFollowTableViewCell", for: indexPath) as! CountryFollowTableViewCell
                cell.Collectionview.tag = indexPath.row
                cell.Collectionview.delegate = self
                cell.Collectionview.dataSource = self
                cell.Collectionview.reloadData()
                return cell
            }
            else{
                
                let cell = tableView.dequeueReusableCell(withIdentifier: "CountryFollowTableViewCell", for: indexPath) as! CountryFollowTableViewCell
                cell.Collectionview.tag = indexPath.row
                cell.Collectionview.delegate = self
                cell.Collectionview.dataSource = self
                cell.Collectionview.reloadData()
                return cell
                
            }
        }
        else{
            if table_id == 1{
                let cell = tableView.dequeueReusableCell(withIdentifier: "CountryGrpTableViewCell", for: indexPath) as! CountryGrpTableViewCell
                cell.ThumbnailImage.image = post_item[indexPath.row]
                return cell
            }
            else if table_id == 2{
                let cell = tableView.dequeueReusableCell(withIdentifier: "CountryGrpTableViewCell", for: indexPath) as! CountryGrpTableViewCell
                cell.ThumbnailImage.image = post_1_item[indexPath.row]
                return cell
            }
            else{
                let cell = tableView.dequeueReusableCell(withIdentifier: "CountryGrpTableViewCell", for: indexPath) as! CountryGrpTableViewCell
                cell.ThumbnailImage.image = post_2_item[indexPath.row]
                return cell
            }
            
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 1{
            if table_id == 1{
                if indexPath.row == 0{
                    return 0
                }
                else{
                    return UITableView.automaticDimension
                }
            }
            else{
                if indexPath.row == 0{
                    return 0
                }
                else if indexPath.row == 1{
                    return 0
                }
                else if indexPath.row == 2{
                    return 0
                }
                else{
                    return UITableView.automaticDimension
                }
            }
            
        }
        else{
            
            return 279
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0{
            return 0
        }
        else{
            return 44
        }
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotoCountryCollectionViewCell", for: indexPath) as! PhotoCountryCollectionViewCell
        cell.ThumbnailImage.image = photos[indexPath.row]
        return cell
    }
    
}

