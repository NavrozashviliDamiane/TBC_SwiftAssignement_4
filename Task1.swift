
//enum-ის განსაზღვრა შესაბამისი ქეისებით
enum DayOfWeek {
    case sunday
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
}

//დღეების ტიპების განსაზღვრა
enum DayType {
    case weekday
    case holiday
}


//ფუნქცია რომელიც იღებს enums და განსაზღვრავს დღის ტიპს
func determineDayType(_ day: DayOfWeek) -> DayType {
    switch day {
    case .saturday, .sunday:
        return .weekend
    case .monday, .tuesday, .wednesday, .thursday, .friday:
        return .weekday
    }
}


//ფუნქცია რომელიც იღებს enum-ს და determineDayType ფუნქციის დახმარებით 
// აბრუნებს შედეგს
func printDayType(_ day: DayOfWeek) {
    let dayType = determineDayType(day)
    switch dayType {
    case .weekday:
        print("\(day) is a weekday.")
    case .weekend:
        print("\(day) is a weekend day.")
    }
}


//ტესტ-დრაივი ;)
let today = DayOfWeek.monday
printDayType(today) 