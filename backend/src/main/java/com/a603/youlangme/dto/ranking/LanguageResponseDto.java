package com.a603.youlangme.dto.ranking;

import lombok.*;

import java.io.Serializable;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class LanguageResponseDto implements Serializable {

    private String Language;

    private double percent;
}
