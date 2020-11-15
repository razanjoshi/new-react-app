import React from 'react';
import MaterialTable from 'material-table'


export const Table=()=>{
  const data=[{
    hub: 'Rajan', active: 12
  }]

  const columns=[
    { title: 'Hub', field: 'hub'},
    { title: 'Active Pods', field: 'active'}
  ]
  return(<div className="tableClass">
    <MaterialTable title="Material Table"
    data={data}
    columns={columns}

    />
  </div>
  );
}