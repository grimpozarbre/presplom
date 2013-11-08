class MaterielEtudiantsController < ApplicationController
  # GET /materiel_etudiants
  # GET /materiel_etudiants.json
  def index
    #@materiel_etudiants = MaterielEtudiant.order(materiel_id)
    @materiels = Materiel.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @materiel_etudiants }
    end
  end

  # GET /materiel_etudiants/1
  # GET /materiel_etudiants/1.json
  def show
    @materiel_etudiant = MaterielEtudiant.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @materiel_etudiant }
    end
  end

  # GET /materiel_etudiants/new
  # GET /materiel_etudiants/new.json
  def new
    
    #materiels.materiel_etudiants.build
    @materiels = Materiel.all
    @materiel_etudiant = MaterielEtudiant.new
    


    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @materiel_etudiant }
    end
  end

  # GET /materiel_etudiants/1/edit
  def edit
    @materiel_etudiant = MaterielEtudiant.find(params[:id])
  end

  # POST /materiel_etudiants
  # POST /materiel_etudiants.json
  def create
    @materiel.materiel_etudiants.build(@current_user.as_user_id, quantite: @materiel_etudiant.quantite)
    
    
    #@materiel_etudiant = MaterielEtudiant.new(params[:materiel_etudiant])

    respond_to do |format|
      if @materiel_etudiant.save
        format.html { redirect_to @materiel_etudiant, notice: 'Materiel etudiant was successfully created.' }
        format.json { render json: @materiel_etudiant, status: :created, location: @materiel_etudiant }
      else
        format.html { render action: "new" }
        format.json { render json: @materiel_etudiant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /materiel_etudiants/1
  # PUT /materiel_etudiants/1.json
  def update
    @materiel_etudiant = MaterielEtudiant.find(params[:id])

    respond_to do |format|
      if @materiel_etudiant.update_attributes(params[:materiel_etudiant])
        format.html { redirect_to @materiel_etudiant, notice: 'Materiel etudiant was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @materiel_etudiant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /materiel_etudiants/1
  # DELETE /materiel_etudiants/1.json
  def destroy
    @materiel_etudiant = MaterielEtudiant.find(params[:id])
    @materiel_etudiant.destroy

    respond_to do |format|
      format.html { redirect_to materiel_etudiants_url }
      format.json { head :no_content }
    end
  end
end
