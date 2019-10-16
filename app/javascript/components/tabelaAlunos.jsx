import React, { Component } from 'react'
import MaterialTableDemo from './tableComponent'
import Grid from "@material-ui/core/Grid"
import './styles.css'

export default class tabelaAlunos extends Component {
  render() {
    return (
      <div className='container'>
        <MaterialTableDemo/>
      </div>
    )
  }
}
