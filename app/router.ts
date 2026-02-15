import EmberRouter from '@embroider/router';
import config from 'a11y-demo-app/config/environment';

export default class Router extends EmberRouter {
  location = config.locationType;
  rootURL = config.rootURL;
}

Router.map(function () {
  this.route('examples', function () {
    this.route('input-helper', function () {});
    this.route('textarea-helper');
    this.route('link-to-helper', function () {
      this.route('photo-gallery');
    });
    this.route('aria-role');
  });
  this.route('not-found', { path: '*path' });
});
