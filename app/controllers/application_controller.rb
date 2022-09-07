class ApplicationController < Sinatra::Base
    set :default_content_type, "application/json"
  #   specialization :allow_methods, "GET, HEAD, POST, PUT, OPTIONS, DELETE"
  #   set :allow_origin, "http:/localhost:3000"
  #    set :bind, '0.0.0.0'
  # configure do
  #   enable :cross_origin
  # end
  # before do
  #   response.headers['Access-Control-Allow-Origin'] = '*'
  # end
  
  # # routes...
  # options "*" do
  #   response.headers["Allow"] = "GET, PUT, POST, DELETE, OPTIONS"
  #   response.headers["Access-Control-Allow-Headers"] = "Authorization, Content-Type, Accept, X-User-Email, X-Auth-Token"
  #   response.headers["Access-Control-Allow-Origin"] = "*"
  #   200
  # end


    #get tasks

        get '/tasks/:id' do
            task = Task.find(params[:id])
            task.to_json
        end

        get "/tasks" do
           task = Task.all
           task.to_json
        end

    #get vehicles

        get '/vehicles/:id' do
            vehicle = Vehicle.find(params[:id])
            vehicle.to_json
        end

        get "/vehicles" do
            vehicles = Vehicle.all
            vehicles.to_json
        end

    #get drivers

        get '/drivers/:id' do
            driver = Driver.find(params[:id])
            driver.to_json
        end
     
        get "/drivers" do
            driver = Driver.all
            driver.to_json
        end
     

    #post
        post '/tasks' do
            task = Task.create(  
            company_name: params[:company_name], 
            task_description: params[:task_description],
            task_location_departure: params[:task_location_departure],
            task_destination: params[:task_destination],
            estimated_distance_in_km: params[:estimated_distance_in_km]
            )
            task.to_json
        end

      post '/vehicles' do
        vehicle = Vehicle.create(
          vehicle_type: params[:vehicle_type],
          registration_no: params[:registration_no],
          vehicle_image_url: params[:vehicle_image_url],
          task_id: params[:task_id],
          driver_id: params[:driver_id]
        )
        vehicle.to_json
      end

      post '/drivers' do
       driver = Driver.create(
          license_no: params[:license_no],
          name: params[:name],
          years_of_experience: params[:years_of_experience],
          vehicle_type_licensed: params[:vehicle_type_licensed],
          home_location: params[:home_location]
        )
        driver.to_json
      end
end

#     #delete

#         delete '/doctors/:id' do
#             delete_doc = Doctor.find(params[:id])
#             delete_doc.destroy
#             delete_doc.to_json
#         end

#         delete '/specializations/:id' do
#             spec = Specialization.find(params[:id])
#             spec.destroy
#             spec.to_json
#         end

#         delete '/pets/:id' do
#             pet = Pet.find(params[:id])
#             pet.destroy
#             pet.to_json
#         end
# end