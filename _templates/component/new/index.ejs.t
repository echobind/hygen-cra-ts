---
to: src/<%= dir || 'components' %>/<%= h.inflection.classify(name) %>/index.ts
---
<% formattedName = h.inflection.classify(name) -%>
export { default } from './<%= formattedName %>';