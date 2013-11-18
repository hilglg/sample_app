class AccountsController < ApplicationController
  before_action :set_account, only: [:show, :edit, :update, :destroy]

puts 'haaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
  # GET /accounts
  # GET /accounts.json
  def index
    puts '**********index start in accounts controller'
    @accounts = Account.all
  end

  # GET /accounts/1
  # GET /accounts/1.json
  def show
    puts '**********show start in accounts controller'
  end

  # GET /accounts/new
  def new
    puts '**********new start in accounts controller'
    @account = Account.new
  end

  # GET /accounts/1/edit
  def edit
    puts '**********edit start in accounts controller'
    puts 'params[:id] is ' + params[:id]
    @accounts = Account.all
    #redirect_to @accounts
    #render 'index'
    respond_to do |format|
      format.html {redirect_to action: 'index', id: params[:id]}
    end
  end

  # POST /accounts
  # POST /accounts.json
  def create
    puts '**********create start in accounts controller'
    @account = Account.new(account_params)

    respond_to do |format|
      if @account.save
        format.html { redirect_to @account, notice: 'Account was successfully created.' }
        format.json { render action: 'show', status: :created, location: @account }
      else
        format.html { render action: 'new' }
        format.json { render json: @account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accounts/1
  # PATCH/PUT /accounts/1.json
  def update
    puts '**********update start in accounts controller'
    respond_to do |format|
      if @account.update(account_params)
        format.html { redirect_to action: 'index', notice: 'Account was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accounts/1
  # DELETE /accounts/1.json
  def destroy
    puts '**********destroy start in accounts controller'
    @account.destroy
    respond_to do |format|
      format.html { redirect_to accounts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account
      puts '**********set_account start in accounts controller'
      puts 'params[:id] is ' + params[:id]
      @account = Account.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def account_params
      puts '**********account_params start in accounts controller'
      params.require(:account).permit(:Account, :Name, :Site, :AccountType, :MainPhone, :MainFax)
    end
end
