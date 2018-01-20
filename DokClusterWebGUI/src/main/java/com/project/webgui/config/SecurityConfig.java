package com.project.webgui.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth.inMemoryAuthentication().withUser("user").password("123456").roles("USER");
        auth.inMemoryAuthentication().withUser("admin").password("123456").roles("ADMIN");
        auth.inMemoryAuthentication().withUser("db").password("123456").roles("DB");
        auth.inMemoryAuthentication().withUser("henrik").password("123456").roles("USER");
        auth.inMemoryAuthentication().withUser("eric").password("123456").roles("USER");
        auth.inMemoryAuthentication().withUser("franz").password("123456").roles("USER");
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {

        http.authorizeRequests()
                .antMatchers("/resources/**", "/login", "/logout").permitAll()
                .antMatchers("/admin/**")
                    .access("hasRole('ROLE_ADMIN')")
                .antMatchers("/dba/**")
                    .access("hasRole('ROLE_ADMIN') or hasRole('ROLE_DBA')")
                .antMatchers("/content/**")
                    .access("hasRole('ROLE_ADMIN') or hasRole('ROLE_DB') or hasRole('ROLE_USER')")
                .antMatchers("/**")
                    .access("hasRole('ROLE_ADMIN') or hasRole('ROLE_DB') or hasRole('ROLE_USER')")
                .anyRequest().authenticated()
                .and()
                .formLogin()
                .loginPage("/login")
                .permitAll();
    }
}
