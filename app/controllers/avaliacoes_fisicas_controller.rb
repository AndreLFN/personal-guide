class AvaliacoesFisicasController < ApplicationController
  before_action :set_avaliacoes_fisica, only: [:show, :edit, :update, :destroy]

  # GET /avaliacoes_fisicas
  # GET /avaliacoes_fisicas.json
  def index
    @avaliacoes_fisicas = AvaliacoesFisica.all
  end

  # GET /avaliacoes_fisicas/1
  # GET /avaliacoes_fisicas/1.json
  def show
  end

  # GET /avaliacoes_fisicas/new
  def new
    @avaliacoes_fisica = AvaliacoesFisica.new
  end

  # GET /avaliacoes_fisicas/1/edit
  def edit
  end

  # POST /avaliacoes_fisicas
  # POST /avaliacoes_fisicas.json
  def create
    @avaliacoes_fisica = AvaliacoesFisica.new(avaliacoes_fisica_params)

    respond_to do |format|
      if @avaliacoes_fisica.save
        format.html { redirect_to @avaliacoes_fisica, notice: 'Avaliacoes fisica was successfully created.' }
        format.json { render :show, status: :created, location: @avaliacoes_fisica }
      else
        format.html { render :new }
        format.json { render json: @avaliacoes_fisica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /avaliacoes_fisicas/1
  # PATCH/PUT /avaliacoes_fisicas/1.json
  def update
    respond_to do |format|
      if @avaliacoes_fisica.update(avaliacoes_fisica_params)
        format.html { redirect_to @avaliacoes_fisica, notice: 'Avaliacoes fisica was successfully updated.' }
        format.json { render :show, status: :ok, location: @avaliacoes_fisica }
      else
        format.html { render :edit }
        format.json { render json: @avaliacoes_fisica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /avaliacoes_fisicas/1
  # DELETE /avaliacoes_fisicas/1.json
  def destroy
    @avaliacoes_fisica.destroy
    respond_to do |format|
      format.html { redirect_to avaliacoes_fisicas_url, notice: 'Avaliacoes fisica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_avaliacoes_fisica
      @avaliacoes_fisica = AvaliacoesFisica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def avaliacoes_fisica_params
      params.require(:avaliacoes_fisica).permit(:cintura, :envergadura, :peitoral, :braco, :coxa, :gordura_abdomem, :gordura_braco, :gordura_coxa, :flexao, :agachamento, :abdominal, :corrida)
    end
end
