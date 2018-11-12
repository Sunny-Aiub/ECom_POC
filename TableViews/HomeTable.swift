//
//  HomeTable.swift
//  PocEcomHome
//
//  Created by Md. Mahadhi Hassan Chowdhury on 11/12/18.
//  Copyright © 2018 Md. Mahadhi Hassan Chowdhury. All rights reserved.
//

import UIKit

class HomeTable: UITableView {

    override func awakeFromNib() {
        self.delegate = self
        self.dataSource = self
    }
}

extension HomeTable : UITableViewDelegate, UITableViewDataSource{
    
    override func numberOfRows(inSection section: Int) -> Int {
        
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let row = indexPath.row
        
        if  row == 0{
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "FeatureCell") as! FeatureCell
            
            return cell
            
        }else{
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as! CategoryCell
            
            return cell
        }
        
    }
    
    
    
}
