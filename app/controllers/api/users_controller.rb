class Api::UsersController < ApplicationController

  def profile
    @user = current_user
    render 'show.json.jbuilder'
  end
    
  def show
    @user = User.find(params[:id])
    render 'show.json.jbuilder'
  end

  def create
    user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      user_name: params[:user_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      breakfast: params[:breakfast],
      snack1: params[:snack1],
      lunch: params[:lunch],
      snack2: params[:snack2],
      dinner: params[:dinner]
    )

    if user.save
      render json: {message: 'User created successfully'}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end

  end

  def update
    @user = current_user

    @user.first_name = params[:first_name] || @user.first_name
    @user.last_name = params[:last_name] || @user.last_name
    @user.email = params[:email] || @user.email
    @user.breakfast = params[:breakfast] || @user.breakfast
    @user.snack1 = params[:snack1] || @user.snack1
    @user.lunch = params[:lunch] || @user.lunch
    @user.snack2 = params[:snack2] || @user.snack2
    @user.dinner = params[:dinner] || @user.dinner
    if @user.save 
      render "show.json.jbuilder"
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
    end

  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    render json: {message: "user account deleted!"}
  end

end
