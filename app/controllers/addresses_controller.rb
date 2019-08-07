class AddressesController < ApplicationController
    def index
      render json: Address.all.to_json(
        except: [:created_at, :updated_at]
      )
    end
  
    def show
        render json: Address.find(params[:id]).to_json(
            except: [:created_at, :updated_at]
        )
    end
  
    def create
      address = Address.create(address_params)
      render json: address
    end
  
    private
  
    def address_params
      params
    #   .permit(:address_id, :zip_code, :date_range, :city_name, :days => [])
    end
  
  end