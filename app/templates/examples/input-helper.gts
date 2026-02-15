import Component from '@glimmer/component';
import { tracked } from '@glimmer/tracking';
import { on } from '@ember/modifier';
import { pageTitle } from 'ember-page-title';

interface InputHelperSignature {
  Element: HTMLDivElement;
}

const textInputSnippet = `import Component from '@glimmer/component';
import { tracked } from '@glimmer/tracking';
import { on } from '@ember/modifier';

export default class MyComponent extends Component {
  @tracked textValue = '987';

  updateTextValue = (event: Event): void => {
    this.textValue = (event.target as HTMLInputElement).value;
  };

  <template>
    <label>Demo Label:
      <input
        type="text"
        value={{this.textValue}}
        {{on "input" this.updateTextValue}}
      />
    </label>
  </template>
}`;

const checkboxSnippet = `import Component from '@glimmer/component';
import { tracked } from '@glimmer/tracking';
import { on } from '@ember/modifier';

export default class MyComponent extends Component {
  @tracked isChecked = true;

  toggleChecked = (event: Event): void => {
    this.isChecked = (event.target as HTMLInputElement).checked;
  };

  <template>
    <label>
      <input
        type="checkbox"
        checked={{this.isChecked}}
        {{on "change" this.toggleChecked}}
      />
      Check!
    </label>
  </template>
}`;

export default class InputHelperTemplate extends Component<InputHelperSignature> {
  @tracked textValue = '987';
  @tracked isChecked = true;

  updateTextValue = (event: Event): void => {
    this.textValue = (event.target as HTMLInputElement).value;
  };

  toggleChecked = (event: Event): void => {
    this.isChecked = (event.target as HTMLInputElement).checked;
  };

  <template>
    {{pageTitle "Input Elements"}}
    <h3 class="section-title">Input elements</h3>

    <p>
      Native HTML
      <code>input</code>
      elements with tracked state. Supports text fields and checkboxes.
    </p>

    <h4 class="section-title">Examples</h4>

    <div class="example">
      <h5>Text field with a value</h5>
      <div class="output">
        <label>Demo Label:
          <input
            type="text"
            value={{this.textValue}}
            {{on "input" this.updateTextValue}}
          />
        </label>
      </div>
      <div class="source">
        <pre><code>{{textInputSnippet}}</code></pre>
      </div>
    </div>

    <div class="example">
      <h5>Checkbox (checked)</h5>
      <div class="output">
        <label>
          <input
            type="checkbox"
            checked={{this.isChecked}}
            {{on "change" this.toggleChecked}}
          />
          Check!
        </label>
      </div>
      <div class="source">
        <pre><code>{{checkboxSnippet}}</code></pre>
      </div>
    </div>

    <h3 class="section-title">Links</h3>
    <ul>
      <li>
        <a
          href="https://api.emberjs.com/ember/release/classes/Ember.Templates.helpers/methods/input?anchor=input"
        >
          Documentation
        </a>
      </li>
      <li>
        <a
          href="https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input"
        >
          MDN: &lt;input&gt;
        </a>
      </li>
    </ul>

    {{outlet}}
  </template>
}
