# 자원 모니터링 시스템

## 모듈 설치

### flask

https://flask.palletsprojects.com/en/1.1.x/

```
pip install flask
```

### psutil

https://github.com/giampaolo/psutil

```
pip install psutil
```

### requests

https://requests.readthedocs.io/en/master/

```
pip install requests
```

## 실행

### Windows

```
> set FLASK_APP=flaskr
> set FLASK_ENV=development
> flask run
```

또는

```
> run.bat
```

## 데이터베이스

### 실행

- 최초 1회만 실행하면 됨
- 또는 데이터베이스 초기화가 필요할 때 사용하면 됨

```
> set FLASK_APP=flaskr
> set FLASK_ENV=development
> flask init-db
```

## sqlite 툴

- https://sqlitebrowser.org/

![DB Browser for SQLite](https://sqlitebrowser.org/images/screenshot.png)