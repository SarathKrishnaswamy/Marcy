//
//  CountryGrpViewController.swift
//  Marcy
//
//  Created by J.Sarath Krishnaswamy on 30/08/21.
//

import UIKit
import MXParallaxHeader

class CountryGrpViewController: UIViewController {

    @IBOutlet weak var TableView: UITableView!
    @IBOutlet weak var BgView: UIView!
    @IBOutlet weak var stickyHeaderView: UIView!
    @IBOutlet weak var Collectionview: UICollectionView!
    @IBOutlet weak var TababraView: UIView!
    @IBOutlet weak var PostsBtn: UIButton!
    @IBOutlet weak var PhotosBtn: UIButton!
    @IBOutlet weak var VideosBtn: UIButton!
    @IBOutlet weak var PostIndicator: UILabel!
    @IBOutlet weak var PhotosIndicator: UILabel!
    @IBOutlet weak var VideosIndicator: UILabel!
    
    var post_item = [UIImage(named: "post-1"),UIImage(named: "post2-1"),UIImage(named: "Barbie")]
    var post_1_item = [UIImage(named: "photos")]
    var post_2_item = [UIImage(named: "videos")]
    var photos = [UIImage(named: "All kids"),UIImage(named: "Beach Day"), UIImage(named: "cannes"), UIImage(named: "Atl"), UIImage(named: "travel"), UIImage(named: "foods")]
    var table_id = 1
    var numberOfCells = 50
    var current_cat = Int()
    var posts = 1
    var photos_cat = 2
    var videos = 3
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        reset()
        self.PostsBtn.setTitleColor(UIColor(hexString: "#DBAC40"), for: .normal)
        self.PostIndicator.isHidden = false
        self.current_cat = 1

        // Do any additional setup after loading the view.
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
       
        BgView.clipsToBounds = true
        BgView.layer.cornerRadius = 30
        BgView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner] // Top right corner, Top left corner respectively
    }
    
    //MARK: View Setup
    
    func reset(){
        self.PostIndicator.isHidden = true
        self.PhotosIndicator.isHidden = true
        self.VideosIndicator.isHidden = true
        self.PostsBtn.setTitleColor(UIColor(hexString: "#8A8A8F"), for: .normal)
        self.PhotosBtn.setTitleColor(UIColor(hexString: "#8A8A8F"), for: .normal)
        self.VideosBtn.setTitleColor(UIColor(hexString: "#8A8A8F"), for: .normal)
    }
    
    
    func setupTableView() {
        
        TableView.register(UINib(nibName: "TabItemTableViewCell", bundle: nil),
                           forCellReuseIdentifier: "TabItemTableViewCell")
        TableView.dataSource = self
        TableView.delegate = self
        TableView.estimatedRowHeight = 44
        
        TableView.contentInset = UIEdgeInsets(top: stickyHeaderView.bounds.height + TababraView.bounds.height,
                                              left: 0,
                                              bottom: 0,
                                              right: 0)
    }
    
    

    @IBAction func BackBtnOnPressed(_ sender: Any) {
        if let parent = self.parent as? MainViewController{
            parent.countries_page()
        }
    }
    
    
    @IBAction func PostsBtnOnPressed(_ sender: Any) {
        reset()
        self.PostsBtn.setTitleColor(UIColor(hexString: "#DBAC40"), for: .normal)
        self.PostIndicator.isHidden = false
        self.current_cat = 1
        self.TableView.reloadData()
    }
    
    
    
    @IBAction func PhotosBtnOnPressed(_ sender: Any) {
        reset()
        self.PhotosBtn.setTitleColor(UIColor(hexString: "#DBAC40"), for: .normal)
        self.PhotosIndicator.isHidden = false
        self.current_cat = 2
        self.TableView.reloadData()
    }
    
    
    
    @IBAction func VideosBtnOnPressed(_ sender: Any) {
        reset()
        self.VideosBtn.setTitleColor(UIColor(hexString: "#DBAC40"), for: .normal)
        self.VideosIndicator.isHidden = false
        self.current_cat = 3
        self.TableView.reloadData()
    }
    
    
}
extension CountryGrpViewController:UITableViewDelegate,UITableViewDataSource,UICollectionViewDelegate, UICollectionViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if current_cat == posts{
            return post_item.count
        }
        else if current_cat == photos_cat{
            return post_1_item.count
        }
        else{
            return post_2_item.count
        }
    }
    

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if current_cat == posts{
            if let cell = tableView.dequeueReusableCell(withIdentifier: "TabItemTableViewCell") as? TabItemTableViewCell {
                cell.ThumbImage.image = post_item[indexPath.row]
                return cell
            }
            
            return UITableViewCell()
        }
        else if current_cat == photos_cat{
            if let cell = tableView.dequeueReusableCell(withIdentifier: "TabItemTableViewCell") as? TabItemTableViewCell {
                cell.ThumbImage.image = post_1_item[indexPath.row]
                return cell
            }
            
            return UITableViewCell()
        }
        else{
            if let cell = tableView.dequeueReusableCell(withIdentifier: "TabItemTableViewCell") as? TabItemTableViewCell {
                cell.ThumbImage.image = post_2_item[indexPath.row]
                return cell
            }
            
            return UITableViewCell()
            
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
    
    
    static let offset_HeaderStop: CGFloat = 500 - 64  // At this offset the Header stops its transformations (Header height - Approx Nav Bar Height)
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        if scrollView == TableView{
            let totalOffset = scrollView.contentOffset.y + stickyHeaderView.bounds.height + TababraView.bounds.height
            
            var headerTransform = CATransform3DIdentity // Both Scale and Translate.
            var segmentTransform = CATransform3DIdentity // Translate only.
            
            if totalOffset < 0 {
                
                /*
                 * Table is pulled down below the header.
                 * Animation to transform.
                 */
                
                let headerScaleFactor:CGFloat = -(totalOffset) / stickyHeaderView.bounds.height
                let headerSizevariation = ((stickyHeaderView.bounds.height * (1.0 + headerScaleFactor)) - stickyHeaderView.bounds.height)/2
                headerTransform = CATransform3DTranslate(headerTransform, 0, headerSizevariation, 0)
                headerTransform = CATransform3DScale(headerTransform, 1.0 + headerScaleFactor, 1.0 + headerScaleFactor, 0)
                
            } else {
                
                /*
                 * Table scrolled up or down.
                 */
                
                headerTransform = CATransform3DTranslate(headerTransform, 0, max(-CountryGrpViewController.offset_HeaderStop, -totalOffset), 0)
            }
            
            stickyHeaderView.layer.transform = headerTransform
            
            /*
             *  Scroll the segment view until its offset reaches the same offset at which the header stopped shrinking.
             */
            
            let segmentViewOffset = -totalOffset
            segmentTransform = CATransform3DTranslate(segmentTransform, 0, max(segmentViewOffset, -CountryGrpViewController.offset_HeaderStop), 0)
            TababraView.layer.transform = segmentTransform
        }
    }
    
    
}

