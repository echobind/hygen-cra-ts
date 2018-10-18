---
inject: true
to: src/stories/index.ts
skip_if: <%= dir || 'components' %>/<%= h.inflection.classify(name) %>
append: true
---
<% formattedName = h.inflection.classify(name) -%>
import '../<%= dir || "components" %>/<%= formattedName %>/stories';