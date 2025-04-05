//
//  LoginService.swift
//  Clean+MVVM
//
//  Created by Rafael Santos on 04/04/2025.
//

import Foundation

class LoginService {
    func loginRequest(request: LoginRequest) async throws -> LoginResponse {
        let url = URL(string: "https://reqres.in/api/login")!
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "POST"
        urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.httpBody = try JSONEncoder().encode(request)
        
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        if let httpResponse = response as? HTTPURLResponse {
            print("Rafael - loginRequest - Status Code: \(httpResponse.statusCode)")
        }
        return try JSONDecoder().decode(LoginResponse.self, from: data)
    }
}
