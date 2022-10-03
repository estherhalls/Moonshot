//
//  CoinListTableViewController.swift
//  CoinBrowser
//
//  Created by Esther on 10/3/22.
//

import UIKit

class CoinListTableViewController: UITableViewController {
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CoinController.fetchCoins { success in
            if success {
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
        return CoinController.coins.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "coinCell", for: indexPath)
        let coin = CoinController.coins[indexPath.row]
        cell.textLabel?.text = "\(coin.name)"
        cell.detailTextLabel?.text = "ID:\(coin.id), Symbol: \(coin.symbol)"
        
        return cell
    }


} // End of Class
