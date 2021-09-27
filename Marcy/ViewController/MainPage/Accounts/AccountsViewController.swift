//
//  AccountsViewController.swift
//  Marcy
//
//  Created by J.Sarath Krishnaswamy on 24/08/21.
//

import UIKit

class AccountsViewController: UIViewController {

    
   
    @IBOutlet weak var ContainerView: UIView!
    @IBOutlet weak var ContainerView_2: UIView!
    @IBOutlet weak var ContainerView_3: UIView!
    @IBOutlet weak var ContainerView_4: UIView!
    
    
    @IBOutlet weak var CollectionView: UICollectionView!
    
    @IBOutlet weak var SelectedIndicator: UIView!
    @IBOutlet weak var PostSelectedIndicator: UIView!
    @IBOutlet weak var PhotosSelectindicator: UIView!
    @IBOutlet weak var VideosSelectIndicator: UIView!
  
    @IBOutlet weak var InformationBtn: UIButton!
    @IBOutlet weak var Postsbtn: UIButton!
    @IBOutlet weak var Photosbtn: UIButton!
    @IBOutlet weak var VideosBtn: UIButton!
    
    var post_item = [UIImage(named: "Group 433"),UIImage(named: "Group 434"),UIImage(named: "Group 435"),UIImage(named: "Group 436"),UIImage(named: "Group 437"),UIImage(named: "Group 438")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIView.animate(withDuration: 0.1) {
            self.indicator_reset()
            self.SelectedIndicator.isHidden = false
            self.SelectedIndicator.frame.origin.x = 0
            self.InformationBtn.setTitleColor(UIColor(hexString: "#DBAC40"), for: .normal)
            self.containerview_reset()
            self.ContainerView.isHidden = false
        }
        

        // Do any additional setup after loading the view.
    }
    
    func containerview_reset(){
        self.ContainerView.isHidden = true
        self.ContainerView_2.isHidden = true
        self.ContainerView_3.isHidden = true
        self.ContainerView_4.isHidden = true
        
    }
    
    func indicator_reset(){
        self.SelectedIndicator.isHidden = true
        self.PostSelectedIndicator.isHidden = true
        self.PhotosSelectindicator.isHidden = true
        self.VideosSelectIndicator.isHidden = true
        
        self.InformationBtn.setTitleColor(UIColor(hexString: "#8A8A8F"), for: .normal)
        self.Postsbtn.setTitleColor(UIColor(hexString: "#8A8A8F"), for: .normal)
        self.Photosbtn.setTitleColor(UIColor(hexString: "#8A8A8F"), for: .normal)
        self.VideosBtn.setTitleColor(UIColor(hexString: "#8A8A8F"), for: .normal)
    }

    @IBAction func SettingsBtnOnPressed(_ sender: Any) {
        if let parent = self.parent as? MainViewController{
            parent.settings_page()
        }
    }
    
    @IBAction func InformationBtnOnPressed(_ sender: Any) {
        UIView.animate(withDuration: 0.1) {
            self.indicator_reset()
            self.SelectedIndicator.isHidden = false
            self.SelectedIndicator.frame.origin.x = 0
            self.InformationBtn.setTitleColor(UIColor(hexString: "#DBAC40"), for: .normal)
            self.containerview_reset()
            self.ContainerView.isHidden = false
        }
    }
    
    @IBAction func PostbtnOnPressed(_ sender: Any) {
        UIView.animate(withDuration: 0.1) {
            self.indicator_reset()
            self.PostSelectedIndicator.isHidden = false
            self.Postsbtn.setTitleColor(UIColor(hexString: "#DBAC40"), for: .normal)
            self.containerview_reset()
            self.ContainerView_2.isHidden = false
        }
    }
    
    
    @IBAction func PhotosBtnOnPressed(_ sender: Any) {
        UIView.animate(withDuration: 0.1) {
            self.indicator_reset()
            self.PhotosSelectindicator.isHidden = false
            self.Photosbtn.setTitleColor(UIColor(hexString: "#DBAC40"), for: .normal)
            self.containerview_reset()
            self.ContainerView_3.isHidden = false
        }
    }
    

    @IBAction func VideosBtnOnPressed(_ sender: Any) {
        UIView.animate(withDuration: 0.1) {
            self.indicator_reset()
            self.VideosSelectIndicator.isHidden = false
            self.VideosBtn.setTitleColor(UIColor(hexString: "#DBAC40"), for: .normal)
            self.containerview_reset()
            self.ContainerView_4.isHidden = false
        }
    }
    
    @IBAction func CoverImagebtn(_ sender: Any) {
        let alert = UIAlertController(title: "", message: nil, preferredStyle: .actionSheet)
        
        alert.addAction(UIAlertAction(title: "Change cover picture", style: .default, handler: { _ in
           
        }))
        
        alert.addAction(UIAlertAction(title: "Change profile picture", style: .default, handler: { _ in
            
        }))
        
        alert.addAction(UIAlertAction.init(title: "Cancel", style: .cancel, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
    
}
extension AccountsViewController:UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return post_item.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotoCountryCollectionViewCell", for: indexPath) as! PhotoCountryCollectionViewCell
        cell.ThumbnailImage.image = post_item[indexPath.row]
        return cell
    }
    
}
