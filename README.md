# This is the docker image that design for VueJs project.

# Why should you use docker for front-end development?

## NodeJs version

Your development environment might fail if local NodeJs version does not match the front-end library.

## End-to-end test

End-to-end test will interupt you because it requires screen focus.

## Docker 
Docker can solve both issues above. And your dev environment is ready in just ONE line. i.e 'docker run'

# How I build this


```
docker run -d -p 8080:8080 -v "$PWD":"$PWD" -w "$PWD" --name "vuejs-docker-unit-e2e" -it pijzl/vuejs-docker-unit-e2e:latest
docker exec -it vuejs-docker-unit-e2e sh

vue create my-vue-project
# Manually select features , 
# Checked Router,Unit Testing, E2E Testing
# ESLint with error prevention only
# Lint on save
# Mocha + Chai 
# Nightwatch
# In dedicated config files

cd my-vue-project
yarn

# Add nightwatch.config.js with chromeOptions
```
Dockerfile is forked from https://github.com/sylvaindumont/docker-node-karma-protractor-chrome/tree/debian-node9

# Useful command

```
# in docker shell
cd my-vue-project

# run unit test
yarn test:unit

# run e2e test
yarn test:e2e

# start debug server
yarn serve
```