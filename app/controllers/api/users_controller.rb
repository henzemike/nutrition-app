class Api::UsersController < ApplicationController

  def profile
    @user = current_user
    render 'show.json.jbuilder'
  end
    
  def show
    @user = current_user
    render 'show.json.jbuilder'
  end

  def create
    user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      user_name: params[:user_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
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
    @user.password = params[:password] || @user.password_digest
    @user.password_confirmation = params[:password_confirmation] || @user.password_digest
    if @user.save 
      render "show.json.jbuilder"
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
    end

  end

  def destroy
    @user = current_user
    @user.destroy
    render json: {message: "user account deleted!"}
  end

end
