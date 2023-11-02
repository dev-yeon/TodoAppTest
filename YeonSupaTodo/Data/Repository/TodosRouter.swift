//
//  TodosRouter.swift
//  YeonSupaTodo
//
//  Created by yeon I on 11/2/23.
//


import Foundation
import Alamofire

public enum TodosRouter: URLRequestConvertible {
    case fetchTodos

    var baseURL: URL {
        return URL(string: Constants.BASE_URL)!
    }

    var method: HTTPMethod {
        switch self {
        default : return .get
        }
    }

    var path: String {
        switch self {
        default: return "todos"
        }
    }
    
    var params: Parameters {
        switch self {
            case .fetchTodos: return ["select" : "*"]
        default: return Parameters()
        }
    }

    var headers : HTTPHeaders {
        switch self {
        default:
            return HTTPHeaders([
                HTTPHeader(name: "apikey", value: Constants.SUPABASE_KEY),
            HTTPHeader(name: "Authorization", value:
                        "Bearer \(Constants.SUPABASE_KEY)")
            ])
        }
    }

    public func asURLRequest() throws -> URLRequest {
        let url = baseURL.appendingPathComponent(path)
        var request = URLRequest(url: url)
        request.method = method

        request.headers = headers
        //baseURL?select=*
        request = try URLEncoding.default.encode(request, with: params)
        return request
    }
}

