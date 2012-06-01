class MateriasController < ApplicationController
  # GET /materias
  # GET /materias.json
  def index
    @materias = Materia.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @materias }
    end
  end

  # GET /materias/1
  # GET /materias/1.json
  def show
    @materia = Materia.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @materia }
    end
  end

  # GET /materias/new
  # GET /materias/new.json
  def new
    @materia = Materia.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @materia }
    end
  end

  # GET /materias/1/edit
  def edit
    @materia = Materia.find(params[:id])
  end

  # POST /materias
  # POST /materias.json
  def create
    @materia = Materia.new(params[:materia])

    respond_to do |format|
      if @materia.save
        format.html { redirect_to @materia, notice: 'Materia was successfully created.' }
        format.json { render json: @materia, status: :created, location: @materia }
      else
        format.html { render action: "new" }
        format.json { render json: @materia.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /materias/1
  # PUT /materias/1.json
  def update
    @materia = Materia.find(params[:id])

    respond_to do |format|
      if @materia.update_attributes(params[:materia])
        format.html { redirect_to @materia, notice: 'Materia was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @materia.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /materias/1
  # DELETE /materias/1.json
  def destroy
    @materia = Materia.find(params[:id])
    @materia.destroy

    respond_to do |format|
      format.html { redirect_to materias_url }
      format.json { head :no_content }
    end
  end
end
