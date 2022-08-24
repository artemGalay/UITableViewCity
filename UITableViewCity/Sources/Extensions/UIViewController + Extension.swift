//
//  UIViewController + Extension.swift
//  UITableViewCity
//
//  Created by Артем Галай on 24.08.22.
//

import UIKit

extension ViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        namesCity.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell = UITableViewCell.init(style: .subtitle, reuseIdentifier: "cell")
        cell.textLabel?.text = namesCity[indexPath.row]
        cell.detailTextLabel?.text = weather[indexPath.row]
        cell.imageView?.image = UIImage(systemName: images[indexPath.row])
        return cell
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            tableView.beginUpdates()
            namesCity.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            tableView.endUpdates()
        }
    }
}
