class AnnuairesController < ApplicationController
  # GET /annuaires
  # GET /annuaires.json
  def index
    @annuaires = Annuaire.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @annuaires }
    end
  end

  # GET /annuaires/1
  # GET /annuaires/1.json
  def show
    @annuaire = Annuaire.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @annuaire }
    end
  end

  # GET /annuaires/new
  # GET /annuaires/new.json
  def new
    @annuaire = Annuaire.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @annuaire }
    end
  end

  # GET /annuaires/1/edit
  def edit
    @annuaire = Annuaire.find(params[:id])
  end

  # POST /annuaires
  # POST /annuaires.json
  def create
    @annuaire = Annuaire.new(params[:annuaire])

    respond_to do |format|
      if @annuaire.save
        format.html { redirect_to @annuaire, notice: 'Annuaire was successfully created.' }
        format.json { render json: @annuaire, status: :created, location: @annuaire }
      else
        format.html { render action: "new" }
        format.json { render json: @annuaire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /annuaires/1
  # PUT /annuaires/1.json
  def update
    @annuaire = Annuaire.find(params[:id])

    respond_to do |format|
      if @annuaire.update_attributes(params[:annuaire])
        format.html { redirect_to @annuaire, notice: 'Annuaire was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @annuaire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /annuaires/1
  # DELETE /annuaires/1.json
  def destroy
    @annuaire = Annuaire.find(params[:id])
    @annuaire.destroy

    respond_to do |format|
      format.html { redirect_to annuaires_url }
      format.json { head :no_content }
    end
  end
end
