# encoding: UTF-8

place = Place.where(name: "Bar do Zé", lat: 1, lng: 1).first_or_create
Place.where(name: "Zeca's", lat: 1, lng: 1).first_or_create
Place.where(name: "Berimbelo's", lat: 1, lng: 1).first_or_create
Place.where(name: "Cerva do Sansão", lat: 1, lng: 1).first_or_create

Report.create(place_id: place.id)