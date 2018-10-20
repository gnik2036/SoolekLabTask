//
//  HomeVC.swift
//  SoolekLabTask
//
//  Created by shady on 10/19/18.
//  Copyright © 2018 XYZ. All rights reserved.
//

import UIKit
import Firebase

class HomeVC: UIViewController , UITableViewDataSource{
    
    
    final let url = URL(string: "https://api.printful.com/countries")
    
    @IBAction func logOut(_ sender: Any) {
        try! Auth.auth().signOut()
        self.dismiss(animated: false, completion: nil)
    }
    
    @IBOutlet weak var tableView: UITableView!
    var Actors = [actorModel]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        downloadJson()
    }
    
    
    func downloadJson() {
        guard let downloadURL = url else { return }
        
        URLSession.shared.dataTask(with: downloadURL)   { data, urlResponse, error in
            
         
            
            guard let data = data, error == nil, urlResponse != nil else {
                
                print ("Something is Wrong")
                
                return
            }
            
               print ("downloaded")
            
            
            do
            {
                let decoder = JSONDecoder ()
                
                let downloadedActors = try decoder.decode(actorModels.self, from: data)
                
                self.Actors = downloadedActors.actors
                
                
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                    
                }
                
            } catch {
                
                print("Something wrong after downloaded")
                
                
            }
            
            
            }.resume()
    
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Actors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ActorCell") as? Actor else {return UITableViewCell() }
        cell.countryText.text = Actors[indexPath.row].name
        
        return cell
        
        
    }
  

}
