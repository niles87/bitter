//
//  API.swift
//  bitter_ios
//
//  Created by Niles Bingham on 2/20/21.
//

import Foundation

class API {
    static let main = API()
    
    func getBits(username: String = "") -> [Bit] {
        let s = DispatchSemaphore(value: 0)
        guard let req = URL(string: "http://127.0.0.1:4000/bits?user=\(username)") else {
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
    
    func addBit(bit: String, user: String) -> String {
        let s = DispatchSemaphore(value: 0)
        var msg = ""
        guard let url = URL(string: "http://127.0.0.1:4000/bits") else { return "url failed"}
        var request = URLRequest(url: url)
        
        let json: [String:Any] = [
            "bit": bit,
            "username": user
        ]
        
        guard let jsonData = try? JSONSerialization.data(withJSONObject: json, options: []) else {
            return "couldnt serialize data"
        }
        
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = jsonData
        
        URLSession.shared.dataTask(with: request) {(data, response, error) in
            guard let data = data else {
                return
            }
            do {
                let message = try JSONDecoder().decode(Message.self, from: data)
                msg = message.msg
            } catch let error {
                print("\(error)")
            }
            s.signal()
        }.resume()
        s.wait()
        return msg
    }
}
