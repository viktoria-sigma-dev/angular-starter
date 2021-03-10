import { browser, by, element } from 'protractor';

export class AppPage {
  async navigateTo() {
    const zz = await browser.get('/');
    return zz;
  }

  getParagraphText() {
    return element(by.css('app-root h1')).getText();
  }
}
