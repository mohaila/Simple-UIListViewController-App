//
//  ViewController.swift
//  Simple UITableViewController App
//
//  Copyright © 2019 mohaila. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    private let companies = ["3M Canada Company", "Aboriginal Peoples Television Network Inc. / APTN", "Accenture Inc.", "AccorHotels", "ACL Services Ltd.", "Adobe Systems Canada Inc.", "Agriculture Financial Services Corporation / AFSC", "Air Canada", "Alberta Health Services / AHS", "ArcelorMittal Dofasco G.P.", "Bank of Canada", "BASF Canada Inc.", "BC Public Service", "Bell Canada", "Best Buy Canada Ltd.", "Canada Revenue Agency / CRA", "Canadian Heritage", "Canadian Nuclear Laboratories Ltd.", "Canadian Tire Corporation Limited", "Cargill Limited", "CBCL Limited", "Ceridian HCM Inc.",   "Children's Aid Society of Toronto", "CIBC", "Cisco Systems Canada Co.", "College of Physicians and Surgeons of British Columbia, The", "CWB National Leasing Inc.", "Desjardins Group / Mouvement des caisses Desjardins", "Diamond Schmitt Architects Inc.", "Digital Extremes Ltd.", "Emera Inc.", "Export Development Canada", "Fidelity Canada", "Ford Motor Company of Canada, Limited",
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return companies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let ident = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: ident, for: indexPath)
        
        // configure cell
        cell.textLabel?.text = companies [indexPath.row]
        cell.imageView?.image = UIImage(named: "top")
        
        return cell
    }

}

