puts "Seeding ......"

puts "Seeding task....."

task1 = Task.create(company_name:"Tasha manufucturers",task_description:"transporting 5,000kg of fertilizer",task_location_departure:"Nairobi",task_destination:"Nakuru",estimated_distance_in_km:139)

task2 = Task.create(company_name:"Chuma Nzito Company",task_description:"transporting 50,000kg of steel",task_location_departure:"Mombasa",task_destination:"Nairobi",estimated_distance_in_km:488)

task3 = Task.create(company_name:"Nael Chemist",task_description:"transporting 100boxes of drugs",task_location_departure:"Nairobi",task_destination:"Kisumu",estimated_distance_in_km:264)

task4 = Task.create(company_name:"Tasha Homes",task_description:"moving office equipments",task_location_departure:"Mombasa",task_destination:"Nairobi",estimated_distance_in_km:488)

task5 = Task.create(company_name:"Muthoni Waithera",task_description:"moving house equipments",task_location_departure:"Nairobi",task_destination:"Nakuru",estimated_distance_in_km:139)

puts "Seeding drivers....."

dereva1 = Driver.create(license_no:"CDN101",name:"Mathu Mwangi",years_of_experience:2,vehicle_type_licensed:"Trucks",home_location:"Nakuru") 
dereva2 = Driver.create(license_no:"CDN102",name:"Okoth Onyango",years_of_experience:4,vehicle_type_licensed:"Pick-ups",home_location:"Nairobi")
dereva3 = Driver.create(license_no:"CDN103",name:"Agnes Nyambane",years_of_experience:2,vehicle_type_licensed:"Trucks",home_location:"Mombasa")

puts "Seeding vehicles....."

vehicle1 = Vehicle.create(vehicle_type:"Truck",registration_no:"KCZ 722U",vehicle_image_url:"https://previews.123rf.com/images/glougass/glougass0807/glougass080700011/3311543-white-truck-and-trailer.jpg?fj=1",task_id:task1.id,driver_id:dereva1.id)

vehicle1 = Vehicle.create(vehicle_type:"Truck",registration_no:"KBJ 535A",vehicle_image_url:"https://previews.123rf.com/images/cla78/cla781401/cla78140100042/25259006-white-transport-truck-isolated-on-a-white-background.jpg",task_id:task2.id,driver_id:dereva3.id)







puts "Seeding ending...."