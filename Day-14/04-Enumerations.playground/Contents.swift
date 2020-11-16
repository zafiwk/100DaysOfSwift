import UIKit


func getHaterStatus(weather: String) -> String? {
    if weather == "sunny" {
        return nil
    } else {
        return "Hate"
    }
}


enum WeatherType {
    case sun, cloud, rain, wind, snow
}
func getHaterStatus2(weather: WeatherType) -> String? {
    if weather == WeatherType.sun {
        return nil
    } else {
        return "Hate"
    }
}
getHaterStatus2(weather: WeatherType.cloud)


enum WeatherType2 {
    case sun
    case cloud
    case rain
    case wind
    case snow
}
func getHaterStatus3(weather: WeatherType2) -> String? {
    if weather == .sun {
        return nil
    } else {
        return "Hate"
    }
}
getHaterStatus3(weather: .cloud)


// Enums with additional values
enum WeatherType3 {
    case sun
    case cloud
    case rain
    case wind (speed: Int)
    case snow
}
func getHaterStatus4(weather: WeatherType3) -> String? {
    switch weather {
    case .sun:
        return nil
    case .wind(let speed) where speed < 10:
        return "meh"
    case .cloud, .wind:
        return "dislike"
    case .rain, .snow:
        return "hate"
    }
}
getHaterStatus4(weather: WeatherType3.wind(speed: 5))
