import type { TOC } from '@ember/component/template-only';
import { pageTitle } from 'ember-page-title';

interface ExamplesSignature {
  Element: HTMLDivElement;
}

const ExamplesTemplate: TOC<ExamplesSignature> = <template>
  {{pageTitle "Examples"}}
  <h2 class="page-title">Examples</h2>
  {{outlet}}
</template>;

export default ExamplesTemplate;
