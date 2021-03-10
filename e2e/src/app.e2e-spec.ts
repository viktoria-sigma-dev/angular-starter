import { AppPage } from './app.po';

describe('workspace-project App', () => {
  let page: AppPage;

  beforeEach(() => {
    page = new AppPage();
    jasmine.DEFAULT_TIMEOUT_INTERVAL = 100000;
  });

  it('should display welcome message', async () => {
    debugger;
    if (!page) {
      return;
    }
    await page.navigateTo();
    console.log("anythig22");
    expect(page.getParagraphText()).toEqual('Welcome to test-proj!');
  });
});
