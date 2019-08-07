//
//  ViewController.swift
//  Assignment2
//
//  Created by tunlukhant on 8/6/19.
//  Copyright © 2019 tunlukhant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableViewFriendList: UITableView!
    @IBOutlet weak var viewHeader: UIView!
    
    var names: [String] = [
        "Luffy", "Zoro", "Sanji", "Nami", "Robin"
    ]
    
    var rows: [String] = [
        "Captain", "Sword Man", "Chief", "Navigator", "Archaeologic"
    ]
    
    var favorites: [String] = [
        "Foods", "Alcohol", "Women", "Money", "Poneglyphs"
    ]
    
    var lableColors: [UIColor] = [
        UIColor.white, UIColor.init(cgColor: #colorLiteral(red: 0, green: 0.7490196078, blue: 0.6470588235, alpha: 1)), UIColor.white, UIColor.init(cgColor: #colorLiteral(red: 0, green: 0.7490196078, blue: 0.6470588235, alpha: 1)), UIColor.init(cgColor: #colorLiteral(red: 0, green: 0.7490196078, blue: 0.6470588235, alpha: 1))
    ]
    
    var viewColors: [CGColor] = [
        #colorLiteral(red: 0, green: 0.7490196078, blue: 0.6470588235, alpha: 1), #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), #colorLiteral(red: 0, green: 0.7490196078, blue: 0.6470588235, alpha: 1), #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewFriendList.dataSource = self
        // Do any additional setup after loading the view.
        let nibFriends = UINib(nibName: FriendFollowTableViewCell.identifier, bundle: nil)
        tableViewFriendList.register(nibFriends, forCellReuseIdentifier: FriendFollowTableViewCell.identifier)
        tableViewFriendList.contentInset = UIEdgeInsets(top: 2, left: 0, bottom: 14, right: 0)
        viewHeader.layer.backgroundColor = UIColor.white.cgColor
        
        //viewHeader.layer.masksToBounds = false
        viewHeader.layer.shadowColor = UIColor.gray.cgColor
        viewHeader.layer.shadowOffset = CGSize(width: 0.0, height: 0.8)
        viewHeader.layer.shadowOpacity = 0.7
        viewHeader.layer.shadowRadius = 0.0
    }

}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: FriendFollowTableViewCell.identifier, for: indexPath) as! FriendFollowTableViewCell
        
        let item = self.names[indexPath.item]
        let row = self.rows[indexPath.item]
        let favorite = self.favorites[indexPath.item]
        let lableColor = self.lableColors[indexPath.item]
        let viewColor = self.viewColors[indexPath.item]
        
        cell.lblName.text = item
        cell.ivLuffy.image = UIImage(named: item)
        cell.lblRow.text = row
        cell.lblFavorite.text = favorite
        cell.lblFollow.textColor = lableColor
        cell.viewFollow.layer.backgroundColor = viewColor
        cell.viewFollow.layer.borderColor = #colorLiteral(red: 0, green: 0.7490196078, blue: 0.6470588235, alpha: 1)
       
        return cell
    }
    
    
}

