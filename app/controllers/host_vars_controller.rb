class HostVarsController < ApplicationController
  before_action :set_host_var, only: [:show, :edit, :update, :destroy]

  # GET /host_vars
  # GET /host_vars.json
  def index
    @host_vars = HostVar.all
  end

  # GET /host_vars/1
  # GET /host_vars/1.json
  def show
  end

  # GET /host_vars/new
  def new
    @host_var = HostVar.new
  end

  # GET /host_vars/1/edit
  def edit
  end

  # POST /host_vars
  # POST /host_vars.json
  def create
    @host_var = HostVar.new(host_var_params)

    respond_to do |format|
      if @host_var.save
        format.html { redirect_to @host_var, notice: 'Host var was successfully created.' }
        format.json { render action: 'show', status: :created, location: @host_var }
      else
        format.html { render action: 'new' }
        format.json { render json: @host_var.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /host_vars/1
  # PATCH/PUT /host_vars/1.json
  def update
    respond_to do |format|
      if @host_var.update(host_var_params)
        format.html { redirect_to @host_var, notice: 'Host var was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @host_var.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /host_vars/1
  # DELETE /host_vars/1.json
  def destroy
    @host_var.destroy
    respond_to do |format|
      format.html { redirect_to host_vars_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_host_var
      @host_var = HostVar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def host_var_params
      params[:host_var]
    end
end
