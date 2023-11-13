# ESG Workshop의 설치

## Cloud9

1) [Cloud9 Console](https://ap-northeast-2.console.aws.amazon.com/cloud9control/home?region=ap-northeast-2#/product)에 접속하여 [Create environment]를 선택하여 Cloud9을 생성합니다.

2) Environment의 이름으로 "ESG Project"을 입력합니다.

![noname](https://github.com/kyopark2014/aws-sif-for-esg/assets/52392004/2c45d659-f5aa-40e0-8b60-70246c2d7a05)


EC2 Instance로 "m5.large"을 선택하고, Platform으로는 "Ubuntu Server 22.04 LTS"을 선택합니다. 이후 나머지는 기본값을 선택하고 스크롤하여, [Create]를 선택합니다.

![noname](https://github.com/kyopark2014/aws-sif-for-esg/assets/52392004/1f153467-7c1d-4b4d-ab3b-b5b0f9ff9900)



아래와 같이 [Environment](https://ap-northeast-2.console.aws.amazon.com/cloud9control/home?region=ap-northeast-2#/)에서 [Open]을 선택합니다. 

![noname](https://github.com/kyopark2014/esg-deployment/assets/52392004/44072964-52a6-4c12-a9d4-6a3019b96a90)

3) [Environment](https://ap-northeast-2.console.aws.amazon.com/cloud9control/home?region=ap-northeast-2#/)에서 “chatbot”를 [Open]한 후에 아래와 같이 터미널을 실행합니다.

![noname](https://github.com/kyopark2014/aws-sif-for-esg/assets/52392004/8b084c96-584b-45c6-a1fb-a00af4f832c0)


4) EBS 크기 변경

아래와 같이 스크립트를 다운로드 합니다. 

```text
curl https://raw.githubusercontent.com/kyopark2014/technical-summary/main/resize.sh -o resize.sh
```

이후 아래 명령어로 용량을 80G로 변경합니다.
```text
chmod a+rx resize.sh && ./resize.sh 80
```

5) 스크립트 설치하기

```text
curl https://raw.githubusercontent.com/kyopark2014/aws-sif-for-esg/main/installDeps.bash -o installDeps.bash && chmod a+rx installDeps.bash && ./installDeps.bash
```

```text
cd ~/environment
git clone https://github.com/aws-solutions-library-samples/guidance-for-aws-sustainability-insights-framework.git
cd guidance-for-aws-sustainability-insights-framework/
rush update --bypass-policy
cd ~/environment/guidance-for-aws-sustainability-insights-framework/java/apps/calculator/ && mvn clean install
cd ~/environment/guidance-for-aws-sustainability-insights-framework/java/apps/referencedatasets-indexer/ && mvn clean install
cd ../tenant
npm run cdk -- deploy -c tenantId=<tenant ID> -c environment=<environment> -c administratorEmail=<admin email> -c enableDeleteResource=true -c deleteBucket=true --all --require-approval never --concurrency=10

```
