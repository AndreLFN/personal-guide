import React from "react";
import {BrowserRouter as Router, Route, Switch} from "react-router-dom";

import Home from "components/header";
import Test from "components/test";
import SingIn from "components/singin";
import SingUp from "components/singup"

export default (
  <Router>
    <Switch>
      <Route path="/" exact component={Home} />
      <Route path="/test" exact component={Test} />
      <Route path="/singin" exact component={SingIn} />
      <Route path="/singup" exact component={SingUp} />
    </Switch>
  </Router>
);
