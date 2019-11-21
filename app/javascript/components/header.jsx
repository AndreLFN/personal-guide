import React from "react";
import { Link } from "react-router-dom";
import Logo from "../../assets/images/logos/logo.png";

export default () => (
  <div className="primary-color d-flex align-items-center justify-content-center" style={{overflowY:"hidden"}}>
    <div className="jumbotron jumbotron-fluid bg-transparent">
      <div class="divcontainer" style={{display:"flex", justifyContent:"center"}}>
        <img src={Logo}/>
      </div>  
      <div className="container secondary-color"> 
        <h1 className="display-4 text-center">PERSONAL GUIDE</h1>
        <p className="lead text-center">Bem Vindo</p>
        <hr className="my-4" />
        <Link to="/test/" className="btn btn-lg custom-button" role="button">
          Sobre nós
        </Link>
        <Link
          to="/singin"
          className="btn btn-lg custom-button"
          role="button"
        >Login</Link>
        <Link
          to="/singup"
          className="btn btn-lg custom-button"
          role="button"
        >Cadastro</Link>
        <Link
          to="/alunos"
          className="btn btn-lg custom-button"
          role="button"
        >Alunos</Link>
        <Link
          to="/logado"
          className="btn btn-lg custom-button"
          role="button"
        >Planos</Link>
        <Link
          to="/album"
          className="btn btn-lg custom-button"
          role="button"
        >Exercicíos</Link>
        <Link
          to="/calendar"
          className="btn btn-lg custom-button"
          role="button"
        >Calendario</Link>
      </div>
    </div>
  </div>
);