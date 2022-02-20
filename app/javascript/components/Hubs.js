import React from "react"
import PropTypes from "prop-types"
class Hubs extends React.Component {
  render () {
    return (
        <div className="table-responsive">
          <table className="table">
            <thead>
              <tr>
                <th scope="col" className="text-center">Hub</th>
                <th scope="col" className="text-center">Active number</th>
                <th scope="col" className="text-center">Expected no. of hubs</th>
                <th scope="col">Selenium URL</th>
                <th scope="col" className="text-right">
                  Actions
                </th>
              </tr>
            </thead>
            <tbody>
              { this.props.hubs.map(hub => (
                <tr>
                  <React.Fragment>
                    <td className="text-center">{hub.hub_number}</td>
                    <td className="text-center">{hub.active}</td>
                    <td className="text-center">{hub.active_expected}</td>
                    <td>{hub.url}</td>
                    <td><button class="btn btn-outline-primary">edit</button></td>
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
