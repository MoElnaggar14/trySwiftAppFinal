//
//  OrganizerDetailTableViewController.swift
//  trySwift
//
//  Created by Natasha Murashev on 8/13/16.
//  Copyright © 2016 NatashaTheRobot. All rights reserved.
//

import UIKit

class OrganizerDetailTableViewController: UITableViewController {

    var organizer: Organizer!
    
    fileprivate enum OrganizerDetail: Int {
        case header, bio, twitter
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = organizer.name
        
        tableView.register(UINib(nibName: String(describing: OrganizerTableViewCell), bundle: nil), forCellReuseIdentifier: String(describing: OrganizerTableViewCell))
        tableView.register(UINib(nibName: String(describing: TextTableViewCell), bundle: nil), forCellReuseIdentifier: String(describing: TextTableViewCell))
        tableView.register(UINib(nibName: String(describing: TwitterFollowTableViewCell), bundle: nil), forCellReuseIdentifier: String(describing: TwitterFollowTableViewCell))
        
        tableView.estimatedRowHeight = 83
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.separatorStyle = .none
    }
}

// MARK: - Table view data source
extension OrganizerDetailTableViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch OrganizerDetail(rawValue: (indexPath as NSIndexPath).row)! {
        case .header:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: OrganizerTableViewCell), for: indexPath) as! OrganizerTableViewCell
            cell.configure(withOrganizer: organizer, selectionEnabled: false, accessoryEnabled: false)
            return cell
        case .bio:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: TextTableViewCell), for: indexPath) as! TextTableViewCell
            cell.configure(withText: organizer.bio)
            return cell
        case .twitter:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: TwitterFollowTableViewCell), for: indexPath) as! TwitterFollowTableViewCell
            cell.configure(withUsername: organizer.twitter, delegate: self)
            return cell
        }
    }
    
}
