//
//  ZSBookShelfViewController.swift
//  Alamofire
//
//  Created by caony on 2019/6/17.
//

import UIKit
import ZSThirdPartSDK
import ZSBaseUI

open class ZSBookShelfViewController: BaseViewController {
    
    var navView:HomeNavView!
    var tableView:UITableView!
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        tableView = UITableView(frame: .zero, style: .grouped)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "\(UITableViewCell.self)")
        view.addSubview(tableView)
    }
    
    override open func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.frame = view.bounds
        ZSThirdLogin.shared()
    }
}

extension ZSBookShelfViewController: UITableViewDataSource, UITableViewDelegate {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "\(UITableViewCell.self)", for: indexPath)
        cell.textLabel?.text = "\(indexPath.row)"
        return cell
    }
}
