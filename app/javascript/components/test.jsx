import React from 'react'
import {Link} from "react-router-dom";


export default () => (
  <div className="primary-color d-flex align-items-centnpm install @material-ui/coreer justify-content-center">
    <div className="jumbotron jumbotron-fluid bg-transparent">
      <div className="container secondary-color">
        <h1 className="display-5 text-center">Nosso Objetivo</h1>
        <h3 className="display-6 text-center">
        Personal Guide oferece serviços de suporte a personal trainers, focando em auxiliar o gerenciamento de seus clientes.
        </h3>
        <hr className="my-4" />
        <Link
          to="/"
          className="btn btn-lg custom-button"
          role="button"
        >
          Voltar
        </Link>
      </div>
    </div>
  </div>
);
