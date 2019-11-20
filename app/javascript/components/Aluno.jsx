import React from "react";
import { Link } from "react-router-dom";

class Aluno extends React.Component {
  constructor(props) {
    super(props);
    this.state = { aluno: { nome: "", altura: "", peso:"", objetivo:""  } };

    this.addHtmlEntities = this.addHtmlEntities.bind(this);
  }
  componentDidMount() {
    const {
      match: {
        params: { id }
      }
    } = this.props;

    const url = '/show/${id}';//URL DA ROTA DO RAILS

    fetch(url)
      .then(response => {
        if (response.ok) {
          return response.json();
        }
        throw new Error("Network response was not ok.");
      })
      .then(response => this.setState({ recipe: response }));
  }
  
  addHtmlEntities(str) {
    return String(str)
      .replace(/&lt;/g, "<")
      .replace(/&gt;/g, ">");
  }



  render() {
    const { aluno } = this.state;

    return (
      <div className="">
        <div className="hero position-relative d-flex align-items-center justify-content-center">
          <div className="overlay bg-dark position-absolute" />
          <h1 className="display-4 position-relative text-white">
            {aluno.nome}
          </h1>
        </div>
        <div className="container py-5">
          <div className="row">
            <div className="col-sm-12 col-lg-3">
                <h5 className="mb-2">Objetivo</h5>
                {aluno.objetivo}
            </div>
            <div className="col-sm-12 col-lg-2">
              <button type="button" className="btn btn-danger">
                Deletar Aluno
              </button>
            </div>
          </div>
          <Link to="/alunos" className="btn btn-link">
            Voltar para alunos
          </Link>
        </div>
      </div>
    );
  }

}

export default Aluno;