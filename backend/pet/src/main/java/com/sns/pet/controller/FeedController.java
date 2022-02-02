package com.sns.pet.controller;

import com.sns.pet.dto.FeedDto;
import com.sns.pet.dto.FileInfoDto;
import com.sns.pet.service.FeedService;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;


@RestController
@RequiredArgsConstructor
@CrossOrigin(origins = { "*" }, maxAge = 6000)
@RequestMapping("/main")
public class FeedController {

    private static final Logger logger = LoggerFactory.getLogger(FeedController.class);
    private static final String SUCCESS = "success";
    private static final String FAIL = "fail";

    private final FeedService feedService;

    //    @ApiOperation(value = "뉴스 피드 목록 반환", response = FeedDto.class)
//    @GetMapping("/newsfeed")
//    public ResponseEntity<List<FeedDto>> newsFeedList(@PathVariable("userNumber") int userNumber) throws Exception{
//        logger.info("뉴스 피드 목록 - 호출");
//        return null;
//    }

    @ApiOperation(value = "userNumber에 해당하는 내 피드 목록 반환", response = FeedDto.class)
    @GetMapping("/feed/list/{userNumber}")
    public ResponseEntity<List<FeedDto>> myFeedList(@PathVariable("userNumber") Long userNumber) throws Exception{
        logger.info("내 피드 목록 - 호출" + userNumber);
        return new ResponseEntity<>(feedService.findMyFeedList(userNumber), HttpStatus.OK);
    }

    @ApiOperation(value = "feed 생성, DB 입력 여부에 따라 success, fail 반환", response = FeedDto.class)
    @PostMapping("/feed")
    public ResponseEntity<String> feedAdd(@RequestPart(value = "feedContent") String feedContent,
                                          @RequestPart(value = "userNumber") String userNumber,
                                          @RequestPart(value = "feedPhoto", required = false) List<MultipartFile> upImages) throws Exception {
        logger.info("feedAdd - 호출");
        logger.info("feedContent : {}", feedContent);
        logger.info("userNumber : {}", userNumber);
        FeedDto feedDto = new FeedDto();
        feedDto.setFeedContent(feedContent);
        feedDto.setUserNumber(Long.parseLong(userNumber));

        // fileUpload 설정
        if (upImages != null && !upImages.isEmpty()) {
            logger.info("file 확인");
            String today = new SimpleDateFormat("yyMMdd").format(new Date());
            String UPLOAD_PATH = File.separator + "Users" + File.separator + "leejuhyeong" + File.separator + "test";
//            String UPLOAD_PATH = File.separator + "home" + File.separator + "test" + File.separator + "images";           // ec2 서버용
            String originName, fileExtension, saveFileName, saveFolder;

            logger.info("저장경로 확인 : {}", UPLOAD_PATH);
            // 폴더 생성
            saveFolder = UPLOAD_PATH + File.separator + today + File.separator;
            File folder = new File(saveFolder);
            if (!folder.exists()) {
                logger.info("폴더 생성 : {}", saveFolder);
                folder.mkdirs();
            }

            // 파일 저장
            List<FileInfoDto> fileInfoDtoList = new ArrayList<>();
            for (MultipartFile image : upImages) {
                originName = image.getOriginalFilename();                                   // 파일이름.확장자

                if (!originName.isEmpty()) {
                    fileExtension = originName.substring(originName.lastIndexOf(".") + 1);  // 확장자
                    originName = originName.substring(0, originName.lastIndexOf("."));      // 파일이름
                    saveFileName = UUID.randomUUID() + originName + "." + fileExtension;
                    logger.info("파일 이름 생성 : {}", saveFileName);

                    logger.info("file 저장");
                    image.transferTo(new File(saveFolder, saveFileName));
                    logger.info("file list에 추가");
                    fileInfoDtoList.add(new FileInfoDto(saveFolder, saveFileName));
                }
            }
            feedDto.setFileInfoDtoList(fileInfoDtoList);
            feedDto.setFeedThumbnailFolder(feedDto.getFileInfoDtoList().get(0).getSaveFolder());
            feedDto.setFeedThumbnailName(feedDto.getFileInfoDtoList().get(0).getPhotoName());
        }

        logger.info("DB 저장 시작");
        if (feedService.addFeed(feedDto)) {
            logger.info("DB 저장 완료");
            return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
        }
        logger.info("DB 저장 실패");
        return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
    }

    @ApiOperation(value = "feedNumber에 해당하는 피드 반환", response = FeedDto.class)
    @GetMapping("/feed/{feedNumber}")
    public ResponseEntity<FeedDto> feedDetails(@PathVariable("feedNumber") Long feedNumber) throws Exception{
        logger.info("feedDetails - 호출" + feedNumber);
        FeedDto feedDto = feedService.findFeed(feedNumber);

        // 이미지 변환
        InputStream imageStream;
        for (FileInfoDto fileInfoDto : feedDto.getFileInfoDtoList()) {
            imageStream = new FileInputStream(fileInfoDto.getSaveFolder() + fileInfoDto.getPhotoName());
            fileInfoDto.setPhoto(IOUtils.toByteArray(imageStream));
        }
        return new ResponseEntity<FeedDto>(feedDto, HttpStatus.OK);
    }

    @GetMapping("/feed/img")
    public ResponseEntity<byte[]> feedImage(@RequestParam("image") String imageName) throws Exception{
        logger.info("feedDetails - 호출" + imageName);

        // file, inputstream
//        try {
//            InputStream imageStream = new FileInputStream(imageName);
//            HttpHeaders headers = new HttpHeaders();
//            headers.add("Content-Type", Files.probeContentType(Paths.get(imageName)));
//            return new ResponseEntity<byte[]>(IOUtils.toByteArray(imageStream), headers, HttpStatus.OK);
//        } catch (Exception e) {
        //  만약 사진이 없다면 오류가남 -> 기본이미지 업로드해서 그걸로 대체하도록 구현
//            return new ResponseEntity<>()
//        }
        InputStream imageStream = new FileInputStream(imageName);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", Files.probeContentType(Paths.get(imageName)));
        return new ResponseEntity<byte[]>(IOUtils.toByteArray(imageStream), headers, HttpStatus.OK);

        // Resource
//        Resource resource = new FileSystemResource(imageName);
//        HttpHeaders headers = new HttpHeaders();
//        headers.add("Content-Type", Files.probeContentType(Paths.get(imageName)));
//        return new ResponseEntity<>(resource, headers, HttpStatus.OK);
    }


//    @ApiOperation(value = "feedNumber에 해당하는 피드 수정, DB입력 성공 여부에 따라 success, fail 반환")
//    @PutMapping("/feed/{feedNumber}")
//    public ResponseEntity<String> feedModify(@RequestBody FeedDto feedDto) throws Exception{
//        logger.info("feedModify - 호출");
//        if(feedService.feedModify(feedDto)){
//            return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
//        }
//        return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
//    }

//    @ApiOperation(value = "feedNumber에 해당하는 피드 삭제, DB입력 성공 여부에 따라 success, fail 반환")
//    @DeleteMapping("/feed/{feedNumber}")
//    public ResponseEntity<String> feedRemove(@RequestBody int feedNumber) throws Exception{
//        logger.info("feedRemove");
//        if(feedService.feedRemove(feedNumber)){
//            return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
//        }
//        return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
//    }

}
