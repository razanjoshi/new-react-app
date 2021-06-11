import React from "react"
import PropTypes from "prop-types"
class Tables extends React.Component {
  render () {
    return (
      <>
        <h1>
          Selenium Hubs with their Active nodes
        </h1>
        <p>
          (An example table + detail view scenario)
        </p>
      <main>
        <table>
          <thead>
            <tr>
              <th>
                Hub
              </th>
              <th>
                Active number
              </th>
              <th>
                Expected no. of hubs
              </th>
              <th>
                Selenium URL
              </th>
              <th></th>
            </tr>
          </thead>
          <tfoot>
            <tr>
              <th colspan='3'>
                Year: 2014
              </th>
            </tr>
          </tfoot>
          <tbody>
            { this.props.hubs.map(hub => (
              <tr>
                <React.Fragment>
                  <td>{hub.hub_number}</td>
                  <td>{hub.active}</td>
                  <td>{hub.active_expected}</td>
                  <td><a class='button' href='#'>{hub.url}</a></td>
                  <td class='select'>
                    <a class='button' href='#'>
                      Select
                    </a>
                  </td>
                </React.Fragment>
              </tr>
            ))}
          </tbody>
        </table>
        {/* <div class='detail'>
          <div class='detail-container'>
            <dl>
              <dt>
                Provider Name
              </dt>
              <dd>
                John Doe
              </dd>
              <dt>
                E-mail
              </dt>
              <dd>
                email@example.com
              </dd>
              <dt>
                City
              </dt>
              <dd>
                Detroit
              </dd>
              <dt>
                Phone-Number
              </dt>
              <dd>
                555-555-5555
              </dd>
              <dt>
                Last Update
              </dt>
              <dd>
                Jun 20 2014
              </dd>
              <dt>
                Notes
              </dt>
              <dd>
                Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, pede.
              </dd>
            </dl>
          </div>
          <div class='detail-nav'>
            <button class='close'>
              Close
            </button>
          </div>
        </div> */}
      </main>
      </>
    );
  }
}

Tables.propTypes = {
  hubNumber: PropTypes.node,
  active: PropTypes.node
};
export default Tables
