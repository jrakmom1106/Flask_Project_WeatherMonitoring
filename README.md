# Flask_Project_WeatherMonitoringSystem
***

## 프로젝트 목적
***
Flask 파이썬 웹프레임워크를 사용하여 라즈베리파이에서 받아온 센서 정보를 읽어 웹으로 보내주도록 구성
동작시연 URL : https://www.youtube.com/watch?v=08ClT0fghRM
***
URL 규칙
***
| 기능 | method | url |
| --- | --- | --- |
| 로그인 화면 | GET | /auth/login |
| 로그인 처리| POST | /auth/login |
| 가입 화면 | GET | /auth/register |
| 가입 처리 | POST | /auth/register |
| 로그아웃 처리 | GET | /auth/logout |
***
### 게시판 URL
***
| method | url |
| --- | --- |
| GET | /board/list |
| GET | /board/view/1 |
| GET | /board/add |
| POST | /board/add |
| GET | /board/update |
| POST | /board/update/1 |
| POST | /board/delete/1 |
