package com.ea.webclient.security;
/*
 * import javax.sql.DataSource;
 * 
 * import org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.context.annotation.Configuration; import
 * org.springframework.security.config.annotation.authentication.builders.
 * AuthenticationManagerBuilder; import
 * org.springframework.security.config.annotation.web.builders.HttpSecurity;
 * import org.springframework.security.config.annotation.web.configuration.
 * WebSecurityConfigurerAdapter; import
 * org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
 * 
 * @Configuration public class SpringSecurityConfig extends
 * WebSecurityConfigurerAdapter {
 * 
 * @Autowired DataSource dataSource;
 * 
 * 
 * // roles admin allow to access /admin/** // roles user allow to access
 * /user/** // custom 403 access denied handler
 * 
 * @Override protected void configure(HttpSecurity http) throws Exception {
 * 
 * http.csrf().disable() .authorizeRequests() .antMatchers("/", "/home",
 * "/login", "/h2-console/**", "/**").permitAll() .anyRequest().authenticated()
 * .and().formLogin().loginPage("/login").successHandler(new
 * LoginSuccessHandler("/")).permitAll() .and().logout().permitAll()
 * .and().headers().frameOptions().sameOrigin() .and().csrf().disable(); }
 * 
 * 
 * @Bean public AuthenticationSuccessHandler successHandler() { return new
 * CustomLoginSuccessHandler("/"); }
 * 
 * // create two users, admin and user
 * 
 * @Autowired public void configureGlobal(AuthenticationManagerBuilder auth)
 * throws Exception { auth .jdbcAuthentication() .dataSource(dataSource)
 * .usersByUsernameQuery("select username, password, true "+
 * "from tblUser where username=?")
 * .authoritiesByUsernameQuery("select username, 'ROLE_USER'"+
 * "from tblUser where username=?") .passwordEncoder(new
 * BCryptPasswordEncoder()); auth.inMemoryAuthentication()
 * .withUser("user").password("{noop}1234").roles("USER") .and()
 * .withUser("admin").password("{noop}1234").roles("ADMIN");
 * 
 * 
 * } }
 */
