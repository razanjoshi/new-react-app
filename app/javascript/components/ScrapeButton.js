// import React from "react"
// import { Link } from "react-router-dom";
// class ScrapeButton extends React.Component {
//   render () {
//     const handleSubmit = (body) => {
//       const url = "/todos/update";
//       const token = document.querySelector('meta[name="csrf-token"]').content;
      
//       fetch(url, {
//         method: "PUT",
//         headers: {
//           "X-CSRF-Token": token,
//           "Content-Type": "application/json"
//         },
//         body: JSON.stringify(body)
//       })
//         .then(response => {
//           if (response.ok) {
//             return response.json();
//           }
//           throw new Error("Network response was not ok.");
//         })
//         .then(response => {
//           console.log(response);
//           window.location.reload(false);
//         })
//         .catch(() => console.log('An error occurred while adding the todo item'));
//     }
//     return (
//       <button
//         className="btn btn-default"
//         onClick={handleSubmit}>Scrape Now</button>
//     );
//   }
// }


// // function Welcome(props) {
// //   return <h1>Hello, {props.name}</h1>;
// // }

// // function App() {
// //   return (
// //     <div>
// //       <Welcome name="Sara" />
// //       <Welcome name="Cahal" />
// //       <Welcome name="Edite" />
// //     </div>
// //   );
// // }

// // ReactDOM.render(
// //   <App />,
// //   document.getElementById('root')
// // );

// export default ScrapeButton