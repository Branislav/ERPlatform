class KompanijasController < ApplicationController
  # GET /kompanijas
  # GET /kompanijas.json
  before_filter :authorize, only: [:edit, :create, :new ,:show ,:index]


  def index

    @kompanijas = Kompanija.search(params[:search] )
    #@kompanijas = Kompanija.all

    #respond_to do |format|
    #  format.html # index.html.erb
    #  format.json { render json: @kompanijas }
    end


  # GET /kompanijas/1
  # GET /kompanijas/1.json
  def show
    @kompanija = Kompanija.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @kompanija }
    end
  end

  # GET /kompanijas/new
  # GET /kompanijas/new.json
  def new
    @kompanija = Kompanija.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @kompanija }
    end
  end

  # GET /kompanijas/1/edit
  def edit
    @kompanija = Kompanija.find(params[:id])
  end

  # POST /kompanijas
  # POST /kompanijas.json
  def create
    #@kompanija = Kompanija.new(params[:kompanija])
    @kompanija = @user.kompanija.new(params[:kompanija])

    respond_to { |format|
      if @kompanija.save
        format.html { redirect_to @kompanija, notice: 'Company was successfully added.' }
        format.json { render json: @kompanija, status: :created, location: @kompanija }
        #@users = User.find_by_email(params[:email])
        #@users.inc


      else
        format.html { render action: "new" }
        format.json { render json: @kompanija.errors, status: :unprocessable_entity }
      end }
  end

  # PUT /kompanijas/1
  # PUT /kompanijas/1.json
  def update
    @kompanija = Kompanija.find(params[:id])

    respond_to do |format|
      if @kompanija.update_attributes(params[:kompanija])
        format.html { redirect_to @kompanija, notice: 'Company was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @kompanija.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kompanijas/1
  # DELETE /kompanijas/1.json
  def destroy
    @kompanija = Kompanija.find(params[:id])
    @kompanija.destroy

    respond_to do |format|
      format.html { redirect_to kompanijas_url }
      format.json { head :no_content }
    end
  end

  end

