package br.edu.ifsul.cstsi.lpoo_vendas_jpa_springboot_gradle;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class LpooVendasJpaSpringbootGradleApplication {

    public static void main(String[] args) {
        SpringApplication.run(LpooVendasJpaSpringbootGradleApplication.class, args);
        HomeController.main();
    }

}
