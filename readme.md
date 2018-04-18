# LSTMハンズオン

今回はkerasを利用した時系列データの予測を行います。

- 規則性のある波を予測 (値1つで予測)
- 規則性のあるアイスクリームの売り上げ予測 (売り上げだけではなく気温など複数の値を考慮して予測)
- 規則性のないbitcoinの値段を予測 (最終取引価格や最高売り価格などで予測)
- おまけでword2vec

## run

1. docker build and run

```
$ docker build --rm -t lstm-handson-app .
$ docker run -d -p 8888:8888 -v "$(pwd)/volume:/home/python_user/volume" --name lstm-handson-app lstm-handson-app
```

2. [go jupiter notebook](http://localhost:8888/tree)

3. select main.ipynb and run (shift + enter)

## remove

```
$ docker stop lstm-handson-app && docker rm lstm-handson-app
$ docker rmi lstm-handson-app continuumio/anaconda3
```