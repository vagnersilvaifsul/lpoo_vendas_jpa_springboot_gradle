package br.edu.ifsul.cstsi.lpoo_vendas_jpa_springboot_gradle.itens;

import br.edu.ifsul.cstsi.lpoo_vendas_jpa_springboot_gradle.pedidos.Pedido;
import br.edu.ifsul.cstsi.lpoo_vendas_jpa_springboot_gradle.produtos.Produto;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "itens")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Item {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private Integer quantidade;
	private Double totalItem;
	private Boolean situacao;
	@ManyToOne
	@JoinColumn(name = "produto_id", referencedColumnName = "id")
	private Produto produto;
	@ManyToOne
	@JoinColumn(name = "pedido_id", referencedColumnName = "id")
	private Pedido pedido;


	public Item(Produto produto){
		this.produto = produto;
	}

	@Override
	public String toString() {
		return "\nItem{" +
			"id=" + id +
			", quantidade=" + quantidade +
			", totalItem=" + totalItem +
			", situacao=" + situacao +
			", produto=" + produto +
			'}';
	}
}
