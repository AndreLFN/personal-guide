import React from 'react';
import MaterialTable from 'material-table';
import { AddBox, ArrowUpward } from "@material-ui/icons";


export default function MaterialTableDemo() {
  const [state, setState] = React.useState({
    columns: [
      { title: 'Name', field: 'name' },
      { title: 'CPF', field: 'CPF' , type: 'numeric'},
      { title: 'Idade', field: 'Idade', type: 'numeric' },
    
    ],
    data: [
      { 
        name: 'Seninha',
        CPF: '11111111111',
        Idade: 20
      },
      {
        name: 'Igor',
        CPF: '22222222222',
        Idade: 20
      },

      {
        name: 'Iza',
        CPF: '33333333333',
        Idade: 18
      },
    ],
  });

  return (
    <MaterialTable
      title="Buscar"
      columns={state.columns}
      data={state.data}
      editable={{
        onRowAdd: newData =>
          new Promise(resolve => {
            setTimeout(() => {
              resolve();
              const data = [...state.data];
              data.push(newData);
              setState({ ...state, data });
            }, 600);
          }),
        onRowUpdate: (newData, oldData) =>
          new Promise(resolve => {
            setTimeout(() => {
              resolve();
              const data = [...state.data];
              data[data.indexOf(oldData)] = newData;
              setState({ ...state, data });
            }, 600);
          }),
        onRowDelete: oldData =>
          new Promise(resolve => {
            setTimeout(() => {
              resolve();
              const data = [...state.data];
              data.splice(data.indexOf(oldData), 1);
              setState({ ...state, data });
            }, 600);
          }),
      }}
    />
  );
}