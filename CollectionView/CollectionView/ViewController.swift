//
//  ViewController.swift
//  CollectionView
//
//  Created by GAMZE AKYÜZ on 17.09.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var collectionView : UICollectionView!
    
    /*
     
     UICollectionViewFlowLayout = Öğeleri, her bölüm için isteğe bağlı üstbilgi ve altbilgi görünümleriyle bir ızgara halinde düzenleyen bir düzen nesnesi.
     collectionViewLayout = Toplanan görünümün öğelerini düzenlemek için kullanılan yerleşim düzeni.
     register = Yeni koleksiyon görünüm hücreleri oluşturmak için bir uç dosyası kaydeder.
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 120, height: 120)
        collectionView.collectionViewLayout = layout
        
        
        collectionView.register(MyCollectionViewCell.nib(), forCellWithReuseIdentifier: MyCollectionViewCell.identifier)
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
    }


}

extension ViewController: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        let alert = UIAlertController(title: "Ok?", message: "You tapped me", preferredStyle: UIAlertController.Style.alert)
        let ok = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(ok)
        print("you tapped me")
        present(alert, animated: true) {
                    print("alert is done")
        }
    }
}

extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyCollectionViewCell.identifier, for: indexPath) as! MyCollectionViewCell
        cell.configure(with: UIImage(named: "image")!)
        return cell
    }
    
}

extension ViewController: UICollectionViewDelegateFlowLayout{

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 120, height: 120)
    }
    
}
