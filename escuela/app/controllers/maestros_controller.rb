class MaestrosController < ApplicationController
  # GET /maestros
  # GET /maestros.json
  def index
    @maestros = Maestro.all
    @maestro = Maestro.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @maestros }
    end
  end

  # GET /maestros/1
  # GET /maestros/1.json
  def show
    @maestro = Maestro.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @maestro }
    end
  end

  # GET /maestros/new
  # GET /maestros/new.json
  def new
    @maestro = Maestro.new
    @cargos = Cargo.all
    @materias = Materia.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @maestro }
    end
  end

  # GET /maestros/1/edit
  def edit
    @maestro = Maestro.find(params[:id])
    @cargos = Cargo.all
    @materias = Materia.all
  end

  # POST /maestros
  # POST /maestros.json
  def create
    @maestro = Maestro.new(params[:maestro])

    respond_to do |format|
      if @maestro.save
        format.html { redirect_to @maestro, notice: 'Maestro was successfully created.' }
        format.json { render json: @maestro, status: :created, location: @maestro }
      else
        format.html { render action: "new" }
        format.json { render json: @maestro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /maestros/1
  # PUT /maestros/1.json
  def update
    @maestro = Maestro.find(params[:id])

    respond_to do |format|
      if @maestro.update_attributes(params[:maestro])
        format.html { redirect_to @maestro, notice: 'Maestro was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @maestro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maestros/1
  # DELETE /maestros/1.json
  def destroy
    @maestro = Maestro.find(params[:id])
    @maestro.destroy

    respond_to do |format|
      format.html { redirect_to maestros_url }
      format.json { head :no_content }
    end
  end

  def resultado
  	@maestros = Maestro.where('nombre like ?', "%#{params[:nombre]}%")
  end
end
