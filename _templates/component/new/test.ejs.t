---
to: src/<%= dir || 'components' %>/<%= h.inflection.classify(name) %>/<%= h.inflection.classify(name) %>.test.tsx
---
<% formattedName = h.inflection.classify(name) -%>
import * as React from 'react';
import * as ReactDOM from 'react-dom';
import * as renderer from 'react-test-renderer';
import  <%= formattedName %> from './<%= formattedName %>';

it('renders without crashing', () => {
  const div = document.createElement('div');
  ReactDOM.render(<<%= formattedName %> />, div);
  ReactDOM.unmountComponentAtNode(div);
});

it('renders correctly', () => {
  const tree = renderer
    .create(<<%= formattedName %> />)
    .toJSON();

  expect(tree).toMatchSnapshot();
});
