import "bootstrap";

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox.js';

initMapbox();

// if (window.location.pathname !== "/") {
//   const navbar = document.querySelector(".navbar-skills");
//   navbar.style.backgroundColor = "white";
//   navbar.style.position = "static";
//   const image = document.querySelector(".navbar-skills img");
//   image.src = "https://res.cloudinary.com/dcxgnsvxv/image/upload/v1574349676/txuczq2cr3q9c6kyjmpj.png";
// }
