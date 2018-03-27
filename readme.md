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
$ docker exec -it lstm-handson-app bash
$ docker stop lstm-handson-app && docker rm lstm-handson-app
$ docker rmi lstm-handson-app continuumio/anaconda3
```