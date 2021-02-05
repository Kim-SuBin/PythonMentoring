<div align="center">
  <h1>File Upload</h1>
  <h3>SAmazon S3에 파일 업로드 (이미지, 오디오 파일)</h3>
  
  <img src="https://github.com/Kim-SuBin/Kim-SuBin/blob/master/svg/dev/languages/java.svg" alt="java" />
  <img src="https://github.com/Kim-SuBin/Kim-SuBin/blob/master/svg/dev/framework/spring.svg" alt="spring" />
  <img src="https://github.com/Kim-SuBin/Kim-SuBin/blob/master/svg/dev/service/amazons3.svg" alt="amazon s3' />
  <img src="https://github.com/Kim-SuBin/Kim-SuBin/blob/master/svg/dev/library/thymeleaf.svg" alt="thymeleaf" />
  <img src="https://github.com/Kim-SuBin/Kim-SuBin/blob/master/svg/dev/system/mysql.svg" alt="mysql">
  <img src="https://github.com/Kim-SuBin/Kim-SuBin/blob/master/svg/dev/tool/intellijidea.svg" alt="intelliJ" />
  
</div>

---

## 🧱 Spring-boot

### Spec

- Gradle
- Java 11
- Spring Boot 2.4.2

### Dependencies
- Spring Web
- Spring Data JPA
- Spring Cloud AWS
- Thymeleaf
- Lombok
- MySQL

## 📁 Directory Structure
수정한 부분 위주로 구조를 그림
```

├─src
│ ├─ main
│ │ ├─ java/springstudy/securitytest
│ │ │ ├─ controller
│ │ │ │ └─ FileController.java
│ │ │ ├─ domain
│ │ │ │ └─ File.java (File Model)
│ │ │ ├─ dto
│ │ │ │ └─ FileDto.java
│ │ │ ├─ repository
│ │ │ │ └─ FileRepository.java
│ │ │ ├─ service
│ │ │ │ ├─ FileService.java (받아온 정보 DB에 저장)
│ │ │ │ └─ S3Service.java (S3에 파일 업로드)
│ │ │ └─ FileUploadApplication.java
│ │ └─ resources/templates
│ │ │ └─ upload.html
│ └─ test
├─ .gitignore
├─ build.gradle
└─ README.md
```

## 🔗 Reference
- [버킷 생성 및 IAM 사용자 설정](https://twofootdog.tistory.com/36)
- [버킷 정책](https://zamezzz.tistory.com/299)
- [s3 연동](https://victorydntmd.tistory.com/334)
- [dependency](https://willseungh0.tistory.com/2)
- [업로드 부분](https://victorydntmd.tistory.com/334)
- [업로드 용량 변경](https://dev.to/ramonak/how-to-upload-a-file-to-aws-s3-in-java-using-vaadin-framework-1m2m)
- [최대 용량 확인](https://docs.aws.amazon.com/ko_kr/AmazonS3/latest/dev/qfacts.html)
