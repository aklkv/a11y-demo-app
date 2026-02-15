import type { TOC } from '@ember/component/template-only';
import { LinkTo } from '@ember/routing';
import { pageTitle } from 'ember-page-title';

interface ApplicationSignature {
  Element: HTMLDivElement;
}

const ApplicationTemplate: TOC<ApplicationSignature> = <template>
  {{pageTitle "Ember A11y Demo"}}
  <header>
    <div class="container">
      <div class="title">
        <div class="brand-logo">
          <img alt="" src="assets/images/a11y-zoey.png" />
        </div>
        <h1>Ember Accessibility demo app</h1>
        <div class="brand-logo">
          <img alt="" src="assets/images/a11y-tomster.png" />
        </div>

      </div>
    </div>
  </header>
  <div class="main">
    <div class="grid-container">
      <nav class="navigation" aria-label="Main navigation">
        <ul>
          <li><LinkTo @route="index">Home</LinkTo></li>
          <li><span class="nav-heading">Examples</span></li>
          <li><LinkTo @route="examples.aria-role">Aria-Role</LinkTo></li>
          <li><LinkTo @route="examples.input-helper">Inputs</LinkTo></li>
          <li><LinkTo @route="examples.link-to-helper">Link-to</LinkTo></li>
          <li><LinkTo @route="examples.textarea-helper">Textarea</LinkTo></li>
        </ul>
      </nav>

      <main class="content">
        {{outlet}}
      </main>
    </div>
  </div>

  <footer class="content-info">
    <p class="content-info_copyright">
      <small><span
          xmlns:dct="http://purl.org/dc/terms/"
          property="dct:title"
        >ember-a11y-demo</span>
        is licensed under a
        <a
          rel="license"
          href="http://creativecommons.org/licenses/by/4.0/"
        >Creative Commons Attribution 4.0 International License</a>. It was
        created with a little inspiration, love and hard work.</small>
    </p>
    <p class="content-info_social">
    </p>
  </footer>
</template>;

export default ApplicationTemplate;
