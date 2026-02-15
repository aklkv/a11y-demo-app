import { render } from '@ember/test-helpers';
import { module, test } from 'qunit';
import { setupRenderingTest } from 'ember-qunit';
import DemoText from 'a11y-demo-app/components/demo-text';

module('Integration | Component | demo text', function (hooks) {
  setupRenderingTest(hooks);

  test('it renders', async function (assert) {
    await render(<template><DemoText /></template>);

    assert.dom('p.demo-text').hasText('');
  });

  test('it renders block content', async function (assert) {
    await render(
      <template>
        <DemoText>
          template block text
        </DemoText>
      </template>,
    );

    assert.dom('p.demo-text').hasText('template block text');
  });
});
