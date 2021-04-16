// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.

import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'
import { Table } from './table'
import { Link } from "react-router-dom"


const Hello = props => (
  <div>Hello {props.name}!</div>
)

Hello.defaultProps = {
  name: 'David'
}

Hello.propTypes = {
  name: PropTypes.string
}

document.addEventListener('DOMContentLoaded', () => {
  // ReactDOM.render(
  //   <Hello name="Rajan" />,

    
  //   document.body.appendChild(document.createElement('div')),
  // ),
  

  ReactDOM.render(
    <Table></Table>,
    document.getElementById('root')
  )
})
