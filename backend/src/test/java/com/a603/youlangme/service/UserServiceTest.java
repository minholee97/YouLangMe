package com.a603.youlangme.service;

import com.a603.youlangme.dto.user.UserLevelDetailsResponseDto;
import com.a603.youlangme.entity.User;
import org.junit.Test;
import org.junit.jupiter.api.Assertions;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@RunWith(SpringRunner.class) // JUnit을 스프링과 함께 실행
@SpringBootTest // 스프링 컨테이너 안에서 테스트를 돌리기 위해, Autowired를 위해
@Transactional // 롤백을 위해 (테스트에서는 자동 롤백을 지원?)
public class UserServiceTest {

    @Autowired
    UserService userService;

    @Test
    public void userLevelDetailsTest() throws Exception {
        //given
        User user = userService.findUserById(1001L);

        //when
        UserLevelDetailsResponseDto res = userService.readUserLevelDetails(user.getId());

        //then
        Assertions.assertEquals(4730, res.getMeetingTime());
        Assertions.assertEquals(4, res.getMeetingCnt());
        Assertions.assertEquals(3, res.getBoardCnt());
        Assertions.assertEquals(1, res.getReplyCnt());
        Assertions.assertEquals(0, res.getAttendanceCnt());
    }

}
