import Component from '@glimmer/component';
import { tracked } from '@glimmer/tracking';
import { on } from '@ember/modifier';
import { pageTitle } from 'ember-page-title';

interface TextareaHelperSignature {
  Element: HTMLDivElement;
}

const textareaSnippet = `import Component from '@glimmer/component';
import { tracked } from '@glimmer/tracking';
import { on } from '@ember/modifier';

export default class MyComponent extends Component {
  @tracked textareaValue = '987';

  updateTextareaValue = (event: Event): void => {
    this.textareaValue = (event.target as HTMLTextAreaElement).value;
  };

  <template>
    <label>Textarea Label
      <textarea
        {{on "input" this.updateTextareaValue}}
      >{{this.textareaValue}}</textarea>
    </label>
  </template>
}`;

export default class TextareaHelperTemplate extends Component<TextareaHelperSignature> {
  @tracked textareaValue = '987';

  updateTextareaValue = (event: Event): void => {
    this.textareaValue = (event.target as HTMLTextAreaElement).value;
  };

  <template>
    {{pageTitle "Textarea Element"}}
    <h3 class="section-title">Textarea element</h3>

    <p>
      Native HTML
      <code>textarea</code>
      element with tracked state.
    </p>

    <h4>Examples</h4>

    <div class="example">
      <h5>Textarea with a value</h5>
      <div class="output">
        <label>Textarea Label
          <textarea
            {{on "input" this.updateTextareaValue}}
          >{{this.textareaValue}}</textarea>
        </label>
      </div>
      <div class="source">
        <pre><code>{{textareaSnippet}}</code></pre>
      </div>
    </div>

    <h3 class="section-title">Links</h3>

    <ul>
      <li>
        <a
          href="https://api.emberjs.com/ember/release/classes/Ember.Templates.helpers/methods/textarea?anchor=textarea"
        >
          Documentation
        </a>
      </li>
      <li>
        <a
          href="https://developer.mozilla.org/en-US/docs/Web/HTML/Element/textarea"
        >
          MDN: &lt;textarea&gt;
        </a>
      </li>
    </ul>

    {{outlet}}
  </template>
}
