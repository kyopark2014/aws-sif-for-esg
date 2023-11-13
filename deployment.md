# ESG Workshop의 설치

## Cloud9

1) [Cloud9 Console](https://ap-northeast-2.console.aws.amazon.com/cloud9control/home?region=ap-northeast-2#/product)에 접속하여 [Create environment]를 선택하여 Cloud9을 생성합니다.

Environment의 이름으로 "ESG Project"을 입력한 후에, EC2 Instance로 "m5.large"을 선택합니다. 이후 나머지는 기본값을 선택하고 스크롤하여, [Create]를 선택합니다.

![noname](https://github.com/kyopark2014/esg-deployment/assets/52392004/e00369e0-c5c1-4574-97b1-468ffecdfec7)


아래와 같이 [Environment](https://ap-northeast-2.console.aws.amazon.com/cloud9control/home?region=ap-northeast-2#/)에서 [Open]을 선택합니다. 

![noname](https://github.com/kyopark2014/esg-deployment/assets/52392004/44072964-52a6-4c12-a9d4-6a3019b96a90)

2) [Environment](https://ap-northeast-2.console.aws.amazon.com/cloud9control/home?region=ap-northeast-2#/)에서 “chatbot”를 [Open]한 후에 아래와 같이 터미널을 실행합니다.

![noname](https://github.com/kyopark2014/chatbot-based-on-Falcon-FM/assets/52392004/b7d0c3c0-3e94-4126-b28d-d269d2635239)

3) EBS 크기 변경

아래와 같이 스크립트를 다운로드 합니다. 

```text
curl https://raw.githubusercontent.com/kyopark2014/technical-summary/main/resize.sh -o resize.sh
```

이후 아래 명령어로 용량을 80G로 변경합니다.
```text
chmod a+rx resize.sh && ./resize.sh 80
```


```text
curl https://github.com/kyopark2014/aws-sif-for-esg/installDeps.bash -o installDeps.bash && chmod a+rx installDeps.bash && ./installDeps.bash
```

