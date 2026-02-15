import { render } from '@ember/test-helpers';
import { module, test } from 'qunit';
import { setupRenderingTest } from 'ember-qunit';
import DemoDiv from 'a11y-demo-app/components/demo-div';

module('Integration | Component | demo div', function (hooks) {
  setupRenderingTest(hooks);

  test('it renders', async function (assert) {
    await render(<template><DemoDiv @ariaRole="nav" /></template>);

    assert.dom('.demo-div').hasText('This div has a role set to "nav"');
    assert.dom('.demo-div').hasAttribute('role', 'nav');
  });
});
