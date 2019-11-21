class AlunosController < ApplicationController

  def index
    aluno = Aluno.all.order(created_at: :desc)
    render json: aluno
  end

  def create
    aluno = Aluno.create!(aluno_params)
    if aluno
      render json: aluno
    else
      render json: aluno.errors
    end
  end

  def show
    if aluno
      render json: aluno
    else
      render json: aluno.errors
    end
  end

  def destroy
    aluno&.destroy
    render json: { message: 'Aluno deletado!' }
  end

  # PATCH/PUT /alunos/1
  # PATCH/PUT /alunos/1.json
  def update
    respond_to do |format|
      @aluno = Aluno.find(params[:id])
      if @aluno.update(aluno_params)
        format.html { redirect_to @aluno, notice: 'Aluno was successfully updated.' }
        format.json { render :show, status: :ok, location: @aluno }
      else
        format.html { render :edit }
        format.json { render json: @aluno.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def aluno_params
    params.permit(:nome, :altura, :peso, :objetivo, :idade)
  end

  def aluno
    @aluno ||= Aluno.find(params[:id])
  end

  

end
