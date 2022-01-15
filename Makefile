install:
	npm ci

publish:
	npm publish --dry-run

build:
	rm -rf dist
	NODE_ENV=production npx webpack

test:
	npx jest

test-coverage:
	npm test -- --coverage --coverageProvider=v8

lint:
	npx eslint .

lint-fix:
	npx eslint . --fix
