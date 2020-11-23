//Solution goes in Sources

struct SpaceAge {
    var seconds:Double
    
    var onEarth: Double{
        get{ 
            
            let min = self.seconds / 60
            let hours = min / 60
            let days = hours / 24
            let years = days / 365.25
            return years
        }
    }
    var onMercury: Double{
        get { return onEarth / 0.2408467}
    }
    var onVenus: Double{
        get { return onEarth / 0.61519726}
    }    
    var onMars: Double{
        get {  return onEarth / 1.8808158}
    }
    var onJupiter: Double{
        get { return onEarth / 11.862615}
    }
    var onUranus: Double{
        get { return onEarth / 84.016846}
    }
    var onNeptune: Double{
        get { return onEarth / 164.79132}
    }
    var onSaturn: Double{
        get { return onEarth / 29.447498}
    }
    //onSaturn
    
    init(_ seconds: Double) {
        self.seconds = seconds
    }
    
}
