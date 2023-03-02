class ActeursController < ApplicationController
  before_action :set_acteur, only: %i[ show edit update destroy ]

  # GET /acteurs or /acteurs.json
  def index
    @acteurs = Acteur.all
  end

  # GET /acteurs/1 or /acteurs/1.json
  def show
  end

  # GET /acteurs/new
  def new
    @acteur = Acteur.new
  end

  # GET /acteurs/1/edit
  def edit
  end

  # POST /acteurs or /acteurs.json
  def create
    @acteur = Acteur.new(acteur_params)

    respond_to do |format|
      if @acteur.save
        format.html { redirect_to acteur_url(@acteur), notice: "Acteur was successfully created." }
        format.json { render :show, status: :created, location: @acteur }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @acteur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /acteurs/1 or /acteurs/1.json
  def update
    respond_to do |format|
      if @acteur.update(acteur_params)
        format.html { redirect_to acteur_url(@acteur), notice: "Acteur was successfully updated." }
        format.json { render :show, status: :ok, location: @acteur }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @acteur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acteurs/1 or /acteurs/1.json
  def destroy
    @acteur.destroy

    respond_to do |format|
      format.html { redirect_to acteurs_url, notice: "Acteur was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acteur
      @acteur = Acteur.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def acteur_params
      params.require(:acteur).permit(:Nom, :Photo, :Anniversaire, :Biographie, :Filmographie)
    end
end
