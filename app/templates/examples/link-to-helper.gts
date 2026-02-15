import type { TOC } from '@ember/component/template-only';
import { LinkTo } from '@ember/routing';
import { pageTitle } from 'ember-page-title';

interface LinkToHelperSignature {
  Element: HTMLDivElement;
}

const linkToSnippet = `import { LinkTo } from '@ember/routing';

<template>
  <LinkTo @route="examples.link-to-helper.photo-gallery">
    Great Hamster Photos
  </LinkTo>
</template>`;

const LinkToHelperTemplate: TOC<LinkToHelperSignature> = <template>
  {{pageTitle "LinkTo"}}
  <h3 class="section-title">LinkTo component</h3>

  <p>
    Ember's built-in component for creating links within an Ember app.
  </p>

  <h4>Examples</h4>

  <div class="example">
    <h5>Link to another page</h5>
    <div class="output">
      <LinkTo @route="examples.link-to-helper.photo-gallery">
        Great Hamster Photos
      </LinkTo>
    </div>
    <div class="source">
      <pre><code>{{linkToSnippet}}</code></pre>
    </div>
  </div>

  <h3 class="section-title">Links</h3>

  <ul>
    <li>
      <a href="https://api.emberjs.com/ember/release/classes/LinkTo">
        Documentation
      </a>
    </li>
    <li>
      <a
        href="https://github.com/emberjs/ember.js/tree/main/packages/%40ember/routing/lib/link-to.ts"
      >
        Source code
      </a>
    </li>
  </ul>

  {{outlet}}
</template>;

export default LinkToHelperTemplate;
