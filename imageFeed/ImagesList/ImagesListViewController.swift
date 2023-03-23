//
//  ImagesListViewController.swift
//  imageFeed
//
//  Created by Игорь Полунин on 23.03.2023.
//

import Foundation


import UIKit

extension ImagesListViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

extension ImagesListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: ImagesListCell.reuseIdentifier, for: indexPath)
        
        guard let imagesListCell = cell as? ImagesListCell else {
            return UITableViewCell()
        }
        configCell(for: imagesListCell)
        
        
        return imagesListCell
    }
    
    
}



class ImagesListViewController: UIViewController {
    
    func configCell(for cell: ImagesListCell ) {
        
    }
    
    
    
    @IBOutlet private weak var tableView: UITableView!
    
   
    
    override func viewDidLoad() {
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(ImagesListCell.self, forCellReuseIdentifier: ImagesListCell.reuseIdentifier)
       
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

