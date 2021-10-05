package com.kaskiv.biathlonTrainingProject.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;

import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {
    @Override
    public void configure(HttpSecurity http) throws Exception {
        http
                .csrf()
                .disable()
                .authorizeRequests()
                //Доступ только для не зарегистрированных пользователей
                .antMatchers("/", "/index", "/registration","/registrationCoach","/aboutUs", "/login" ,"/css/**", "/js/**", "/assets/css/style.css").not().fullyAuthenticated()
                //Доступ только для пользователей с ролью Администратор
                .antMatchers("/coach/**", "coach/main/**", "/indexCoach").hasAnyAuthority("COACH_ROLE")
                .antMatchers("/chooseCoach","/addPlan","/resultControl").hasAnyAuthority ("USER_ROLE")
                //Доступ разрешен всем пользователей
                .antMatchers( "/resources/**","/", "/index", "/registration","/registrationCoach","/aboutUs", "/login" ,"/image/**","/css/**", "/js/**", "/assets/css/style.css").permitAll()
                //Все остальные страницы требуют аутентификации
                .anyRequest().authenticated()
                .and()
                //Настройка для входа в систему
                        .formLogin()
                        .loginPage("/login")
                        .loginProcessingUrl("/j_spring_security_check")
                        .usernameParameter("username")
                        .passwordParameter("password")
                        .defaultSuccessUrl("/")
                        .and()
                        .logout()
                        .permitAll()
                        .logoutUrl("/logout");
    }
    @Bean(name = "passwordEncoder")
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
}
