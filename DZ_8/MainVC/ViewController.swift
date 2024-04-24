//
//  ViewController.swift
//  DZ_8
//
//  Created by Nikita Shipovskiy on 24/04/2024.
//

import UIKit

final class ViewController: UIViewController {
    
    private let items = ModelData.mockData()

    private lazy var collectionView: UICollectionView = {
        guard let layout = $0.collectionViewLayout as? UICollectionViewFlowLayout else {return UICollectionView()}
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 30
        layout.minimumInteritemSpacing = 0
        layout.sectionInset = UIEdgeInsets.init(top: 0, left: 30, bottom: 0, right: 30)
        layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        
        $0.dataSource = self
        $0.register(MainScreenCollectionViewCell.self, forCellWithReuseIdentifier: MainScreenCollectionViewCell.resuldId)
        return $0
    }(UICollectionView(frame: view.frame, collectionViewLayout: UICollectionViewFlowLayout()))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(collectionView)
    }


}



extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MainScreenCollectionViewCell.resuldId, for: indexPath) as? MainScreenCollectionViewCell else {return UICollectionViewCell()}
        
//        let item = items[indexPath.item]
        
        cell.setupCell(item: items[indexPath.item])
        
        return cell
    }
    
    
    
}
