class RoutesController < ApplicationController
    def index
      render json: Route.all.to_json(
        except: [:created_at, :updated_at]
      )
    end
  
    def show
      render json: Route.find(params[:id]).to_json(
        :include => {
            :addresses => {
              except: [:created_at, :updated_at]
            }},
            except: [:created_at, :updated_at]
        )
    end
  
    def create
      route = Route.create(route_params)
      render json: route
    end
  
    private
  
    def route_params
      params.require(:route)
    #   .permit(:route_id, :zip_code, :date_range, :city_name, :days => [])
    end
  
  end