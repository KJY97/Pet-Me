-- MySQL dump 10.13  Distrib 8.0.25, for macos11 (x86_64)
--
-- Host: i6b106.p.ssafy.io    Database: pet_sns
-- ------------------------------------------------------
-- Server version	8.0.28-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Feed`
--

DROP TABLE IF EXISTS `Feed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Feed` (
  `feedNumber` bigint NOT NULL AUTO_INCREMENT,
  `userNumber` bigint NOT NULL,
  `feedContent` varchar(255) NOT NULL,
  `feedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `feedThumbnailFolder` varchar(255) DEFAULT NULL,
  `feedThumbnailName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`feedNumber`),
  KEY `fk_Feed_User_idx` (`userNumber`),
  CONSTRAINT `fk_Feed_User` FOREIGN KEY (`userNumber`) REFERENCES `User` (`userNumber`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Feed`
--

LOCK TABLES `Feed` WRITE;
/*!40000 ALTER TABLE `Feed` DISABLE KEYS */;
INSERT INTO `Feed` VALUES (1,9,'산책갔다와서 뻗음','2022-02-10 09:31:10','/home/petNme/images/220211/','7a554a2b-5260-41be-b1a1-1490b1e1ad6fKakaoTalk_20220128_001001457.jpg'),(2,9,'zzZ','2022-02-10 09:33:10','/home/petNme/images/220211/','071efbb2-4763-476d-b8f2-fe9aaf46d2ecKakaoTalk_20220128_001716633.jpg'),(3,9,'파란 토끼 등장 ','2022-02-10 09:34:32','/home/petNme/images/220211/','b330218b-6b6a-42d9-ba46-7700b321bd60KakaoTalk_20220128_001829333.jpg'),(4,9,'우리집 뽀뽀','2022-02-10 09:35:08','/home/petNme/images/220211/','f7ca8e7e-4314-4631-8c1e-4fac6d81c92dKakaoTalk_20220128_001136859.jpg'),(5,9,'손 주세요 ','2022-02-10 09:36:50','/home/petNme/images/220211/','2cbfe379-e440-4cc9-b285-beece9e7173fKakaoTalk_20220128_001640488.jpg'),(6,9,'같이 티비 보는 중.. 뒷태 시강ㅋㅋ ','2022-02-10 09:37:30','/home/petNme/images/220211/','2604ca77-08b3-46b4-a0be-0ba1f9f82df8KakaoTalk_20220128_001422005.jpg'),(7,9,'오늘은 같이 다른 친구들과 노는 날! 근데 왜 안내려가니.. ','2022-02-10 09:38:54','/home/petNme/images/220211/','35a0f9e9-5bc2-430c-b39b-b9dd5c936345KakaoTalk_20220128_001733177.jpg'),(8,9,'초롱초롱한 눈빛 ','2022-02-10 09:41:17','/home/petNme/images/220211/','ff2257a2-d542-4d76-b661-adccc966e9c0KakaoTalk_20220128_001505069.jpg'),(9,9,'외출 중 ','2022-02-10 09:41:53','/home/petNme/images/220211/','012d57dd-22b6-4e05-99f1-973d1e669f7eKakaoTalk_20220128_001209741.jpg'),(10,1,'동글이한테 매일 하는 말 : 너 이렇게 사람 좋아해서 길에서 어떻게 살려구 했어 !!','2022-02-10 09:53:45','/home/petNme/images/220211/','269fda61-1eb0-4fb3-af3c-9ddb7ce5e7f5donglecat1.jpg'),(11,1,'팻캠 쥐어패는 중ㅋㅋㅋㅋ','2022-02-10 09:56:45','/home/petNme/images/220211/','946ad34e-3551-4484-a0ae-764be38c4925donglecat2.jpg'),(12,1,'당당포즈로 서있을때 너무 귀엽고 사랑해 ','2022-02-10 09:57:16','/home/petNme/images/220211/','3897dec1-ac91-439d-9c15-0d0565b0f20edonglecat3.jpg'),(13,2,'사랑스런 핑크젤리❤❤❤','2022-02-10 10:01:46','/home/petNme/images/220211/','43c464c5-27a3-4d2e-8e35-5f9771893c8ejelly.jpg'),(14,4,'끌고가보슈 ','2022-02-10 10:05:36','/home/petNme/images/220211/','e16f1ec6-87e3-4fbf-9099-f474d0988fa7shiba.jpg'),(15,4,'good night~','2022-02-10 10:08:50','/home/petNme/images/220211/','12eb12fe-baf5-4992-8b4a-cb6719d84b44Have fun!.jpg'),(16,3,'메롱 ','2022-02-10 10:10:51','/home/petNme/images/220211/','1aa37205-3a88-47e7-b6b1-29e1ae97d7e7shiba_merong.jpg'),(17,3,'메롱2 ','2022-02-10 10:11:00','/home/petNme/images/220211/','a3aeb19c-dacb-4a1c-9f98-bd800b8bf148shiba_merong2.jpg'),(18,5,'Hope This Brightens Up Your Day!','2022-02-10 10:17:02','/home/petNme/images/220211/','2d2f07b5-cbe3-4c3c-9501-5e9b10f9d890Hope This Brightens Up Your Day!.jpg'),(19,5,'브이~','2022-02-10 10:17:13','/home/petNme/images/220211/','8e60b5d0-6a97-4bc7-b635-21982b279f6cdogv.jpg'),(20,5,'너무 가까이 찍었네;;','2022-02-10 10:17:29','/home/petNme/images/220211/','2daf2b42-50a5-4cb5-aab5-5ba8aab0b323Oops too close.jpg'),(21,51,'침대에 올라간 쿠키','2022-02-14 14:24:21','/home/petNme/images/220215/','779a87d5-1310-4a23-8e78-f2e52b1ad9cf1cookie.jpg'),(22,51,'귀여워~ ~ ~','2022-02-14 14:24:48','/home/petNme/images/220215/','135698f1-9eeb-49a3-8a05-d6564d4febaa2cookie.jpg'),(23,51,'베개 뺏김..-_-','2022-02-14 14:25:04','/home/petNme/images/220215/','f23c1520-a738-4232-8736-4be6b42846573cookie.jpg'),(24,51,'내려와..','2022-02-14 14:25:21','/home/petNme/images/220215/','b50f516f-f584-41d7-8121-3359d3a423ca4cookie.jpg'),(25,51,'너는 먹으면 안돼~!','2022-02-14 14:25:45','/home/petNme/images/220215/','a18ba177-0e22-4ede-835f-dc17a950534b5cookie.jpg'),(26,51,'아프지말고 오래오래 살아! ','2022-02-14 14:26:17','/home/petNme/images/220215/','7e86ab5f-4763-4792-9f04-1cd09170afea7cookie.jpg'),(27,53,'쌍둥이!!!','2022-02-14 14:31:31','/home/petNme/images/220215/','6e0f071a-9e4a-46ba-a30d-f1bc1d0a3aa4duck1.jpg'),(28,53,'벚꽃오리 ^_^','2022-02-14 14:32:00','/home/petNme/images/220215/','857b3e56-20b2-4e5f-8408-edbbbc4f7c00duck2.png'),(29,53,'갸우뚱','2022-02-14 14:32:16','/home/petNme/images/220215/','f3ff97be-b9a8-48c9-a662-8741dbd2cf98duck3.jpg'),(30,53,'산책갔는데 강아지보고 깜짝 놀란 ','2022-02-14 14:32:47','/home/petNme/images/220215/','3d0a3484-a33f-4e14-ae96-2dba5ba55ac1duck4.png'),(31,53,'꽤 무겁다 이제~~~','2022-02-14 14:33:08','/home/petNme/images/220215/','31c882d0-b136-4924-9cd0-1d51c2f2af05duck5.png'),(32,53,'어디가세요 ???? ','2022-02-14 14:33:44','/home/petNme/images/220215/','32ca0368-a4d0-4a44-b952-1ff15fef4af7duck6.jpg'),(33,53,'침대사이에 껴서 자고있다,, 사람이야 뭐','2022-02-14 14:34:22','/home/petNme/images/220215/','0624c719-ca32-4a2f-94c8-b9dda06376d8duck7.jpg'),(34,53,'같이 해바라기 보고 온 날 ~~~!','2022-02-14 14:34:41','/home/petNme/images/220215/','bd34b9f1-d34e-4a5c-85a6-5f0c494a496dduck8.jpg'),(35,53,'목욕조아 ~!~!','2022-02-14 14:34:56','/home/petNme/images/220215/','e88038da-6b9f-421f-b074-f8993170a3adduck9.jpg'),(36,53,'예쁜 머리띠 사줌 ㅋㅋ ㅋ','2022-02-14 14:35:33','/home/petNme/images/220215/','33fdb2bb-dfd1-4963-9408-8c3540df62e0duck10.jpg'),(37,53,'꽃 또 보러갔지 ~~!~!','2022-02-14 14:35:50','/home/petNme/images/220215/','d02acf46-2c5d-41ac-b590-6ef00a7a78a2duck11.jpg'),(38,53,'엄~청 애기떄! 귀엽다 ㅠ','2022-02-14 14:36:07','/home/petNme/images/220215/','29fee6c8-b989-414f-965a-3387856fde0dduck12.jpg'),(39,53,'어디가시냐고요 ;;;','2022-02-14 14:36:34','/home/petNme/images/220215/','91c0f921-ba4b-4c22-b85e-83fbeeeac966duck13.jpg'),(40,53,'봄에 꽃보고 온 날~ ~','2022-02-14 14:37:07','/home/petNme/images/220215/','06274318-f0c1-4f96-8b68-6e3d016d9981duck14.jpg'),(41,53,'뭘 보시는데요; ; ; ;','2022-02-14 14:37:24','/home/petNme/images/220215/','b16a90e6-0b09-46b1-999e-6c2f0308be7educk15.jpg'),(42,53,'장보고 오자~!!','2022-02-14 14:37:40','/home/petNme/images/220215/','471d23e4-12f0-4f6e-b2b1-256f6f729bbcduck17.jpg'),(43,53,'손님왔을 때 잠깐 들어가 있어~!','2022-02-14 14:37:57','/home/petNme/images/220215/','4ded2f44-3ab7-4fbe-ba14-a9c0c08a6b1aduck18.jpg'),(44,53,'목욕 너무 조아해서 큰일임 ;;;','2022-02-14 14:38:11','/home/petNme/images/220215/','ddd59c57-9317-43c9-b502-29bbc094d814duck19.jpg'),(45,54,'우리집 노랑이들 ~~!','2022-02-14 14:40:02','/home/petNme/images/220215/','abd3701a-57a2-4107-a2dc-ba021bf0b610fish13.jpg'),(46,54,'못생겼는데 귀여워 ~~~','2022-02-14 14:40:27','/home/petNme/images/220215/','90244c69-ffbd-4ee9-8e62-54361aaf541dfish1.jpg'),(47,54,'오늘 배고팠는지 밥 주니까 허겁지겁 먹었다,, 내가 더 빨리 올게,,,','2022-02-14 14:41:01','/home/petNme/images/220215/','5cf58ef1-0cd1-43d1-b8fe-79fe6856d5f9fish2.jpg'),(48,54,'내일 물갈아줄게 ~ ~ ','2022-02-14 14:41:33','/home/petNme/images/220215/','0187edcd-8886-4c17-bedf-2addf2336f69fish4.jpg'),(49,54,'잘 보면 보임 ㅋㅋㅋㅋㅋㅋㅋㅋㅋ','2022-02-14 14:41:44','/home/petNme/images/220215/','141dc7d3-833b-4e81-868a-52010c920d54fish5.jpg'),(50,54,'어딜 보고 있어~ ~~','2022-02-14 14:42:08','/home/petNme/images/220215/','c0c4e87d-a03b-4f79-82ca-0c37cdac73ebfish6.jpg'),(51,54,'니모랑 똑같다.. 조금 더 예쁠지도? ㅋ ㅋ ㅋㅋ','2022-02-14 14:42:26','/home/petNme/images/220215/','4382f7d7-6b5d-43f3-9fd1-c0006bf559c4fish7.jpg'),(52,54,'우리집 쪼꾸','2022-02-14 14:47:51','/home/petNme/images/220215/','3d31e843-e557-4b86-aa02-ffeb7f44203efish10.jpg'),(53,54,'우리집 파랑이~~~','2022-02-14 14:48:37','/home/petNme/images/220215/','4aeae1f3-3f8a-4e65-87d8-0aa6ff4dbae0fish11.jpg'),(54,54,'최애 보라색~ ~ ~','2022-02-14 14:49:19','/home/petNme/images/220215/','08458410-a20e-4b4b-bed4-a4b7a828a82dfish12.jpg'),(55,54,'사이좋은 형제~~','2022-02-14 14:49:39','/home/petNme/images/220215/','622115ce-136e-44f7-a434-f79a31f49529fish14.jpg'),(56,54,'밥 다 먹고 기분 좋은 물고기~~~~','2022-02-14 14:50:05','/home/petNme/images/220215/','258e7fd6-755a-4609-88d6-e0dc354ad9c2fish15.jpg'),(57,54,'ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ','2022-02-14 14:51:47','/home/petNme/images/220215/','4f140ae7-0ded-46e0-ade2-d1ab6b797548fish16.jpg'),(58,54,'집 사줬는데 너무 예쁘네~ ~~~','2022-02-14 14:52:21','/home/petNme/images/220215/','785f1f1e-adb6-426e-8520-8695fbb9d3b1fish18.jpg'),(59,54,'우리 집 삼형제 ~~~~~','2022-02-14 14:52:48','/home/petNme/images/220215/','57f8172d-1e66-4b71-95f8-85ee5f07831cfish19.jpg'),(60,55,'우리 여 처음 데려온 날 !!! ','2022-02-14 14:56:46','/home/petNme/images/220215/','3336089c-8399-4f80-9748-ee69655a37b5fox1.jpg'),(61,55,'물지마세요,,, 아프다,,,,','2022-02-14 14:57:24','/home/petNme/images/220215/','01151881-e6ab-486d-920e-83c15a7d098efox3.jpg'),(62,55,'존예 존예 ~ ~ ~ ~ ','2022-02-14 14:58:42','/home/petNme/images/220215/','accafe50-5b9e-4e5b-9135-1f92c1b6e8b7fox8.jpg'),(63,55,'초딩 여우 ㅎ..ㅎ','2022-02-14 14:59:03','/home/petNme/images/220215/','c3ff4d71-85ad-47c5-9705-d68d5a14d971fox11.jpg'),(64,55,'지금은 많이 컸다~ ~ 건강하게 커 ~!~!','2022-02-14 15:01:22','/home/petNme/images/220215/','b00ec2e2-0268-494b-bc85-ee2f41a850a9fox2.jpg'),(65,55,'둘째 데리고 온 날 ,, 노란색이네 ~~~','2022-02-14 15:02:23','/home/petNme/images/220215/','99a806f8-4103-4eb2-b944-3bcf4ef5329efox14.jpg'),(66,55,'옆집 여우~~!~!','2022-02-14 15:03:00','/home/petNme/images/220215/','bf6b8574-7ce0-4537-bf32-fdffa83c0abdfox15.jpg'),(67,55,'주인 닮아서 맨날 잠만 자~!~!','2022-02-14 15:03:32','/home/petNme/images/220215/','1ad3af18-8e14-4d06-9318-edec6ce1b6a3fox4.jpg'),(68,55,'병원 가는 날,, 비밀임 ㅎ ㅎ','2022-02-14 15:04:08','/home/petNme/images/220215/','4f1a3600-4511-4406-9289-72f1cb886237fox9.jpg'),(69,55,'또 잔다,, 또,,,,','2022-02-14 15:04:24','/home/petNme/images/220215/','735e525b-7506-4612-a9bd-5269b8fcedf6fox13.jpg'),(70,55,'애기때도 맨날 잠만 잤네~~!~! ','2022-02-14 15:04:52','/home/petNme/images/220215/','ba053566-d9d3-4edc-9cab-4a02ce991a46fox16.jpg'),(71,55,'소풍간날,, 따듯해 ???','2022-02-14 15:05:23','/home/petNme/images/220215/','1d94c225-eed7-411c-88ba-c6d67b85b781fox17.jpg'),(72,55,'20.09.16','2022-02-14 15:05:43','/home/petNme/images/220215/','d85d3218-ef01-47bd-8a60-48b279d1426afox20.jpg'),(73,55,'화이트 마크 폭스~!~!','2022-02-14 15:06:25','/home/petNme/images/220215/','8800ab0b-e001-4012-9fa7-b1ff1fa5a718fox10.jpg'),(74,55,'희번뜩,,,','2022-02-14 15:06:36','/home/petNme/images/220215/','f1bac555-661b-47cf-831e-e8f5aa1c8e55fox18.jpg'),(75,55,'여길보세요,, 멋있다,,','2022-02-14 15:06:52','/home/petNme/images/220215/','c1eaf2ae-b7e9-407a-a466-2ef5cd223fa2fox19.jpg'),(76,57,'초밥이야 뭐야 ~~~','2022-02-14 15:07:25','/home/petNme/images/220215/','24ea0524-6868-4316-87fb-240fbfd9486dmouse1.jpg'),(77,57,'궁둥이 궁둥이 궁둥이 궁둥이 궁둥이 궁둥이 궁둥이','2022-02-14 15:07:52','/home/petNme/images/220215/','bba3d23c-48b7-4540-9383-8e2c67cd41b1mouse2.jpg'),(78,57,'사람을 좋아합니다 .. !!!','2022-02-14 15:08:09','/home/petNme/images/220215/','fd384fd6-7a04-43d5-a40c-e9110d317e31mouse3.jpg'),(79,57,'뭘 봐 ~!~!~!','2022-02-14 15:08:19','/home/petNme/images/220215/','42b9a619-d8a6-4f46-9bcd-4249d7ec6438mouse4.jpg'),(80,57,'잠들기 5초 전,,,','2022-02-14 15:08:31','/home/petNme/images/220215/','7408feec-e218-469a-b173-fac5f810b4c8mouse5.jpg'),(81,57,'떡이야 뭐야,, 햄스터야 떡이야,,,','2022-02-14 15:08:47','/home/petNme/images/220215/','95da11de-2fa6-472f-a5be-ac92cc59c58bmouse6.jpg'),(82,57,'이러고 좀 있다가 똥쌌음 ㅡㅡ,,','2022-02-14 15:09:04','/home/petNme/images/220215/','8c056b57-e3aa-47e4-bf51-32032be184e5mouse7.jpg'),(83,57,'언니가 선물 준 거 ! ! 잘 들어가있어서 너무 좋다 !~!','2022-02-14 15:09:32','/home/petNme/images/220215/','4412e4b1-91a5-4200-940e-6300b6341c09mouse8.jpg'),(84,57,'예쁘다 예쁘다~!~','2022-02-14 15:10:01','/home/petNme/images/220215/','e998cfcb-0b68-4543-8d87-24770654205cmouse9.jpg'),(85,57,'귀엽다 귀엽다~!~!','2022-02-14 15:10:33','/home/petNme/images/220215/','a98afba2-d9cf-4715-8272-0da8c90bee94mouse10.jpg'),(86,57,'친구네 하얀햄서터,, 우리애랑 단짝,,','2022-02-14 15:10:58','/home/petNme/images/220215/','de3ffe03-2b3d-493f-826e-8bb37bc531c1mouse11.jpg'),(87,57,'누구세요...? 아저씨...?','2022-02-14 15:11:14','/home/petNme/images/220215/','ae73e32c-4e1c-4b06-b99a-3bbe2ddc1e3cmouse12.jpg'),(88,57,'너무너무너무 작아~~!','2022-02-14 15:11:30','/home/petNme/images/220215/','cc732a22-d746-4407-82d3-8c95572a7decmouse13.jpg'),(89,57,'입에 뭘 드시고 계세요???','2022-02-14 15:12:24','/home/petNme/images/220215/','875639de-85f6-450c-a842-e6fa750e5578mouse14.jpg'),(90,57,'다이어트 성공한 햄서터   ','2022-02-14 15:12:54','/home/petNme/images/220215/','39a5e09f-2da0-4d96-9a40-5db145b80353mouse15.jpg'),(91,57,'아등바등 아등바등    ','2022-02-14 15:13:10','/home/petNme/images/220215/','0e1ca61f-f229-4ff6-a90b-f591c44cf024mouse16.jpg'),(92,57,'젓가락 모음집~','2022-02-14 15:13:29','/home/petNme/images/220215/','002d1f60-fdd5-43b3-94ff-32572e8d5a14mouse17.jpg'),(93,57,'귀엽다 귀엽다~!~!','2022-02-14 15:14:48','/home/petNme/images/220215/','a0a09f35-4afe-41bf-89bc-b48d1d755cefmouse18.jpg'),(94,57,'귀엽다 귀엽다~!~!','2022-02-14 15:14:52','/home/petNme/images/220215/','190960aa-cf24-45f4-a81b-6cd5481cdc7dmouse19.jpg'),(95,57,'귀엽다 귀엽다~!~!','2022-02-14 15:14:56','/home/petNme/images/220215/','a81ee6fa-3dcb-487d-a7a1-00b3154298c8mouse20.jpg'),(96,56,'개굴개굴 ','2022-02-14 15:15:24','/home/petNme/images/220215/','9067dc58-ee78-4af3-ab41-ae48dd22b0e4frog1.jpg'),(97,56,'개굴개굴 ','2022-02-14 15:15:27','/home/petNme/images/220215/','97aaeb4e-dd48-4709-b6ab-498d07f1334ffrog2.jpg'),(98,56,'개굴개굴 ','2022-02-14 15:15:32','/home/petNme/images/220215/','8a398f7d-0b10-4bdc-be3e-5634c4edf382frog3.jpg'),(99,56,'개굴개굴 ','2022-02-14 15:15:35','/home/petNme/images/220215/','e0838f9a-250a-4a46-847a-9888a0ba8e67frog4.jpg'),(100,56,'개굴개굴 ','2022-02-14 15:15:39','/home/petNme/images/220215/','2c0828c5-eca2-4ac9-8a20-6dc1e8ce4546frog5.jpg'),(101,56,'개굴개굴 ','2022-02-14 15:15:42','/home/petNme/images/220215/','53d003d4-310a-4ebb-b083-8fc8478e39e6frog6.jpg'),(102,56,'개굴개굴 ','2022-02-14 15:15:45','/home/petNme/images/220215/','f0ec2e4b-f7cc-4c4a-9824-5f704e171ec9frog7.jpg'),(103,56,'개굴개굴 ','2022-02-14 15:16:31','/home/petNme/images/220215/','4cd96137-4f8d-41a2-a699-a57d3e36c152frog8.jpg'),(104,56,'개굴개굴 ','2022-02-14 15:16:35','/home/petNme/images/220215/','7327e151-0b25-4855-96f5-ee78d0d54840frog9.jpg'),(105,56,'개굴개굴 ','2022-02-14 15:16:39','/home/petNme/images/220215/','43b80232-f29f-4732-b6f6-302679d2f19afrog10.jpg'),(106,56,'개굴개굴 ','2022-02-14 15:16:42','/home/petNme/images/220215/','822a5af8-c743-49f6-be27-2e030180c8fdfrog11.jpg'),(107,56,'개굴개굴 ','2022-02-14 15:16:46','/home/petNme/images/220215/','58dff9c7-26fd-4da4-98f0-6cc87d649029frog12.jpg'),(108,56,'개굴개굴 ','2022-02-14 15:16:49','/home/petNme/images/220215/','1a33b9d3-0b4f-48f5-b9ac-58491d89a114frog13.jpg'),(109,56,'개굴개굴 ','2022-02-14 15:16:54','/home/petNme/images/220215/','3b52309f-05c5-4484-aa21-16a5e0a9d071frog14.jpg'),(110,56,'개굴개굴 ','2022-02-14 15:17:00','/home/petNme/images/220215/','2b50220a-ac02-47e1-9d05-b92ad214ef93frog15.jpg'),(111,56,'개굴개굴 ','2022-02-14 15:17:08','/home/petNme/images/220215/','4b7434a7-b019-4cac-b7e6-16acd35077e6frog16.jpg'),(112,56,'개굴개굴 ','2022-02-14 15:17:12','/home/petNme/images/220215/','0878dc6b-95af-44be-b2aa-0b6cbc282a99frog17.jpg'),(113,56,'개굴개굴 ','2022-02-14 15:17:15','/home/petNme/images/220215/','b1449073-d95d-4b0d-90ac-f7d375dc10c2frog18.jpg'),(114,56,'개굴개굴 ','2022-02-14 15:17:18','/home/petNme/images/220215/','beedcb3a-c180-48b0-bf23-4788df08606cfrog19.jpg'),(115,56,'개굴개굴 ','2022-02-14 15:17:22','/home/petNme/images/220215/','820d3e28-08a9-4a8f-90c7-21618c3ef8c2frog20.jpg'),(116,60,'스르륵 스르륵 ','2022-02-14 15:18:08','/home/petNme/images/220215/','86bbe23e-dc27-44a9-b3cd-3b9b488ed476snake1.jpg'),(117,60,'스르륵 스르륵 ','2022-02-14 15:40:38','/home/petNme/images/220215/','a1c8a2b6-0d71-4d58-ac69-c149836bcbf1snake2.jpg'),(118,60,'스르륵 스르륵 ','2022-02-14 16:01:33','/home/petNme/images/220215/','89cbf0c3-f22c-4e2b-97e9-286eb6441ff6snake3.jpg'),(119,60,'snake  ','2022-02-14 16:02:00','/home/petNme/images/220215/','49b46682-4752-4385-ac1e-1bf3d98b495fsnake4.jpg'),(120,60,'snake  ','2022-02-14 16:02:04','/home/petNme/images/220215/','df07d6b7-b908-4466-a2f6-aab80423d8a6snake5.jpg'),(121,60,'snake  ','2022-02-14 16:02:09','/home/petNme/images/220215/','1fb1fa17-9d99-40bf-a23d-57d88c2cb2d9snake6.jpg'),(122,60,'snake  ','2022-02-14 16:02:15','/home/petNme/images/220215/','84f339d3-a01e-4c1a-bc8a-d36828b50ed2snake8.png'),(123,60,'snake  ','2022-02-14 16:02:43','/home/petNme/images/220215/','60acc2a4-4d7d-41ac-a366-6233f62f0801snake9.png'),(124,60,'snake  ','2022-02-14 16:02:48','/home/petNme/images/220215/','11a77c89-5a40-4642-ba1f-98a44bdc2cb5snake10.jpg'),(125,60,'snake  ','2022-02-14 16:02:53','/home/petNme/images/220215/','37268a71-bb16-4e82-b829-9329480cf98fsnake11.jpg'),(126,60,'snake  ','2022-02-14 16:02:59','/home/petNme/images/220215/','502375a9-cc7b-4742-ba25-45bbecd89605snake12.jpg'),(127,60,'snake  ','2022-02-14 16:03:07','/home/petNme/images/220215/','fab14fe7-8f8b-48de-a62d-e53559c92262snake14.jpg'),(128,60,'snake  ','2022-02-14 16:03:13','/home/petNme/images/220215/','6ffec136-c089-49f3-bf06-03317b66d7d2snake15.jpg'),(129,60,'snake  ','2022-02-14 16:03:21','/home/petNme/images/220215/','c5d7a137-bb15-46fe-bf57-b146eefec0d6snake16.jpg'),(130,60,'snake  ','2022-02-14 16:03:25','/home/petNme/images/220215/','7ca2a72c-d5e9-45be-ac5c-162e03899a31snake17.jpg'),(131,60,'snake  ','2022-02-14 16:03:30','/home/petNme/images/220215/','bb0ecdf7-bee3-4faf-b976-dc0b2656f3f4snake18.jpg'),(132,60,'snake  ','2022-02-14 16:03:41','/home/petNme/images/220215/','c312b859-b35b-4034-899b-d3a228bb9631snake20.jpg'),(133,60,'snake  ','2022-02-14 16:03:45','/home/petNme/images/220215/','d9d81357-23bc-45c5-ab7f-4191618d83ffsnake21.jpg'),(134,60,'snake  ','2022-02-14 16:03:50','/home/petNme/images/220215/','eebeddb0-5418-4e17-8aa9-3aecd385a55bsnake22.jpg'),(135,61,'육지 거북이 키우기 ','2022-02-14 16:21:29','/home/petNme/images/220215/','fa2041a3-8f20-4fbc-91dc-7e40ac09e66eturtle1.jpg'),(136,61,'데려온 날! 애기 거북이~! ','2022-02-14 16:21:47','/home/petNme/images/220215/','715b69d4-e283-4128-92dc-f01d9dc66584turtle2.jpg'),(137,61,'꼬부기 꼬부기 ','2022-02-14 16:21:57','/home/petNme/images/220215/','90152b16-e8cd-4bd9-8b3e-ffc49fe946b5turtle3.jpg'),(138,61,'처음 옷사준 날! 안 벗네..? ','2022-02-14 16:25:17','/home/petNme/images/220215/','41a0384a-7b4c-48ed-afc8-4f49d946300bturtle4.jpg'),(139,61,'산책가는 날.. 먹는거 아니다..! ','2022-02-14 16:25:35','/home/petNme/images/220215/','ae058975-a7e9-450c-bd15-64effc321524turtle5.jpg'),(140,61,'거북킹.. 옷 잘입어서 엄마가 만들어줬다 ^_^ ','2022-02-14 16:26:03','/home/petNme/images/220215/','154b7c7d-6bbd-4eba-ab7d-80a3234c0807turtle6.jpg'),(141,61,'크리스마스 기념으로...! 메리크리스마스 !!! ','2022-02-14 16:26:23','/home/petNme/images/220215/','fbefa0ff-3365-449e-8536-a0d5c28f0f6fturtle7.jpg'),(142,61,'이렇게 작았었었는데..! ','2022-02-14 16:26:37','/home/petNme/images/220215/','708cfb74-43aa-4855-8a46-1b455699b331turtle8.jpg'),(143,61,'2022.02.15 오늘의 거북이 ','2022-02-14 16:27:14','/home/petNme/images/220215/','aa550366-47a9-4f4a-a3ee-a19e82f3d9bcturtle9.jpg'),(144,61,'쑥쑥 컸다 ~! ','2022-02-14 16:28:25','/home/petNme/images/220215/','93fe36f3-ac16-49ee-a37e-0216de30edb6turtle10.jpg'),(145,61,'뭘 보세요 ? ? ? ','2022-02-14 16:28:51','/home/petNme/images/220215/','c8999056-22e5-470a-979b-4e86ae30a582turtle11.jpg'),(146,61,'아가거북이~!~! ','2022-02-14 16:29:07','/home/petNme/images/220215/','583d0da0-130b-4f52-b48c-e2b340b92678turtle13.jpg'),(147,61,'꼬부기 최애 옷,, 꿀벌옷 너무 귀엽다,,','2022-02-14 16:30:40','/home/petNme/images/220215/','866efa8c-739e-4388-a028-c7950433d80eturtle14.jpg'),(148,61,'잘 ~ ~ 먹는다 ~~ ','2022-02-14 16:30:54','/home/petNme/images/220215/','4f0ecf87-f4cd-4706-b283-5254db721346turtle15.jpg'),(149,61,'제주도 간 기념,, 귤이 되었습니다 ~! ','2022-02-14 16:31:15','/home/petNme/images/220215/','17522236-8eb3-4e9a-919a-117a21e4aefeturtle16.jpg'),(150,61,'여기보세요 ','2022-02-14 16:31:29','/home/petNme/images/220215/','9d7d4f73-38b2-4cbe-a03f-d554e81fdb66turtle17.jpg'),(151,61,'이제 핸들링도 잘하지 ??? ','2022-02-14 16:31:55','/home/petNme/images/220215/','f181ef48-f39c-45c2-b21a-1d17020be147turtle18.jpg'),(152,61,'따듯하게 지내라~! ','2022-02-14 16:32:20','/home/petNme/images/220215/','618d77f8-7468-45c4-9b85-8971a9a26284turtle20.jpg'),(153,58,'선아와의 첫만남!!!\n낯가리지 않구 잘 돌아다녀서 다행이야, 엄마가 이뻐해줄게~','2022-02-14 22:46:13','/home/petNme/images/220215/','64cfbdb0-ad64-4a1f-a26f-4b13a7b83383pig1.jpg'),(154,58,'선아가 프로필사진을 찍었답니다!!!!\n이쁘게 찍어주신 작가님께 감사드려요ㅎㅎ\n오늘은 고생했으니까 좋아하는 양배추 맘껏 먹으렴ㅎㅎ','2022-02-14 22:52:59','/home/petNme/images/220215/','571a4703-859d-4d7c-b1dc-50eb4603248dpig2.jpg'),(155,58,'자는 모습도 너무 이쁜 우리 선아~~','2022-02-14 22:54:19','/home/petNme/images/220215/','ddbef2bc-d519-4965-970c-c9f056434f2epig4.png'),(156,58,'선아 거기서 뭐해~~??','2022-02-14 22:54:44','/home/petNme/images/220215/','56b21c4b-1b27-4a6f-b455-e8020a6b4e9epig7.jpg'),(157,58,'일광욕 중인 선아!!','2022-02-14 22:55:10','/home/petNme/images/220215/','040bb8fe-4c1c-40dd-8cf0-fec1cc1e6cecpig9.jpg'),(158,58,'사진찍자구하면 포즈 취해주는 우리 선아\n너무 이뻐ㅎㅎ','2022-02-14 22:57:53','/home/petNme/images/220215/','07f0ce92-b0db-4ba3-85a0-e656c72fe434pig10.jpg'),(160,58,'친구랑 바깥나들이~','2022-02-15 04:19:35','/home/petNme/images/220215/','aa6d8291-d3c0-40a0-8dd2-8bcd1ff5c61bpig12.jpg'),(161,58,'오늘도 너무 이쁜 우리애기','2022-02-15 04:20:25','/home/petNme/images/220215/','f79148dc-6524-4efc-9a58-8e48b8923462pig5.jpg'),(162,58,'오늘 몸이 안좋은가.. 산책을 가기 싫다고 하네요ㅠ','2022-02-15 04:20:51','/home/petNme/images/220215/','4c8e3b85-7538-4b56-bda9-b209c358f4bcpig6.jpg'),(163,59,'막내 애기일때ㅎ','2022-02-15 04:21:44','/home/petNme/images/220215/','b2424d63-eadc-4c18-91a1-ab3a1216b0abrabbit3.jpg'),(164,59,'막내는 쑥쑥 자라고 있어요','2022-02-15 04:22:16','/home/petNme/images/220215/','a6183867-60b6-410f-9787-d90cc2ca3843rabbit5.jpg'),(165,59,'막내 오빠','2022-02-15 04:22:36','/home/petNme/images/220215/','8353b27b-1c04-4763-9bb6-187e99bdbe68rabbit1.jpg'),(166,59,'막내 언니','2022-02-15 04:22:53','/home/petNme/images/220215/','da039719-3bdc-4677-8937-2aca909ed89frabbit6.jpg'),(167,59,'막내 언니도 이쁘지만 난 그래도 막내가 더 좋아ㅎ','2022-02-15 04:23:05','/home/petNme/images/220215/','4654ba1f-33d2-4736-b8fd-3a166b49cca7rabbit12.PNG'),(168,59,'너는 왜 뛰어놀질않아..?','2022-02-15 04:23:21','/home/petNme/images/220215/','7ea9d227-ad61-4fa0-a480-d55ec80234acrabbit11.jpg'),(169,59,'막내 정면샷','2022-02-15 04:23:33','/home/petNme/images/220215/','a209faec-415c-4512-9831-6ff9e17a42b3rabbit7.png'),(170,59,'자체 수줍음 타기','2022-02-15 04:24:31','/home/petNme/images/220215/','a85e856b-4f32-49b9-8c6c-539f7fdd389frabbit8.jpg'),(171,59,'너무 귀엽잖아..','2022-02-15 04:24:58','/home/petNme/images/220215/','a5d071a2-7402-4b1d-b031-6dcb39b03983rabbit9.jpg'),(172,59,'반성좀 해야해','2022-02-15 04:25:19','/home/petNme/images/220215/','9b0c3005-8e4f-4ead-90d5-e77898ab2b44rabbit10.jpg'),(173,58,'선아 동생~','2022-02-15 04:26:18','/home/petNme/images/220215/','0f156518-9758-4a60-9ddb-1d830a03f9ddpig8.jpg'),(174,51,'쿠키최애 = 골프가방 ','2022-02-15 00:34:01','/home/petNme/images/220215/','2b949e36-04a4-4b53-b858-c1444fe4aa0dcookie8.jpg'),(175,51,'아저씨 여기서 주무시면 안돼요. ','2022-02-15 00:35:13','/home/petNme/images/220215/','a24ac7db-1443-4376-b420-c355f53468eacookie9.jpg'),(176,51,'산책가자고 서있는거야..? 가자.. ','2022-02-15 00:35:48','/home/petNme/images/220215/','5c1f19ca-9a34-4435-a05e-aa2bfa422415cookie11.jpg'),(177,51,'빼꼼 보고있는 쿠키.. 간식달라고..? ','2022-02-15 00:36:14','/home/petNme/images/220215/','fffe1cc2-bbb6-497c-9042-4fa36777623ccookie13.jpg'),(178,51,'오늘은 얌전히 씻자..? ','2022-02-15 00:36:32','/home/petNme/images/220215/','78113ac5-bc07-444c-887e-87cbc0695aa8cookie14.jpg'),(180,51,'너무 귀여운데..? (웅성웅성) ','2022-02-15 00:37:21','/home/petNme/images/220215/','2fdb3395-a865-40a7-9956-fde046809ac7cookie16.jpg'),(181,51,'꼭 자기 밥만 관심없지! ','2022-02-15 00:37:38','/home/petNme/images/220215/','7c30ec87-61d2-46ca-a43d-109bf490f4abcookie17.jpg'),(182,51,'쿠키도 밥먹자~!! ','2022-02-15 00:37:49','/home/petNme/images/220215/','2dbadd27-4424-4837-9290-ffa7cd620526cookie18.jpg'),(185,63,'아롱이 우리집에 처음온 날~\r\n앞으로 언니가 잘 키워줄게!!','2022-02-17 06:06:00','/home/test/images/220217/','86bc377d-ee7b-40fc-b840-612c87b6a5d3arong1.jpeg'),(186,63,'아롱이의 엄마 아빠에요!!\r\n쏙 빼닮았죠ㅎㅎㅎ\r\n아롱이도 엄마아빠보니까 좋아하네요~','2022-02-17 06:06:45','/home/test/images/220217/','4fb763c8-b2d8-4a4b-9b19-74cf4ccee162arong3.jpeg'),(187,63,'산책나와서 졸고 있는 아롱이...\r\n아롱아...? 이럴거면 나오자고하지 말지..ㅋㅋㅋㅋㅋㅋㅋㅋ','2022-02-17 06:07:16','/home/test/images/220217/','745d73f9-e54a-4af5-8ef9-63430f6d13a6arong4.jpeg'),(188,63,'아빠 품에 안겨서 놀랬어?ㅋㅋㅋㅋㅋㅋ','2022-02-17 06:07:37','/home/test/images/220217/','5cbab4ff-c9b5-4bd5-98d0-001f62c2e8daarong6.jpeg'),(189,63,'웃는 것도 너무 이쁜 아롱이!!!!!!!!!\r\n사랑해~~~!!!!!!','2022-02-17 06:07:56','/home/test/images/220217/','360bfb52-1b01-44f6-91f3-72ce706f996aarong7.jpeg'),(190,63,'아롱이가 새롭게 꽃단장을했어요~\r\n자른거도 너무 이쁘다 아롱아ㅎㅎ','2022-02-17 06:08:15','/home/test/images/220217/','fd97a397-8107-4b02-8e09-da82402334e4arong8.jpeg'),(191,63,'남성미 뿜뿜!!\r\n너무 멋잇어~ 누나랑 평생 같이 살자ㅠㅠ','2022-02-17 06:09:12','/home/test/images/220217/','bcba2436-8c5e-4b70-ab40-ff686d03efc1arong9.jpeg'),(192,63,'애기 졸려ㅋㅋㅋㅋㅋㅋㅋㅋ\r\n어렸을때는 잠이 많았어요ㅎㅎ','2022-02-17 06:09:57','/home/test/images/220217/','7ae3d8d6-8e53-4240-8f35-20c50a9461e3arong10.jpeg'),(193,63,'아롱이, 엄마, 아빠ㅋㅋㅋㅋㅋㅋ\r\n3명이 나란히 서있는게 너무 웃겨서..ㅋㅋㅋㅋㅋ','2022-02-17 06:10:37','/home/test/images/220217/','c737e3a4-3ed4-4180-b140-e2effdbb7224arong11.jpeg'),(194,63,'아롱이 산책나왔습니다~\r\n벌써 이렇게나 자라버렸네요ㅎㅎ','2022-02-17 06:11:04','/home/test/images/220217/','8c335507-e2ee-408e-96a9-b63d582869d6arong12.jpeg');
/*!40000 ALTER TABLE `Feed` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-18  5:16:44
