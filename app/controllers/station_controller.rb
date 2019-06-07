class StationController < Sinatra::Base
  set :views, "./app/views/stations"
  set :method_override, true

    get "/stations" do
      @stations = Station.all
      erb :index
    end

    get "/stations/new" do
      @trains = Train.all
      erb :new
    end

    post "/stations" do
      station = Station.create(params["station"])
      selected_train = Train.find(params["train_ids"])
      station.trains << selected_train
      redirect "/stations/#{station.id}" 
    end

    get "/stations/:id" do
      @station = Station.find(params["id"])
      erb :show
    end

    patch "/stations/:id" do
      station = Station.find(params["id"])
      station.update(params["station"])
      redirect "/stations/#{station.id}"
    end

    get "/stations/:id/edit" do
      @station = Station.find(params["id"])
      @trains = Train.all
      erb :edit
    end

    delete "/stations/:id" do
      station = Station.find(params["id"])
      station.destroy
      redirect "/stations"
    end
end
