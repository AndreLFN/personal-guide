import React, { Component } from 'react'
import MaterialTable from "material-table";
import { AddBox, ArrowUpward } from "@material-ui/icons";
import AppBar from "@material-ui/core/AppBar";
import Button from "@material-ui/core/Button";
import CameraIcon from "@material-ui/icons/PhotoCamera";
import Card from "@material-ui/core/Card";
import CardActions from "@material-ui/core/CardActions";
import CardContent from "@material-ui/core/CardContent";
import CardMedia from "@material-ui/core/CardMedia";
import CssBaseline from "@material-ui/core/CssBaseline";
import Grid from "@material-ui/core/Grid";
import Toolbar from "@material-ui/core/Toolbar";
import Typography from "@material-ui/core/Typography";
import { withStyles } from '@material-ui/styles';
import Container from "@material-ui/core/Container";
import Link from "@material-ui/core/Link";
import PropTypes from 'prop-types';
import Alunos from "./Alunos";

const styles = theme => ({

  appBar: {
    borderBottom: `1px solid ${theme.palette.divider}`,
    margin: "auto"
  },

  toolbar: {
    flexWrap: "wrap"
  },
  toolbarTitle: {
    flexGrow: 1
  },

  link: {
    margin: theme.spacing(1, 1.5)
  },

  heroContent: {
    padding: theme.spacing(8, 0, 6)
  },
  toolbar: {
    margin: "auto"
  }
}); 



class MaterialTableDemo extends Component {

  constructor(props) {
    super(props);
    this.state = {
      columns: [
        { title: "Name", field: "nome" },
        // { title: "CPF", field: "CPF", type: "numeric" },
        { title: "Idade", field: "idade", type: "numeric" },
        { title: "Altura", field: "altura", type: "numeric" },
        { title: "Peso", field: "peso", type: "numeric" },
        { title: "Objetivo", field: "objetivo"},
        // { title: "Massa corporal", field: "Massa_corporal", type: "numeric" },
        // { title: "Pago", field: "Pagamento", type: "string" }
    ],
      data: []
    };
  }

  async componentDidMount(){
    const url = "api/alunos";
    fetch(url)
      .then(response => {
        if (response.ok) {
          return response.json();
        }
        throw new Error("Network response was not ok.");
      })
      .then(function(response){
        this.setState({ data: response })
      }.bind(this));
  }

  async insertAluno(newData){
    let fetchData = { 
      method: 'POST', 
      body: JSON.stringify(newData),
      headers: {
        'Content-Type': 'application/json'
      }
    }
    const url = "api/alunos/";
    fetch(url, fetchData)
      .then(function(response) {
        if (response.ok) {
          return response.json()
        }
        throw new Error("Network response was not ok.");
      }).then(function(response){
        const data = [...this.state.data];
        data.push(response);
        this.setState({ ...this.state, data });
      }.bind(this));
  }

  async deleteAluno(oldData){
    let fetchData = { 
      method: 'DELETE',
    }
    const url = "api/alunos/" + oldData.id;
    fetch(url, fetchData)
      .then(function(response) {
        if (response.ok) {
          const data = [...this.state.data];
          data.splice(data.indexOf(oldData), 1,newData);
          return this.setState({ ...this.state, data });
        }
        throw new Error("Network response was not ok.");
      }.bind(this));
  }

  async updateAluno(newData){
    let fetchData = { 
      method: 'PUT', 
      body: JSON.stringify(newData),
      headers: {
        'Content-Type': 'application/json'
      }
    }
    const url = "api/alunos/" + newData.id;
    fetch(url, fetchData)
      .then(function(response) {
        if (response.ok) {
          const data = [...this.state.data];
          data.splice(data.indexOf(oldData), 1, newData);
          return this.setState({ ...this.state, data });
        }
        throw new Error("Network response was not ok.");
      }.bind(this));
  }

  render(){
    const { classes } = this.props;

  return (
    <React.Fragment>
      <CssBaseline />
      <AppBar
        position="static"
        color="default"
        elevation={0}
        className={classes.appBar}
      >
        <Toolbar className={classes.toolbar}>
          <nav>
            <Link
              variant="button"
              color="textPrimary"
              href="#"
              className={classes.link}
            >
              Tabela de Alunos
            </Link>
            <Link
              variant="button"
              color="textPrimary"
              href="#"
              className={classes.link}
            >
              Calendário de Agendamentos
            </Link>
            <Link
              variant="button"
              color="textPrimary"
              href="#"
              className={classes.link}
            >
              Listagem de Pacotes
            </Link>
            <Link
              variant="button"
              color="textPrimary"
              href="#"
              className={classes.link}
            >
              Biblioteca de Exercícios
            </Link>
          </nav>
        </Toolbar>
      </AppBar>
      <MaterialTable
        title="Buscar"
        columns={this.state.columns}
        data={this.state.data}
        editable={{
          onRowAdd: newData =>
            new Promise(resolve => {
              setTimeout(() => {
                resolve();
                newData.altura = parseFloat(newData.altura)
                newData.peso = parseFloat(newData.peso)
                newData.idade = parseFloat(newData.idade)
                this.insertAluno(newData);
              }, 600);
            }),
          onRowUpdate: newData =>
            new Promise(resolve => {
              setTimeout(() => {
                resolve();
                newData.altura = parseFloat(newData.altura)
                newData.peso = parseFloat(newData.peso)
                this.updateAluno(newData);
              }, 600);
            }),
          onRowDelete: oldData =>
            new Promise(resolve => {
              setTimeout(() => {
                resolve();
                this.deleteAluno(oldData)
              }, 600);
            })
        }}
      />
    </React.Fragment>
  )}
};


MaterialTableDemo.propTypes = {
  classes: PropTypes.object.isRequired,
};

export default withStyles(styles)(MaterialTableDemo);