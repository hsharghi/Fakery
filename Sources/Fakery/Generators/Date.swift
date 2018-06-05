import Foundation

public final class FakeDate {
    
    public func forward(seconds: Int = 0, minutes: Int = 0, hours: Int = 0, days: Int = 0, months: Int = 0, years: Int = 0) -> Date {
        var date = Calendar.current.date(byAdding: .second, value: seconds, to: Date()) ?? Date()
        date = Calendar.current.date(byAdding: .minute, value: minutes, to: date) ?? Date()
        date = Calendar.current.date(byAdding: .hour, value: hours, to: date) ?? Date()
        date = Calendar.current.date(byAdding: .day, value: days, to: date) ?? Date()
        date = Calendar.current.date(byAdding: .month, value: months, to: date) ?? Date()
        date = Calendar.current.date(byAdding: .year, value: years, to: date) ?? Date()
        
        return date
    }
    
    public func backward(seconds: Int = 0, minutes: Int = 0, hours: Int = 0, days: Int = 0, months: Int = 0, years: Int = 0) -> Date {
        return self.forward(seconds: seconds * -1, minutes: minutes * -1, hours: hours * -1, days: days * -1, months: months * -1, years: years * -1)
    }
    
    public func between(from: Date, to: Date) -> Date {
        let range: CountableClosedRange = Int(from.timeIntervalSince1970)...Int(to.timeIntervalSince1970)
        let timeInterval = Random.int(range: range)
        return Date(timeIntervalSince1970: TimeInterval(timeInterval))
    }
    
    public func birthday(minAge: Int, maxAge: Int) -> Date {
        let from = self.backward(years: maxAge)
        let to = self.backward(years: minAge)
        return self.between(from: from, to: to)
    }
    
}



