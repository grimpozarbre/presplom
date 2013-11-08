class Admin::ModeleEmailsController < ApplicationController
  # GET /admin/modele_emails
  # GET /admin/modele_emails.json
  def index
    @modele_emails = ModeleEmail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @modele_emails }
    end
  end

  # GET /admin/modele_emails/1
  # GET /admin/modele_emails/1.json
  def show
    @modele_email = ModeleEmail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @modele_email }
    end
  end

  # GET /admin/modele_emails/new
  # GET /admin/modele_emails/new.json
  def new
    @modele_email = ModeleEmail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @modele_email }
    end
  end

  # GET /admin/modele_emails/1/edit
  def edit
    @modele_email = ModeleEmail.find(params[:id])
  end

  # POST /admin/modele_emails
  # POST /admin/modele_emails.json
  def create
    @modele_email = ModeleEmail.new
    if @modele_email.save
      redirect_to admin_modele_emails_path
    else
      render :action => 'new'
    end

  end

  # PUT /admin/modele_emails/1
  # PUT /admin/modele_emails/1.json
  def update
    @modele_email = ModeleEmail.find(params[:id])

    if @modele_email.update_attributes(params[:modele_email])
      redirect_to admin_modele_emails_path, :flash => { :success => 'Materiel modifie avec succes.' }
    else
      render :action => 'edit'
    end
  end

  # DELETE /admin/modele_emails/1
  # DELETE /admin/modele_emails/1.json
  def destroy
    @modele_email = ModeleEmail.find(params[:id]).destroy

    respond_to do |format|
      format.html { redirect_to modele_emails_url }
      format.json { head :no_content }
    end
  end
end
