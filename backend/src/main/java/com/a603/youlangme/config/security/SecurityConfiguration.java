package com.a603.youlangme.config.security;


import com.a603.youlangme.config.logging.LoggingFilter;
import com.a603.youlangme.service.oauth.WebOAuth2SuccessHandler;
import com.a603.youlangme.service.oauth.WebOAuth2UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityCustomizer;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.oauth2.client.web.OAuth2LoginAuthenticationFilter;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.access.intercept.FilterSecurityInterceptor;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.security.web.csrf.CsrfFilter;
import org.springframework.security.web.firewall.DefaultHttpFirewall;
import org.springframework.security.web.firewall.HttpFirewall;
import org.springframework.security.web.session.DisableEncodeUrlFilter;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.CorsConfigurationSource;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.filter.CorsFilter;

import java.util.Arrays;
import java.util.Collections;

@RequiredArgsConstructor
@Configuration
//@EnableWebSecurity(debug = true)
//@EnableGlobalMethodSecurity(prePostEnabled = true, securedEnabled = true)
public class SecurityConfiguration {
    private final JwtProvider jwtProvider;

    private final WebOAuth2SuccessHandler oAuthSuccessHandler;
    private final WebOAuth2UserService oAuthUserService;

    // Security Filter ???, UsernamePasswordAuthentication??? ?????? ?????? ???????????? AuthenticationManager??? ?????? ????????? ?????????
    // ????????? ???????????? ?????? ????????? SecuritycontextHolder??? SecurityContext??? ????????? Authentication ????????? ?????????

    @Bean
    public AuthenticationManager authenticationManagerBean(AuthenticationConfiguration authenticationConfiguration) throws Exception {
        return authenticationConfiguration.getAuthenticationManager();
    }

    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {

        http.cors().and()
                .httpBasic().disable() // ?????? ????????? ??? ????????? ????????? ????????? ??????????????? ????????? REST API ????????? disable
                .csrf().disable() // REST API ????????? ????????? ???????????? ?????? ????????? CSRF ????????? ????????? ????????? ???????????? disable
                .sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS) // Jwt??? ??????????????? ????????? ???????????? ??????
                .and()
                .authorizeRequests() // exception Handling??? ?????? permit
                .antMatchers("/login/**", "/signup/**", "/reissue", "/oauth2/**", "/exception/**", "/home", "/user/image/**", "/image/**","/findPwd/**","/redis/**").permitAll() // ?????????, ??????????????? ????????? ??????
                .anyRequest().hasRole("USER")

                .and()
                .exceptionHandling()

                // jwt ????????? ????????? ????????? ?????? ?????? exceptionHandling
                .authenticationEntryPoint(new WebAuthenticationEntryPoint())

                // ?????? ????????? ???????????? ?????? ????????? ????????? ?????? exceptionHandling
                .accessDeniedHandler(new WebAccessDeniedHandler())

                .and()
                .addFilterBefore(new JwtAuthenticationFilter(jwtProvider), UsernamePasswordAuthenticationFilter.class)
                .oauth2Login()
                .authorizationEndpoint()
                .baseUri("/oauth2/authorization")
                .and()
                .redirectionEndpoint()
                .baseUri("/oauth2/callback/*")
                .and()
                .userInfoEndpoint()
                .userService(oAuthUserService)
                .and()
                .successHandler(oAuthSuccessHandler);
        return http.build();
    }



    @Bean
    public WebSecurityCustomizer webSecurityCustomizer() {
        // Swagger ?????? Url ????????????
        return (web) -> web.ignoring().antMatchers("/v2/api-docs", "/swagger-resources/**",
                "/swagger-ui/index.html", "/webjars/**", "/swagger/**", "/swagger-ui/**", "/resources/**");
    }
}
