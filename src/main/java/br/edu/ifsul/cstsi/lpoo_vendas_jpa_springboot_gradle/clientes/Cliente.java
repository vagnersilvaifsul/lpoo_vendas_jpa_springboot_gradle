package br.edu.ifsul.cstsi.lpoo_vendas_jpa_springboot_gradle.clientes;

import br.edu.ifsul.cstsi.lpoo_vendas_jpa_springboot_gradle.pedidos.Pedido;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Entity
@Table(name = "clientes")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Cliente {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String nome;
	private String sobrenome;
	private Boolean situacao;
	@OneToMany(mappedBy = "cliente")
	List<Pedido> pedidos;


	@Override
	public String toString() {
		return "\nCliente{" +
			"id=" + id +
			", nome='" + nome + '\'' +
			", sobrenome='" + sobrenome + '\'' +
			", situacao=" + situacao +
			'}';
	}
}
