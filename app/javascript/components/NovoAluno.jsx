import React from "react";
import { Link } from "react-router-dom";

class NewRecipe extends React.Component {
    constructor(props) {
      super(props);
      this.state = {
        nome: "",
        altura: 0.0,
        peso: 0.0,
        objetivo: ""
      };
  
      this.onChange = this.onChange.bind(this);
      this.onSubmit = this.onSubmit.bind(this);
      this.stripHtmlEntities = this.stripHtmlEntities.bind(this);
    }

    stripHtmlEntities(str) {
        return String(str)
          .replace(/</g, "&lt;")
          .replace(/>/g, "&gt;");
      }

    onChange(event) {
    this.setState({ [event.target.name]: event.target.value });
    }

    onSubmit(event) {
        event.preventDefault();
        const url = "alunos/create";
        const { nome, altura, peso, objetivo } = this.state;

        if (name.length == 0 || altura == 0 || peso == 0 || objetivo.length == 0)
            return;

        const body = {
            nome,
            altura,
            peso,
            objetivo
        };

        const token = document.querySelector('meta[name="csrf-token"]').content;
        fetch(url, {
            method: "POST",
            headers: {
            "X-CSRF-Token": token,
            "Content-Type": "application/json"
            },
            body: JSON.stringify(body)
        })
            .then(response => {
            if (response.ok) {
                return response.json();
            }
            throw new Error("Network response was not ok.");
            })
            .then(response => this.props.history.push(`/aluno/${response.id}`))
            .catch(error => console.log(error.message));
    }

    render() {
        return (
          <div className="container mt-5">
            <div className="row">
              <div className="col-sm-12 col-lg-6 offset-lg-3">
                <h1 className="font-weight-normal mb-5">
                  Adicione um novo aluno
                </h1>
                <form onSubmit={this.onSubmit}>
                  <div className="form-group">
                    <label htmlFor="nomeAluno">Nome do aluno</label>
                    <input
                      type="text"
                      name="nome"
                      id="nomeAluno"
                      className="form-control"
                      required
                      onChange={this.onChange}
                    />
                  </div>
                  <div className="form-group">
                    <label htmlFor="alturaAluno">Altura</label>
                    <input
                      type="decimal"
                      name="altura"
                      id="alturaAluno"
                      className="form-control"
                      required
                      onChange={this.onChange}
                    />
                  </div>
                  <div className="form-group">
                    <label htmlFor="pesoAluno">Peso</label>
                    <input
                      type="decimal"
                      name="peso"
                      id="pesoAluno"
                      className="form-control"
                      required
                      onChange={this.onChange}
                    />
                  </div>
                  <div className="form-group">
                    <label htmlFor="objetivoAluno">Objetivo</label>
                    <input
                      type="decimal"
                      name="objetivo"
                      id="objetivoAluno"
                      className="form-control"
                      required
                      onChange={this.onChange}
                    />
                  </div>
                  <button type="submit" className="btn custom-button mt-3">
                    Criar aluno
                  </button>
                  <Link to="/alunos" className="btn btn-link mt-3">
                    Voltar para alunos
                  </Link>
                </form>
              </div>
            </div>
          </div>
        );
      }

  }
  
  export default NewRecipe;