import React from "react";
import {BrowserRouter as Router, Route, Switch} from "react-router-dom";
import ThemeProvider from '@material-ui/styles/ThemeProvider';

import Home from "../components/header";
import Test from "../components/test";

import SingIn from "../components/singin";
import SingUp from "../components/singup";
import Album from "../components/bibliotecaAtividades";
import Pricing from "../components/logadoPlano";
import Alunos from "../components/tabelaAlunos";
import Aluno from "../components/Aluno";
import NovoAluno from "../components/NovoAluno";
import { createMuiTheme } from '@material-ui/core/styles';

const theme = createMuiTheme();



export default (
  <ThemeProvider theme={theme}>
  <Router>
    <Switch>
      <Route path="/" exact component={Home} />
      <Route path="/test" exact component={Test} />

      <Route path="/singin" exact component={SingIn} />
      <Route path="/singup" exact component={SingUp} />
      <Route path="/album" exact component={Album} />
      <Route path="/logado" exact component={Pricing} />
      <Route path="/alunos" exact component={Alunos} />
      <Route path="/aluno/:id" exact component={Aluno} />
      <Route path="/novoaluno" exact component={NovoAluno} />
    </Switch>
  </Router>
  </ThemeProvider>
);
