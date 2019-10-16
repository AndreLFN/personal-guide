import React from "react";
import {BrowserRouter as Router, Route, Switch} from "react-router-dom";

import Home from "components/header";
import Test from "components/test";


export default (
  <Router>
    <Switch>
      <Route path="/" exact component={Home} />
      <Route path="/test" exact component={Test} />
    </Switch>
  </Router>
);
