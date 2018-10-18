---
to: src/<%= dir || 'components' %>/<%= h.inflection.classify(name) %>/stories.tsx
---
<% formattedName = h.inflection.classify(name) -%>
import { storiesOf } from '@storybook/react';
import * as React from 'react';
import <%= formattedName %> from './index';

storiesOf('<%= formattedName %>', module)
  .add('Default', () => <<%= formattedName %> />);