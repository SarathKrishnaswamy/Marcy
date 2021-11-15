//
//  GroupPageSearchViewController.swift
//  Marcy
//
//  Created by J.Sarath Krishnaswamy on 25/10/21.
//

import UIKit

class GroupPageSearchViewController: UIViewController {

    @IBOutlet weak var SearchBar: UISearchBar!
    @IBOutlet weak var SearchView: UIView!
    @IBOutlet weak var BgView: UIView!
    @IBOutlet weak var CollectionView: UICollectionView!
    
    var id = Int()
    var my_images = [UIImage(named: "Financial_step"),UIImage(named: "cokking"),UIImage(named: "MAfricans"),UIImage(named: "sports-1"),UIImage(named: "toAfrica"),UIImage(named: "Enterprenaurs"),UIImage(named: "students"),UIImage(named: "20yeras")]
    var my_lbls = ["Financial tips","Cooking tips","Muslim Africans","Sports","✈️To Africa","💪🏽Entrepreneurs","Students","20 - 30 year olds"]
    
    var maps = [UIImage(named: "map_1"),UIImage(named: "map_2"),UIImage(named: "map_3"),UIImage(named: "map_4"),UIImage(named: "map_2"),UIImage(named: "map_6"),UIImage(named: "map_7"),UIImage(named: "map_8"),UIImage(named: "map_9"),UIImage(named: "map_10"),UIImage(named: "map_11"),UIImage(named: "map_12")]
    var maps_text = ["Gabon","Nigeria","Ghana","Ethiopia","Tanzania","Benin","Maroc","RDC","Gabon","South Africa","Ghana","Ethiopia"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.SearchView.layer.cornerRadius = 16.0
        configureCollectionView()
        //self.SearchBar.becomeFirstResponder()
        if id == 1{
            //self.ThumbImage.image = UIImage(named: "Groups")
            self.CollectionView.reloadData()
        }
        else{
            //self.ThumbImage.image = UIImage(named: "communities_image")
            self.CollectionView.reloadData()
        }
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)

        // Do any additional setup after loading the view.
    }
    
    
    @objc func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            if self.SearchView.frame.origin.y == self.SearchView.frame.origin.y {
                self.SearchView.frame.origin.y -= keyboardSize.height
            }
        }
    }

    @objc func keyboardWillHide(notification: NSNotification) {
        if self.SearchView.frame.origin.y != 0 {
            self.SearchView.frame.origin.y = self.SearchView.frame.origin.y
        }
    }
    
    func configureCollectionView(){
    
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.itemSize = CGSize(width:UIScreen.main.bounds.width/5, height: 105)
        layout.minimumInteritemSpacing = 0
        //layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 0
        CollectionView.collectionViewLayout = layout
        
    }

    @IBAction func CancelBtnOnPressed(_ sender: Any) {
        //self.SearchBar.resignFirstResponder()
        self.dismiss(animated: true, completion: nil)
    }
    
}

extension GroupPageSearchViewController : UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if id == 1{
            return my_images.count
        }
        else{
            return maps.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if id == 1{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GroupPageSearchCollectionViewCell", for: indexPath) as! GroupPageSearchCollectionViewCell
            cell.Setimage.image = my_images[indexPath.row]
            cell.LblName.text = my_lbls[indexPath.row]
            return cell
        }
        else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GroupPageSearchCollectionViewCell", for: indexPath) as! GroupPageSearchCollectionViewCell
            cell.Setimage.image = maps[indexPath.row]
            cell.LblName.text = maps_text[indexPath.row]
            return cell
        }
    }
    
    
}
