//
//  LiveDataViewController.swift
//  CoreCityOSUI
//
//  Created by Said Sikira on 4/26/16.
//  Copyright © 2016 CityOS. All rights reserved.
//

import UIKit
import CoreCityOS

public let LiveDataCellIdentifier = "liveDataCell"

public class LiveDataTableViewController: UIViewController {
    
    //MARK: - Class properties
    
    //MARK: - Views
    public var tableView: UITableView!
    
    //MARK: - Auto Layout
    internal func setupViews() {
        assert(tableView != nil, "Must initialize table view before setting constraints")
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tableView)
        var tableViewConstraints = [NSLayoutConstraint]()
        
        tableViewConstraints.appendContentsOf(
            NSLayoutConstraint.constraintsWithVisualFormat(
                "H:|[tableView]|",
                options: [],
                metrics: nil,
                views: [
                    "tableView": self.tableView
                ]
            )
        )
        
        tableViewConstraints.appendContentsOf(
            NSLayoutConstraint.constraintsWithVisualFormat(
                "V:|[tableView]|",
                options: [],
                metrics: nil,
                views: [
                    "tableView": self.tableView
                ]
            )
        )
        
        NSLayoutConstraint.activateConstraints(tableViewConstraints)
    }
    
    //MARK: Init methods
    public init() {
        super.init(nibName: nil, bundle: nil)
        tableView = UITableView()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    //MARK: - View delegate methods
    override public func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        tableView.registerClass(
            LiveDataTableViewCell.self,
            forCellReuseIdentifier: LiveDataCellIdentifier
        )
    }
    
    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
