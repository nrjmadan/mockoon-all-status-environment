// A program to output folders and routes for mockoon environment.
// It will output all status codes for all methods, categorized by status code class

import Foundation

// MARK: - StatusClassification

struct StatusClassification {
    struct Status {
        let code: Int
        let name: String
    }

    let name: String
    var statuses: [Status]

    static let oneHundred: StatusClassification = .init(name: "1xx - Information responses", statuses: [
        Status(code: 100, name: "100 - Continue"),
        Status(code: 101, name: "101 - Switching Protocols"),
        Status(code: 102, name: "102 - Processing"),
        Status(code: 103, name: "103 - Early Hints"),
    ])
    static let twoHundred: StatusClassification = .init(name: "2xx - Successful responses", statuses: [
        Status(code: 200, name: "200 - OK"),
        Status(code: 201, name: "201 - Created"),
        Status(code: 202, name: "202 - Accepted"),
        Status(code: 203, name: "203 - Non-Authoritative Information"),
        Status(code: 204, name: "204 - No Content"),
        Status(code: 205, name: "205 - Reset Content"),
        Status(code: 206, name: "206 - Partial Content"),
        Status(code: 207, name: "207 - Multi-Status"),
        Status(code: 208, name: "208 - Already Reported"),
        Status(code: 218, name: "218 - This is fine (Apache Web Server)"),
        Status(code: 226, name: "226 - IM Used"),
    ])
    static let threeHundred: StatusClassification = .init(name: "3xx - Redirection messages", statuses: [
        Status(code: 300, name: "300 - Multiple Choices"),
        Status(code: 301, name: "301 - Moved Permanently"),
        Status(code: 302, name: "302 - Found"),
        Status(code: 303, name: "303 - See Other"),
        Status(code: 304, name: "304 - Not Modified"),
        Status(code: 305, name: "305 - Use Proxy"),
        Status(code: 306, name: "306 - Switch Proxy"),
        Status(code: 307, name: "307 - Temporary Redirect"),
        Status(code: 308, name: "308 - Permanent Redirect"),
    ])
    static let fourHundred: StatusClassification = .init(name: "4xx - Client error responses", statuses: [
        Status(code: 400, name: "400 - Bad Request"),
        Status(code: 401, name: "401 - Unauthorized"),
        Status(code: 402, name: "402 - Payment Required"),
        Status(code: 403, name: "403 - Forbidden"),
        Status(code: 404, name: "404 - Not Found"),
        Status(code: 405, name: "405 - Method Not Allowed"),
        Status(code: 406, name: "406 - Not Acceptable"),
        Status(code: 407, name: "407 - Proxy Authentication Required"),
        Status(code: 408, name: "408 - Request Timeout"),
        Status(code: 409, name: "409 - Conflict"),
        Status(code: 410, name: "410 - Gone"),
        Status(code: 411, name: "411 - Length Required"),
        Status(code: 412, name: "412 - Precondition Failed"),
        Status(code: 413, name: "413 - Payload Too Large"),
        Status(code: 414, name: "414 - URI Too Long"),
        Status(code: 415, name: "415 - Unsupported Media Type"),
        Status(code: 416, name: "416 - Range Not Satisfiable"),
        Status(code: 417, name: "417 - Expectation Failed"),
        Status(code: 418, name: "418 - I'm A Teapot"),
        Status(code: 419, name: "419 - Page Expired (Laravel Framework)"),
        Status(code: 420, name: "420 - Method Failure (Spring Framework)"),
        Status(code: 421, name: "421 - Misdirected Request"),
        Status(code: 422, name: "422 - Unprocessable Entity"),
        Status(code: 423, name: "423 - Locked"),
        Status(code: 424, name: "424 - Failed Dependency"),
        Status(code: 425, name: "425 - Too Early"),
        Status(code: 426, name: "426 - Upgrade Required"),
        Status(code: 428, name: "428 - Precondition Required"),
        Status(code: 429, name: "429 - Too Many Requests"),
        Status(code: 430, name: "430 - Request Header Fields Too Large (Shopify)"),
        Status(code: 431, name: "431 - Request Header Fields Too Large"),
        Status(code: 440, name: "440 - Login Time-out (IIS)"),
        Status(code: 444, name: "444 - No Response (nginx)"),
        Status(code: 449, name: "449 - Retry With (IIS)"),
        Status(code: 450, name: "450 - Blocked by Windows Parental Controls (Microsoft)"),
        Status(code: 451, name: "451 - Unavailable For Legal Reasons"),
        Status(code: 460, name: "460 - Client closed connection (AWS ELB)"),
        Status(code: 494, name: "494 - Request Header Too Large (nginx)"),
        Status(code: 495, name: "495 - SSL Certificate Error (nginx)"),
        Status(code: 496, name: "496 - SSL Certificate Required (nginx)"),
        Status(code: 497, name: "497 - HTTP Request Sent to HTTPS Port (nginx)"),
        Status(code: 499, name: "499 - Client Closed Request (nginx)"),
    ])
    static let fiveHundred: StatusClassification = .init(name: "5xx - Server error responses", statuses: [
        Status(code: 500, name: "500 - Internal Server Error"),
        Status(code: 501, name: "501 - Not Implemented"),
        Status(code: 502, name: "502 - Bad Gateway"),
        Status(code: 503, name: "503 - Service Unavailable"),
        Status(code: 504, name: "504 - Gateway Timeout"),
        Status(code: 505, name: "505 - HTTP Version Not Supported"),
        Status(code: 506, name: "506 - Variant Also Negotiates"),
        Status(code: 507, name: "507 - Insufficient Storage"),
        Status(code: 508, name: "508 - Loop Detected"),
        Status(code: 509, name: "509 - Bandwidth Limit Exceeded (Apache Web Server)"),
        Status(code: 510, name: "510 - Not Extended"),
        Status(code: 511, name: "511 - Network Authentication Required"),
        Status(code: 520, name: "520 - Web Server Returned An Unknown Error (Cloudflare)"),
        Status(code: 521, name: "521 - Web Server Is Down (Cloudflare)"),
        Status(code: 522, name: "522 - Connection Timed Out (Cloudflare)"),
        Status(code: 523, name: "523 - Origin Is Unreachable (Cloudflare)"),
        Status(code: 524, name: "524 - A Timeout Occurred (Cloudflare)"),
        Status(code: 525, name: "525 - SSL Handshake Failed (Cloudflare)"),
        Status(code: 526, name: "526 - Invalid SSL Certificate (Cloudflare)"),
        Status(code: 527, name: "527 - Railgun Error (Cloudflare)"),
        Status(code: 561, name: "561 - Unauthorized (AWS ELB)"),
    ])

    static let all: [StatusClassification] = {
        [oneHundred, twoHundred, threeHundred, fourHundred, fiveHundred]
    }()
}

extension String {
    /// A new UUID string
    static func uuidString() -> String {
        UUID().uuidString.lowercased()
    }

    func indentingEachRow(_ tab: Int = 1, indentFirst: Bool = false) -> String {
        let finalTab = max(tab, 1)
        let spaces: String = .init(repeating: " ", count: finalTab * 4)
        let output: String = components(separatedBy: "\n").joined(separator: "\n\(spaces)")
        if indentFirst {
            return spaces + output
        } else {
            return output
        }
    }
}

// MARK: - Route

struct Route {
    let uuid: String
    let documentation: String
    let method: String
    let endpoint: Int
    let responseUUID: String

    var json: String {
        """
        {
            "uuid": "\(uuid)",
            "documentation": "\(documentation)",
            "method": "\(method)",
            "endpoint": "\(endpoint)",
            "responses": [
                {
                    "uuid": "\(responseUUID)",
                    "body": "{}",
                    "latency": 0,
                    "statusCode": \(endpoint),
                    "label": "",
                    "headers": [],
                    "bodyType": "INLINE",
                    "filePath": "",
                    "databucketID": "",
                    "sendFileAsBody": false,
                    "rules": [],
                    "rulesOperator": "OR",
                    "disableTemplating": false,
                    "fallbackTo404": false,
                    "default": true
                }
            ],
            "enabled": true,
            "responseMode": null
        }
        """
    }
}

// MARK: - Folder

struct Folder {
    struct Child {
        enum Kind: String {
            case route
            case folder
        }

        let type: Kind
        let uuid: String

        var json: String {
            """
            {
                "type": "\(type)",
                "uuid": "\(uuid)"
            }
            """
        }
    }

    let uuid: String
    let name: String
    var children: [Child]

    var json: String {
        """
        {
            "uuid": "\(uuid)",
            "name": "\(name)",
            "collapsed": true,
            "children": [
                \(children.map { $0.json.indentingEachRow(2) }.joined(separator: ",\n        "))
            ]
        }
        """
    }
}

let methods: [String] = [
    "get",
    "post",
    "put",
    "patch",
    "delete",
    "head",
    "options",
]

func prepareJSON() -> String {
    // All folders
    var allFolder: [Folder] = []

    // All available routes
    var allRoutes: [Route] = []

    // All root childer.
    var rootChildren: [Folder.Child] = []

    for classification in StatusClassification.all {
        // Create folder for all codes in one class
        let classificationFolderId: String = .uuidString()
        var classificationFolder: Folder = .init(
            uuid: classificationFolderId,
            name: String(classification.name),
            children: []
        )

        for status in classification.statuses {
            // Create folder for all routes of one code
            let statusFolderId: String = .uuidString()
            var statusFolder: Folder = .init(
                uuid: statusFolderId,
                name: status.name,
                children: []
            )

            // Create routes for all methods
            for method in methods {
                let routeId: String = .uuidString()
                let route: Route = .init(
                    uuid: routeId,
                    documentation: "\(method.uppercased()): \(status.name)",
                    method: method,
                    endpoint: status.code,
                    responseUUID: .uuidString()
                )

                // Add to all routes
                allRoutes.append(route)

                let statusFolderChild: Folder.Child = .init(type: .route, uuid: routeId)
                statusFolder.children.append(statusFolderChild)
            }

            // Add code folder to folders
            allFolder.append(statusFolder)

            // Add code folder to class folder
            let classificationFolderChild: Folder.Child = .init(type: .folder, uuid: statusFolderId)
            classificationFolder.children.append(classificationFolderChild)
        }

        // Add class folder to all folders
        allFolder.append(classificationFolder)

        // Add clas folder to root
        let rootFolderChild: Folder.Child = .init(type: .folder, uuid: classificationFolderId)
        rootChildren.append(rootFolderChild)
    }

    return """
    "folders": [
        \(allFolder.map { $0.json.indentingEachRow() }.joined(separator: ",\n    "))
    ],
    "routes": [
        \(allRoutes.map { $0.json.indentingEachRow() }.joined(separator: ",\n    "))
    ],
    "rootChildren": [
        \(rootChildren.map { $0.json.indentingEachRow() }.joined(separator: ",\n    "))
    ],
    """
}

print(prepareJSON())