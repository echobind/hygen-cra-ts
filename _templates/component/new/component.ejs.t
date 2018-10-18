---
to: src/<%= dir || 'components' %>/<%= h.inflection.classify(name) %>/<%= h.inflection.classify(name) %>.tsx
---
<% formattedName = h.inflection.classify(name) -%>
<% if(componentType === 'functional'){ -%>
import * as React from 'react';

export default function() {
  return (
    <div className="<%= h.inflection.dasherize(name) %>">
      <h1>Hola! <%= formattedName %> Created!</h1>
    </div>
  );
}

<% } -%>
<% if(componentType === 'stateful'){ -%>
import * as React from 'react';

export default class <%= formattedName %> extends React.PureComponent {
  state = {}

  render() {
    return (
      <div className="<%= h.inflection.dasherize(name) %>">
        <h1>Hola! <%= formattedName %> Created!</h1>
      </div>
    );
  }
}
<% } -%>