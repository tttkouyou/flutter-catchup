# flutter_catchup

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

---

# App

## issue

* 買い物をするときにほかのものに目が行って、目的のものを買い忘れている。

<!-- * 買い物するときに、以前に買ったものと同じものを買って無駄買いしてしまう。 -->

## asnwer

* メモよりも簡単に一つのボタンで、簡単に買いたいものを記録することができる買い物専用のメモのようなもの

<!-- * 買い物終了後、メモの履歴を商品ごとで見ることができる -->

## concept

`買い忘れをしない買い物を。`
目的は、食材の買い物をする人たちの買い忘れを防止することです。

## function

* 買いたいもののボタンを押すことで、画面下にアラートのようなものが表示され、購入予定画面に追加される。

![buyproject-home](https://user-images.githubusercontent.com/51155933/71222625-8cfe1000-2314-11ea-87f1-b8add6b0f608.png)

![buyproject-home-select](https://user-images.githubusercontent.com/51155933/71223050-fc283400-2315-11ea-8a0a-44ff593209a5.png)


* 購入予定ボタンを押して、購入予定画面を確認することで、押したボタンの種類、押された時間が表示される。

![buyproject-list](https://user-images.githubusercontent.com/51155933/71301578-0b75b300-23e4-11ea-83f2-2059b45dc8e3.png)

<!-- * 購入予定の画面で「完了」ボタンを押すと、購入履歴に入る。 -->
<!-- * 購入履歴では、購入が完了した順で並んでいる。 -->

# Documents

## 変数

| 変数名 | 変数型 | 役割                                                                                                 |
| :----- | :----- | :--------------------------------------------------------------------------------------------------- |
| array  | string | 食材ボタンを押すと配列に対応した食材名を追加。<br>購入予定画面の購入予定表示にて使用。（実装未完了） |

## 関数

| 関数名 | 役割 |
| :----- | :--- |

## 使用したライブラリ

| ライブラリ名 | 役割 | 関連URL |
| :----------- | :--- | :------ |

## 階層

| 1階層    | 2階層    | 3階層 |
| :------- | :------- | :---- |
| 食材一覧 |          |       |
|          | 購入予定 |       |
|          | 購入履歴 |       |
