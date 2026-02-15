import type { TOC } from '@ember/component/template-only';
import DemoDiv from 'a11y-demo-app/components/demo-div';
import { pageTitle } from 'ember-page-title';

interface AriaRoleSignature {
  Element: HTMLElement;
}

const AriaRoleTemplate: TOC<AriaRoleSignature> = <template>
  {{pageTitle "Aria Roles"}}
  <h3 class="section-title">Aria-role support</h3>
  <p class="lead">Ember provides aria role support with the addition of the
    <kbd>ariaRole</kbd>
    property.
  </p>
  <section>
    <h4 class="section-title">Aria Role</h4>
    <p>For this section, aria- roles have been applied to a div element. Note:
      this does not mean that these roles are appropriate for a div element.
      This is only to demonstrate what happens when these roles are on a div
      element. Many roles are only appropriate for specific HTML elements and
      the spec specifically defines which are acceptable.</p>
    <p>There are four usable categories:
      <a href="#role-widget">Widget</a>,
      <a href="#role-composite">widgets that act as composite interface widgets</a>,
      <a href="#role-docstructure">document structure</a>, and
      <a href="#role-landmark">landmarks</a>.</p>

    <article class="aria-roles">
      <h5 id="role-widget">Widget Roles</h5>
      <DemoDiv @ariaRole="alert" />
      <DemoDiv @ariaRole="alertdialog" />
      <DemoDiv @ariaRole="button" />
      <DemoDiv @ariaRole="checkbox" />
      <DemoDiv @ariaRole="dialog" />
      <DemoDiv @ariaRole="gridcell" />
      <DemoDiv @ariaRole="link" />
      <DemoDiv @ariaRole="log" />
      <DemoDiv @ariaRole="marquee" />
      <DemoDiv @ariaRole="menuitem" />
      <DemoDiv @ariaRole="menuitemcheckbox" />
      <DemoDiv @ariaRole="option" />
      <DemoDiv @ariaRole="progressbar" />
      <DemoDiv @ariaRole="radio" />
      <DemoDiv @ariaRole="scrollbar" />
      <DemoDiv @ariaRole="slider" />
      <DemoDiv @ariaRole="spinbutton" />
      <DemoDiv @ariaRole="status" />
      <DemoDiv @ariaRole="tab" />
      <DemoDiv @ariaRole="tabpanel" />
      <DemoDiv @ariaRole="textbox" />
      <DemoDiv @ariaRole="timer" />
      <DemoDiv @ariaRole="tooltip" />
      <DemoDiv @ariaRole="treeitem" />
    </article>

    <article class="aria-roles">

      <h5 id="role-composite">Widgets that act as composite user interface
        widgets</h5>
      <DemoDiv @ariaRole="combobox" />
      <DemoDiv @ariaRole="grid" />
      <DemoDiv @ariaRole="listbox" />
      <DemoDiv @ariaRole="menu" />
      <DemoDiv @ariaRole="menubar" />
      <DemoDiv @ariaRole="radiogroup" />
      <DemoDiv @ariaRole="tablist" />
      <DemoDiv @ariaRole="tree" />
      <DemoDiv @ariaRole="treegrid" />
    </article>

    <article class="aria-roles">

      <h5 id="role-docstructure">Document Structure</h5>
      <DemoDiv @ariaRole="article" />
      <DemoDiv @ariaRole="columnheader" />
      <DemoDiv @ariaRole="definition" />
      <DemoDiv @ariaRole="directory" />
      <DemoDiv @ariaRole="document" />
      <DemoDiv @ariaRole="group" />
      <DemoDiv @ariaRole="heading" />
      <DemoDiv @ariaRole="img" />
      <DemoDiv @ariaRole="list" />
      <DemoDiv @ariaRole="listitem" />
      <DemoDiv @ariaRole="math" />
      <DemoDiv @ariaRole="note" />
      <DemoDiv @ariaRole="presentation" />
      <DemoDiv @ariaRole="region" />
      <DemoDiv @ariaRole="row" />
      <DemoDiv @ariaRole="rowgroup" />
      <DemoDiv @ariaRole="rowheader" />
      <DemoDiv @ariaRole="separator" />
      <DemoDiv @ariaRole="toolbar" />

    </article>

    <article class="aria-roles">
      <h5 id="role-landmark">Landmark Roles</h5>
      <DemoDiv @ariaRole="application" />
      <DemoDiv @ariaRole="banner" />
      <DemoDiv @ariaRole="complementary" />
      <DemoDiv @ariaRole="content-info" />
      <DemoDiv @ariaRole="form" />
      <DemoDiv @ariaRole="main" />
      <DemoDiv @ariaRole="navigation" />
      <DemoDiv @ariaRole="search" />
    </article>

    <h3 class="section-title">Links</h3>

    <ul>
      <li>
        <a
          href="https://api.emberjs.com/ember/release/classes/Component"
          rel="external"
        >
          Documentation
        </a>
      </li>
      <li>
        <a
          href="https://developer.mozilla.org/en-US/docs/Web/Accessibility/ARIA/Roles"
          rel="external"
        >
          MDN: ARIA Roles
        </a>
      </li>
    </ul>
  </section>
</template>;

export default AriaRoleTemplate;
