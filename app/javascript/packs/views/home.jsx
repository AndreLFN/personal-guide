import React from "react";
import {render} from "react-dom";
import Routes from "../../routes/routes";


document.addEventListener("DOMContentLoaded", () => {
  render(
    Routes,
    document.body.appendChild(document.createElement("div"))
  );
});
