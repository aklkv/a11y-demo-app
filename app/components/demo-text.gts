import type { TOC } from '@ember/component/template-only';

interface DemoTextSignature {
  Blocks: {
    default: [];
  };
  Element: HTMLParagraphElement;
}

const DemoText: TOC<DemoTextSignature> = <template>
  <p class="demo-text">{{yield}}</p>
</template>;

export default DemoText;
