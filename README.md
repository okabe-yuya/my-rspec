My-Rspec
===

テストフレームワークである[Rspec](https://github.com/rspec/rspec-core)の最小限の機能をまねて作成しました。

## 利用可能な機能

- [x] contextによる単体テストのグルーピング
- [x] itによる単体テストの宣言
- [x] expect(result).to eq(expect)形式の期待値確認

## Matcher
- [x] to
- [x] not_to
- [x] eq
- [x] include_(予約後のため`_`を付与)

## sample test
```sh
bash run-spec.sh
```

![Test Image 3](/docs/test-result.png)
