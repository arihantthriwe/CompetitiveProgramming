
class UndergroundSystem {
    
    var customerDB = [Int: Customer]()
    var transactions = [Customer]()
    
    init() {
    }
    
    func checkIn(_ id: Int, _ stationName: String, _ t: Int) {
        customerDB[id] = Customer(id: id, startStation: stationName, time: t)
    }
    
    func checkOut(_ id: Int, _ stationName: String, _ t: Int) {
        if var customer = customerDB[id]{
            customer.endStation = stationName
            customer.travelTime = Double(t) - Double(customer.time)
            transactions.append(customer)
            customerDB[id] = nil
        }
    }
    
    func getAverageTime(_ startStation: String, _ endStation: String) -> Double {
        let customers = transactions.filter({
            $0.startStation == startStation &&
            $0.endStation == endStation &&
            $0.travelTime > 0
        })
        guard customers.count > 0 else { return 0.0 }
        return customers.map({
            $0.travelTime
        }).reduce(0.0,+) / Double(customers.count)
    }
}
struct Customer{
    let id: Int
    let startStation: String
    var endStation: String = ""
    let time: Int
    var travelTime: Double = 0.0
}

/**
 * Your UndergroundSystem object will be instantiated and called as such:
 * let obj = UndergroundSystem()
 * obj.checkIn(id, stationName, t)
 * obj.checkOut(id, stationName, t)
 * let ret_3: Double = obj.getAverageTime(startStation, endStation)
 */