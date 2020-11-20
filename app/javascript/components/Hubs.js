import React from "react"
import PropTypes from "prop-types"
class Hubs extends React.Component {
  render () {
    return (
        <div className="table-responsive">
          <table className="table table-dark">
            <thead>
              <tr>
                <th scope="col">Hub</th>
                <th scope="col">Active number</th>
                <th scope="col" className="text-right">
                  Actions
                </th>
              </tr>
            </thead>
            <tbody>
              { this.props.hubs.map(hub => (
                <tr>
                  <React.Fragment>
                    <td>{hub.hub_number}</td>
                    <td>{hub.active}</td>
                    <td></td>
                  </React.Fragment>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
    );
  }
}

Hubs.propTypes = {
  hubNumber: PropTypes.node,
  active: PropTypes.node
};
export default Hubs
