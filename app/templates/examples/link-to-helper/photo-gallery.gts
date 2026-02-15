import type { TOC } from '@ember/component/template-only';
import { pageTitle } from 'ember-page-title';

interface PhotoGallerySignature {
  Element: HTMLDivElement;
}

const PhotoGalleryTemplate: TOC<PhotoGallerySignature> = <template>
  {{pageTitle "Photo Gallery"}}
  <h1>Photo gallery loaded</h1>

  {{outlet}}
</template>;

export default PhotoGalleryTemplate;
