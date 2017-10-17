module.exports = {
  root: true,
  parserOptions: {
    ecmaVersion: 2017,
    sourceType: 'module'
  },
  extends: [
    'eslint:recommended',
    'plugin:ember/recommended'
  ],
  env: {
    browser: true,
    jquery: true,
    embertest: true
  },
  rules: {
  },
  globals: {
    bootbox: true
  }
};
