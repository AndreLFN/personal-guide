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

  private

  def aluno_params
    params.permit(:nome, :altura, :peso, :objetivo)
  end

  def aluno
    @aluno ||= Aluno.find(params[:id])
  end

  def update
    respond_to do |format|
      if @exercicio.update(exercicio_params)
        format.html { redirect_to @exercicio, notice: 'Exercicio was successfully updated.' }
        format.json { render :show, status: :ok, location: @exercicio }
      else
        format.html { render :edit }
        format.json { render json: @exercicio.errors, status: :unprocessable_entity }
      end
    end
  end

end
