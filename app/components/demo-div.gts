import type { TOC } from '@ember/component/template-only';

interface DemoDivSignature {
  Args: {
    ariaRole: string;
  };
  Element: HTMLDivElement;
}

const DemoDiv: TOC<DemoDivSignature> = <template>
  <div class="demo-div" role={{@ariaRole}}>
    This div has a role set to "{{@ariaRole}}"
  </div>
</template>;

export default DemoDiv;
