class UsersController < ApplicationController
    def index
      render json: User.all.to_json(
        except: [:created_at, :updated_at]
      )
    end
  
    def show
      render json: User.find(params[:id]).to_json(
        :include => {:routes => {
            :include =>{
                :addresses=>{
                    except: [:created_at, :updated_at]}},
            except: [:created_at, :updated_at]
            }}, 
        except: [:created_at, :updated_at]
    )
    end
  
    def create
      user = User.create(user_params)
      render json: user
    end
  
    private
  
    def user_params
      params.require(:username, :password)
    #   .permit(:user_id, :zip_code, :date_range, :city_name, :days => [])
    end
  
  end