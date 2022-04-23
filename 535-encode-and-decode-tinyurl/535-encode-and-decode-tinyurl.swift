class Codec {
    // Encodes a URL to a shortened URL.
    private var codeDB = [String: String]()
    private var urlDB = [String: String]()
    private let charsString = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
    // private let chars = Array(charsString)
    private func getCode() -> String{
            let chars = Array(charsString)
            var code = [Character]()
            for i in 0..<6{
                code.append(chars[Int.random(in: 0..<62)])
            }
        // print("http://tinyurl.com" + String(code))
            return "http://tinyurl.com/" + String(code)
        }
    func encode(_ longUrl: String) -> String {
        
        if let x = urlDB[longUrl]{
            return x
        }
        var ans = getCode()
        while codeDB[ans] != nil{
            ans = getCode()
        }
        codeDB[ans] = longUrl
        urlDB[longUrl] = ans
        return ans
    }
    
    // Decodes a shortened URL to its original URL.
    func decode(_ shortUrl: String) -> String {
        return codeDB[shortUrl]!
    }
}

/**
 * Your Codec object will be instantiated and called as such:
 * let obj = Codec()
 * val s = obj.encode(longUrl)
 * let ans = obj.decode(s)
*/