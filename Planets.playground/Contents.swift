class Planet {
    var name: String
    var moons: Int
    var orbitalPeriod: Double
    var hasLife: Bool
    
    init(name: String, moons: Int, orbitalPeriod: Double, hasLife: Bool) {
        self.name = name
        self.moons = moons
        self.orbitalPeriod = orbitalPeriod
        self.hasLife = hasLife
    }
    
    func infoObject() {
        var moonNoun = "moon"
        if self.moons != 1 {
            moonNoun = "moons"
        }
        var hasLifeString = "has life"
        if !self.hasLife {
            hasLifeString = "does not have life"
        }
        print("\(self.name) has \(self.moons) \(moonNoun). Its orbit is \(self.orbitalPeriod) days. It \(hasLifeString).")
    }
}

var earth = Planet(name: "Earth", moons: 1, orbitalPeriod: 365.26, hasLife: true)
var mars = Planet(name: "Mars", moons: 2, orbitalPeriod: 685.97, hasLife: false)

func planetInfoObject(planet: Planet) {
    var moonNoun = "moon"
    if planet.moons != 1 {
        moonNoun = "moons"
    }
    var hasLifeString = "has life"
    if !planet.hasLife {
        hasLifeString = "does not have life"
    }
    print("\(planet.name) has \(planet.moons) \(moonNoun). Its orbit is \(planet.orbitalPeriod) days. It \(hasLifeString).")
}

planetInfoObject(planet: earth)
planetInfoObject(planet: mars)
earth.infoObject()
