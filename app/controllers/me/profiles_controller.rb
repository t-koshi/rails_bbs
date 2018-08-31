class Me::ProfilesController < ApplicationController
  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/1/edit
  def edit
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if current_user.update(user_params)
        format.html { redirect_to me_profile_path, notice: 'User was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.permit(:name, :avatar)
    end
end
