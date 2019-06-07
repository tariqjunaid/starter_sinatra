heavensward = Train.find_or_create_by(name: "Heavensward", series: "Steam" ,cars: 6)
japanexpress = Train.find_or_create_by(name: "Japan Express 1", series: "Bullet" ,cars: 8)
amtrak = Train.find_or_create_by(name: "Amtrak 3000", series: "Modern" ,cars: 4)
poypal = Train.find_or_create_by(name: "Poypal", series: "Steam" ,cars: 8)

rosslyn = Station.find_or_create_by(name:"Rosslyn")
stadium = Station.find_or_create_by(name:"Stadium-Armory")
mtvernon = Station.find_or_create_by(name:"Mt. Vernon")
waterfront = Station.find_or_create_by(name:"Waterfront")
metrocenter = Station.find_or_create_by(name:"Metro Center")

heavensward.stations << [rosslyn,mtvernon,metrocenter]
japanexpress.stations <<[waterfront,metrocenter,stadium]
amtrak.stations << [metrocenter,stadium]
poypal.stations << [mtvernon,waterfront]