class ApplicationController < Sinatra::Base
    set :default_content_type, "application/json"
    # task :allow_methods, "GET, HEAD, POST, PUT, OPTIONS, DELETE"
    set :allow_origin, "http:/localhost:3000"
     set :bind, '0.0.0.0'
  configure do
    enable :cross_origin
  end
  before do
    response.headers['Access-Control-Allow-Origin'] = '*'
  end
  
  # routes...
  options "*" do
    response.headers["Allow"] = "GET, PUT, POST, DELETE, OPTIONS"
    response.headers["Access-Control-Allow-Headers"] = "Authorization, Content-Type, Accept, X-User-Email, X-Auth-Token"
    response.headers["Access-Control-Allow-Origin"] = "*"
    200
  end


    #get method

        get '/tasks/:id' do
            task = Task.find(params[:id])
            task.to_json
        end

        get "/tasks" do
           task = Task.all
           task.to_json
        end


        get '/vehicles/:id' do
            vehicle = Vehicle.find(params[:id])
            vehicle.to_json
        end

        get "/vehicles" do
            vehicles = Vehicle.all
            vehicles.to_json
        end


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
          home_location: params[:home_location], driver_image_url: params[:driver_image_url]
        )
        driver.to_json
      end

      #patch method

      patch '/tasks/:id' do
        task_fixing = Task.find(params[:id])
        task_fixing.update(
          company_name: params[:company_name], 
            task_description: params[:task_description],
            task_location_departure: params[:task_location_departure],
            task_destination: params[:task_destination],
            estimated_distance_in_km: params[:estimated_distance_in_km]
        )
        task_fixing.to_json
      end

      patch '/vehicles/:id' do
        vehicle_fixing = Vehicle.find(params[:id])
        vehicle_fixing.update(
          vehicle_type: params[:vehicle_type],
          registration_no: params[:registration_no],
          vehicle_image_url: params[:vehicle_image_url],
          task_id: params[:task_id],
          driver_id: params[:driver_id]
        )
        vehicle_fixing.to_json
      end

      patch '/drivers/:id' do
        driver_fixing = Driver.find(params[:id])
        driver_fixing.update(
          license_no: params[:license_no],
          name: params[:name],
          years_of_experience: params[:years_of_experience],
          vehicle_type_licensed: params[:vehicle_type_licensed],
          home_location: params[:home_location]
        )
        driver_fixing.to_json
      end

      #delete method

      delete '/tasks/:id' do
        delete_task = Task.find(params[:id])
        delete_task.destroy
        delete_task.to_json
    end
      delete '/vehicles/:id' do
        delete_vehicle = Vehicle.find(params[:id])
        delete_vehicle.destroy
        delete_vehicle.to_json
    end
      delete '/drivers/:id' do
        delete_driver = Driver.find(params[:id])
        delete_driver.destroy
        delete_driver.to_json
    end
end
