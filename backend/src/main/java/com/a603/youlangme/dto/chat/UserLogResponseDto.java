package com.a603.youlangme.dto.chat;

import lombok.*;

import java.io.Serializable;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class UserLogResponseDto implements Serializable {

    private String Language;

    private double percent;
}
