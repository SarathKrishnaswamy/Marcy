//
//  ShareViewController.swift
//  Marcy
//
//  Created by J.Sarath Krishnaswamy on 21/10/21.
//

import UIKit

class ShareViewController: UIViewController {

    @IBOutlet weak var SendBtn: UIButton!
    @IBOutlet weak var SearchView: UIView!
    @IBOutlet weak var CollectionView: UICollectionView!
    @IBOutlet weak var SearchBar: UISearchBar!
    var initial_Size = Int()
    var my_images = [UIImage(named: "se_1"),UIImage(named: "se_2"),UIImage(named: "se_3"),UIImage(named: "se_4"),UIImage(named: "se_5"),UIImage(named: "se_6"),UIImage(named: "se_7"),UIImage(named: "se_8"),UIImage(named: "se_9"),UIImage(named: "se_10"),UIImage(named: "se_11"),UIImage(named: "se_12")]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.SendBtn.layer.cornerRadius = self.SendBtn.frame.height/2
        self.SearchView.layer.cornerRadius = 16.0
        print(self.SearchView.frame.origin.y)
        self.initial_Size = Int(self.SearchView.frame.origin.y)
        configureCollectionView()
        self.SearchBar.resignFirstResponder()
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        //NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    
    }
    

    
    @IBAction func CancelBtnOnPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            if self.SearchView.frame.origin.y == self.SearchView.frame.origin.y {
                self.SearchView.frame.origin.y -= keyboardSize.height
                print(self.SearchView.frame.origin.y)
                print(keyboardSize.height)
            }
        }
    }

    @objc func keyboardWillHide(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            if self.SearchView.frame.origin.y != 0 {
                self.SearchView.frame.origin.y += keyboardSize.height
                print(self.SearchView.frame.origin.y)
            }
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
    
}

extension ShareViewController : UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return my_images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ShareCollectionViewCell", for: indexPath) as! ShareCollectionViewCell
        cell.ImageThumb.image = my_images[indexPath.row]
        return cell
    }
    
    /*func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if indexPath.row == 6{
            //self.SearchView.frame.origin.y = CGFloat(self.initial_Size)
            let vc = storyboard?.instantiateViewController(withIdentifier: "ShareWithAppViewController") as! ShareWithAppViewController
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: false, completion: nil)
        }
    }*/
    
}
