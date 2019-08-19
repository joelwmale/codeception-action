# 🚀 Codeception Action

[![GitHub Release][ico-release]][link-github-release]
[![License][ico-license]](LICENSE)

Runs your codeception tests.

Supports all [workflow event types](https://developer.github.com/webhooks/#events).

<hr/>

## Usage

Via GitHub Workflow

```yml
- name: tests
  uses: joelwmale/codeception-action@master
```

## Optional Configuration

If a `FRAMEWORK` is configured then you should also configure `ENV_FILE`

```yml
FRAMEWORK: laravel
ENV_FILE: .env.test
```

> Supplying a framework & env file is not required. It will by default just run codeception from the vendor folder.

### Framework - Laravel

If the specified framework is `laravel` then additionally the following happens:
  * The supplied env is copied to .env
  * The APP_KEY is generated
  * The database is migrated

## Recommendations
It is **highly** recommended to use the action is an explicit commit SHA-1

`uses = "joelwmale/codeception-action@master@{sha-1}"` to find a commit click here: https://github.com/joelwmale/codeception-action/commits/master

## Issues

If you find any issues or have an improvement feel free to [submit an issue](https://github.com/joelwmale/codeception-action/issues/new)

## License

The MIT License (MIT). Please see [License File](LICENSE) for more information.

[ico-release]: https://img.shields.io/github/tag/joelwmale/codeception-action.svg
[ico-license]: https://img.shields.io/badge/license-MIT-brightgreen.svg
[link-github-release]: https://github.com/joelwmale/codeception-action/releases