
//enum-ის განსაზღვრა შესაბამისი ქეისებით
enum Weather {
    case sunny(celsius: Double)
    case cloudy(celsius: Double)
    case rainy(celsius: Double)
    case snowy(celsius: Double)
}

//ფუნქცია რომელიც მიიღებს ამ enum-ს, და მოგვცემს რეკომენდაციას რა უნდა ჩავიცვათ შესაბამისი ამინდის მიხედვით.
func recommendClothing(for weather: Weather) {
    switch weather {
    case .sunny(let celsius) where celsius >= 25:
        print("It's sunny and hot (\(celsius)°C). Wear light clothing, sunglasses, and sunscreen.")
    case .sunny(let celsius):
        print("It's sunny (\(celsius)°C). Wear comfortable clothing and sunglasses.")

    case .cloudy(let celsius) where celsius >= 15:
        print("It's cloudy and a bit cool (\(celsius)°C). Wear a light jacket or sweater.")
    case .cloudy(let celsius):
        print("It's cloudy (\(celsius)°C). Wear comfortable clothing.")

    case .rainy(let celsius):
        print("It's rainy (\(celsius)°C). Bring an umbrella and wear waterproof clothing.")

    case .snowy(let celsius) where celsius <= 0:
        print("It's snowy and cold (\(celsius)°C). Wear a warm coat, gloves, and a hat.")
    case .snowy(let celsius):
        print("It's snowy (\(celsius)°C). Dress warmly and wear appropriate footwear.")
    }
}

// ტესტ-დრაივი 
let currentWeather = Weather.sunny(celsius: 28)
recommendClothing(for: currentWeather) 