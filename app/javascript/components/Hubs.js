import React from "react"
import PropTypes from "prop-types"
class Hubs extends React.Component {
  render () {
    return (
      // <React.Fragment>
      // //   Hub Number: {this.props.hubNumber}
      // //   Active: {this.props.active}
      // // </React.Fragment>
      // <React.Fragment>
      //     <td>{this.props.hub_number}</td>
      //     <td>{this.props.active}</td>
      // </React.Fragment>

      <>
        <div className="table-responsive">
          <table className="table">
            <thead>
              <tr>
                <th scope="col">Hub</th>
                <th scope="col">Active number</th>
                <th scope="col" className="text-right">
                  Actions
                </th>
              </tr>
            </thead>
            <tbody>{this.props.hubs}</tbody>
          </table>
        </div>
      </>
    );
  }
}

Hubs.propTypes = {
  hubNumber: PropTypes.node,
  active: PropTypes.node
};
export default Hubs
