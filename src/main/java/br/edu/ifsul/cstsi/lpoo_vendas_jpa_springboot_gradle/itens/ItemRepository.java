package br.edu.ifsul.cstsi.lpoo_vendas_jpa_springboot_gradle.itens;

import org.springframework.data.jpa.repository.JpaRepository;

public interface ItemRepository extends JpaRepository<Item,Long> {


}
