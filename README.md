## Run tests:
1. to run unit tests in headless mode, run:
`make start-unit-headless`
2. Set debugger in "src/app/app.component.spec.ts". To run unit tests in debug mode, run:
`make start-unit-debug`
2. to run e2e tests in headless mode, run:
`make start-e2e-headless`

## Run e2e locally (works only without debug):
`What we are doing here: command ng e2e starts angular application automatically and run tests through protractor`
Ensure, you don't have host and port in "angular.json" for project "test-proj-e2e"
1. sudo webdriver-manager update --standalone
2. webdriver-manager start
3. npm install --force protractor
4. npm run e2e

## Run debug e2e locally:
`What we are doing here: we start angular application manually and run tests through protractor command (not e2e)`
Ensure, you don't have host and port in "angular.json" for project "test-proj-e2e"
### Tab 1:
  1. `sudo webdriver-manager update --standalone`
  2. `webdriver-manager start`
### Tab 2:
  1. `npm start`
### Tab 3:
  1. `npm install --force protractor`
  2. `npm run e2e-local-protractor`
### Chrome:
  1. Ensure you have "debugger;" in code
  2. Open a new tab `chrome://inspect/#devices`
  3. Resume running (blue play button)
