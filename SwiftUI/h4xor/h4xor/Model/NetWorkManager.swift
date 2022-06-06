//
//  NetWorkManager.swift
//  h4xor
//
//  Created by Nhat Bui Minh on 04/06/2022.
//

import Foundation

class NetWorkManager : ObservableObject {
    @Published var posts = [Post]()
    func fetchData() {
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) {(data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let result = try decoder.decode(Results.self, from: safeData)
                            //Store all of the result
                            DispatchQueue.main.async{
                                self.posts = result.hits
                            }

                        } catch {
                            print("Cannot load the data \(error)")
                        }
                  
                    }

                }
                
            }
            task.resume()
            
        }
    }
}
