import React, {Component} from "react";
import ReactDOM from "react-dom";
import App from "./App";

it("renders without crashing", () => {const div = document.createElement("div");
  ReactDOM.render(<App />, div);
  ReactDOM.unmountComponentAtNode(div);
});

test("falsey mcfalseface", () => {
// ch-ch-ch-changes
expect(false).toBe(false);
});
test("let's get 100% code coverage!", () => {expect(true).toBe(false)});
