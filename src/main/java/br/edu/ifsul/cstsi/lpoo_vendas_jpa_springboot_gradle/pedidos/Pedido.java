package br.edu.ifsul.cstsi.lpoo_vendas_jpa_springboot_gradle.pedidos;

import br.edu.ifsul.cstsi.lpoo_vendas_jpa_springboot_gradle.clientes.Cliente;
import br.edu.ifsul.cstsi.lpoo_vendas_jpa_springboot_gradle.itens.Item;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
import java.util.List;

@Entity
@Table(name = "pedidos")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Pedido {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String formaPagamento;
	private Estado estado;
	private LocalDate dataCriacao;
	private LocalDate dataModificacao;
	private Double totalPedido;
	private Boolean situacao;
	@ManyToOne
	@JoinColumn(name = "cliente_id", referencedColumnName = "id")
	private Cliente cliente;
	@OneToMany(mappedBy = "pedido", fetch = FetchType.EAGER)
	List<Item> itens;

	@Override
	public String toString() {
		return "\n\nPedido{" +
			"id=" + id +
			", formaPagamento='" + formaPagamento + '\'' +
			", estado='" + estado + '\'' +
			", dataCriacao=" + dataCriacao +
			", dataModificacao=" + dataModificacao +
			", totalPedido=" + totalPedido +
			", situacao=" + situacao +
			", cliente=" + cliente +
			", itens=" + itens +
			'}';
	}
}
