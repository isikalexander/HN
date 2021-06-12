//
//  NetworkManager.swift
//  HN
//
//  Created by Steffan Harmaajarvi on 12.06.2021.
//

import Foundation 

class NetworkManager: ObservableObject {
    
    @Published var news = [News]()
    
    func fetchData () {
        
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") {
            
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                
                if error != nil {
                    
                    print("Network error!")
                    
                } else {
                    
                    let decoder = JSONDecoder()
                    
                    if let d = data {
                        
                        do {
                            
                            let results = try decoder.decode(NewsData.self, from: d)
                            
                            DispatchQueue.main.async {
                                self.news = results.hits
                            }
                            
                            
                            
                        } catch {
                            
                            print(error)
                            
                        }

                        
                        
                    }
                }
                
                
            }
            
            task.resume()

            
        }
        
        
    }
    
}
