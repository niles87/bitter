//
//  API.swift
//  bitter_ios
//
//  Created by Niles Bingham on 2/20/21.
//

import Foundation

class API {
    static let main = API()
    
    func getBits() -> [Bit] {
        let s = DispatchSemaphore(value: 0)
        guard let req = URL(string: "http://127.0.0.1:4000/bits") else {
            return []
        }
        var bits: [Bit]!
        URLSession.shared.dataTask(with: req) { (data, response, error) in
            guard let data = data else {
                return
            }
            do {
                let bitList = try JSONDecoder().decode(BitList.self, from: data)
                bits = bitList.data
            }
            catch let error {
                print("error: \(error)")
            }
            s.signal()
        }.resume()
        
        _ = s.wait(timeout: .distantFuture)
        
        return bits
    }
}
