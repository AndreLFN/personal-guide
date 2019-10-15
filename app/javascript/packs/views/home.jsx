import React from "react";
import {render} from "react-dom";
import Routes from "../../routes";

import 'bootstrap/dist/css/bootstrap.min.css';
import 'bootstrap/dist/js/bootstrap.bundle.min';

document.addEventListener("DOMContentLoaded", () => {
  render(
    Routes,
    document.body.appendChild(document.createElement("div"))
  );
});