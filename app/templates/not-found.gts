import type { TOC } from '@ember/component/template-only';
import { LinkTo } from '@ember/routing';
import { pageTitle } from 'ember-page-title';

interface NotFoundSignature {
  Element: HTMLElement;
}

const NotFoundTemplate: TOC<NotFoundSignature> = <template>
  {{pageTitle "Page Not Found"}}
  <section class="not-found" aria-labelledby="not-found-heading">
    <h2 id="not-found-heading">404 — Page Not Found</h2>
    <p>The page you're looking for doesn't exist.
      <LinkTo @route="index">Head home?</LinkTo></p>
  </section>
</template>;

export default NotFoundTemplate;
