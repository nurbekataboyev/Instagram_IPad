//
//  HomeViewController.swift
//  Instagram_IPad
//
//  Created by Nurbek on 20/11/23.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var customTableView: UITableView!
    
    class Items {
        var fullname: String
        var profilePicture: String
        var post1: String
        var post2: String
        init(fullname: String, profilePicture: String, post1: String, post2: String) {
            self.fullname = fullname
            self.profilePicture = profilePicture
            self.post1 = post1
            self.post2 = post2
        }
    }
    
    var items: Array<Items> = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        items.append(Items(fullname: "Nurbek", profilePicture: "pfp1", post1: "post1", post2: "post2"))
        items.append(Items(fullname: "Sardor", profilePicture: "pfp2", post1: "post1", post2: "post2"))
        
        view.backgroundColor = .white
        customTableView.delegate = self
        customTableView.dataSource = self
        
        setNavBar()
        
    }
    
    func setNavBar() {
        navigationItem.title = "Instagram"
        navigationItem.leftBarButtonItem = UIBarButtonItem.init(image: UIImage(named: "camera"), style: .plain, target: self, action: #selector(leftTapped))
        navigationItem.rightBarButtonItem = UIBarButtonItem.init(image: UIImage(named: "near"), style: .plain, target: self, action: #selector(rightTapped))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.row]
        
        let cell = Bundle.main.loadNibNamed("PostTableViewCell", owner: self, options: nil)?.first as! PostTableViewCell
        cell.selectionStyle = .none
        
        cell.profilePicture.image = UIImage(named: item.profilePicture)
        cell.fullname.text = item.fullname
        cell.post1.image = UIImage(named: item.post1)
        cell.post2.image = UIImage(named: item.post2)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        500
    }
    
//    actions
    @objc func leftTapped() {
        print("Left Tapped")
    }
    
    @objc func rightTapped() {
        print("Right Tapped")
    }
    
}
