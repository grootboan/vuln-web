# Vuln-Web
Vuln-Web 리포는 웹 해킹 연습을 위한 취약한 환경들을 도커를 이용해 한번에 실행할 수 있는 배시 스크립트를 배포합니다. 

포함된 취약한 웹 환경 
- [DVWA](https://github.com/digininja/DVWA)
- [bWAPP](https://github.com/raesene/bWAPP)
- [JuiceShop](https://github.com/juice-shop/juice-shop)
- [WebGoat](https://github.com/WebGoat/WebGoat)
- [VAmPI](https://github.com/erev0s/VAmPI)

모든 크레딧은 취약한 웹 환경들을 제작하는 원작자분들께 돌아갑니다. 

## 사용법
- 칼리 리눅스 / 데비안 + Zsh 기준 
```

```

## 스크립트 실행 후 
스크립트 실행 후, 아래의 URL을 방문하면 다양한 취약한 웹 환경들을 이용할 수 있습니다. 
```
http://localhost:80               - DVWA, 바로 사용 
http://localhost:1000/install.php - bWAPP, 설치 후 사용 
http://localhost:2000             - JuiceShop, 바로 사용
http://localhost:3000/WebGoat     - WebGoat, 바로 사용 
http://localhost:4000             - VAmPI, 바로 사용 
```

## 도커를 멈추거나 컨테이너/이미지를 완전히 삭제 
아래의 명령어들을 사용하면 도커를 멈추거나 컨테이너 + 이미지를 모두 삭제할 수 있습니다.
귀찮으시면 아래를 다 복사/붙여넣기 해서 웹 환경들을 모두 삭제하세요. 
```
# Stop containers 
sudo docker stop $(sudo docker ps -q)

# Delete containers 
sudo docker rm -f $(sudo docker ps -aq)

# Delete images 
sudo docker rmi -f $(sudo docker images -aq)
```

## TODO 
- GrootSecurity 공식 THM, Task, Writeup 추가 
- 더 많은 웹 환경들 추가 