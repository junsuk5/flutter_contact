# contact

A new Flutter project.

## 커버리지

```shell
brew install lcov

lcov --remove coverage/lcov.info 'lib/*/*.g.dart' 'lib/*/*.freezed.dart' 'lib/*/domain/model/' -o coverage/lcov.info

genhtml coverage/lcov.info -o coverage/html

open ./coverage/html/index.html
```

