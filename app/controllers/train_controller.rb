class TrainController < Sinatra::Base
  set :views, "./app/views/trains"
  set :method_override, true

    get "/trains" do
      @trains = Train.all
      erb :index
    end

    get "/trains/new" do
      @stations = Station.all
      erb :new
    end

    post "/trains" do
      binding.pry
      train = Train.create(params["train"])
      redirect "/trains/#{train.id}"
    end

    get "/trains/:id" do
      @train = Train.find(params[:id])
      erb :show
    end

    patch "/trains/:id" do
      train = Train.find(params["id"])
      train.update(params["train"])
      redirect "/trains/#{train.id}"
    end

    delete "/trains/:id" do
      train = Train.find(params["id"])
      train.destroy
      redirect "/trains"
    end

    get "/trains/:id/edit" do
      @train = Train.find(params["id"])
      @stations = Station.all
      erb :edit
    end

end
