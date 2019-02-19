//
//  ViewController.swift
//  Kohls_App
//
//  Created by IMCS2 on 2/16/19.
//  Copyright © 2019 IMCS2. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource{
    var imgArr:[UIImage] = [
        UIImage(named:"Women")!,
        UIImage(named:"Men")!,
        UIImage(named:"kids")!,
        UIImage(named:"jewelry")!,
        UIImage(named:"shoes")!,
         UIImage(named:"home")!,
    ]
    @IBOutlet weak var collectionView: UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as! CollectionViewCell
        cell.SectionsCell.image = imgArr[indexPath.row]
        return cell
    }
    

    
    @IBOutlet weak var mainScreen: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        collectionView.dataSource = self
        collectionView.delegate = self
//        let layout = self.collectionView.collectionViewLayout as! UICollectionViewFlowLayout
//        layout.sectionInset = UIEdgeInsets(top: 0,left: 5,bottom: 0,right: 5)
//        layout.minimumInteritemSpacing = 5
//        layout.itemSize = CGSize(width: (self.collectionView.frame.size.width - 20)/2, height: self.collectionView.frame.size.height/3)
        
    }

    @IBAction func thirtyTwentyButton(_ sender: Any) {
        print("30 or 20, How much you want?")
    }
    @IBAction func yes2U(_ sender: Any) {
        print("YES2YOU Rewards Tapped")
    }
  
    @IBAction func camButton(_ sender: Any) {
      print("Camera Tapped")
    }
    
    
    @IBAction func barcodeButton(_ sender: Any) {
        print("Barcode Tapped")
    }
    
    @IBAction func hamburgerOnClick(_ sender: Any) {
        print("hamburger menu clicked")
    }
    
    
    @IBAction func shoopingCartOnClick(_ sender: Any) {
        
        print("Shopping cart selected")
    }
    
    
    @IBAction func findAStoreButton(_ sender: Any) {
        
        print("FIND A STORE Tapped")
    }
    
    
    @IBAction func kohlsChargeButton(_ sender: Any) {
        
        print("KOHL's CHARGE BUTTON Tapped")
    }
    
    @IBAction func walletButton(_ sender: Any) {
        
        print("WALLET Button Tapped")
    }
    
    
    
    @IBAction func shopMyStoreButton(_ sender: Any) {
       print("Shop my Store Tapped")
    }
    
    
    @IBAction func kohls10button(_ sender: Any) {
      print("Kohls 10$ cash tapped")
    
    }
    
    @IBAction func doorBusters(_ sender: Any) {
        print("Door Busters Page Navigation Request")
    }
    
    
    
    
}

