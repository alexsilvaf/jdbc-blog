/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.DAO;

import br.com.DTO.ClienteDTO;
import br.com.Enums.Tipo;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Optional;

/**
 *
 * @author sala19a
 */
public class ClienteDAO {

    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    ArrayList<ClienteDTO> clienteList = new ArrayList<>();

    public ArrayList<ClienteDTO> findAll() throws ClassNotFoundException {
        con = new ConexaoDAO().conexaoBD();

        try {
            ps = con.prepareStatement("SELECT * FROM clientes");
            rs = ps.executeQuery();

            while (rs.next()) {
                ClienteDTO obj = new ClienteDTO();
                obj.setIdCliente(rs.getInt("idCliente"));
                obj.setNomeCliente(rs.getString("nomeCliente"));
                obj.setDataNascimento(rs.getDate("dataNascimento").toLocalDate());
                obj.setUsuario(rs.getString("usuario"));
                obj.setSenha(rs.getString("senha"));
                obj.setTipo(rs.getString("tipo").charAt(0));

                clienteList.add(obj);
            }
            ps.close();
        } catch (SQLException ex) {
        }

        return this.clienteList;
    }

    public ClienteDTO findByUsuario(String usuario) throws ClassNotFoundException {
        con = new ConexaoDAO().conexaoBD();
        ClienteDTO cliente = new ClienteDTO();

        try {
            ps = con.prepareStatement("SELECT * FROM clientes WHERE usuario = ?");
            ps.setString(1, usuario);
            rs = ps.executeQuery();

            while (rs.next()) {
                cliente.setIdCliente(rs.getInt("idCliente"));
                cliente.setNomeCliente(rs.getString("nomeCliente"));
                cliente.setDataNascimento(rs.getDate("dataNascimento").toLocalDate());
                cliente.setUsuario(rs.getString("usuario"));
                cliente.setSenha(rs.getString("senha"));
                cliente.setTipo(rs.getString("tipo").charAt(0));
            }

            ps.close();

        } catch (SQLException e) {
            e.getMessage();
        }
        
        return cliente;
    }

    public ClienteDTO findById(int id) throws ClassNotFoundException {
        con = new ConexaoDAO().conexaoBD();
        ClienteDTO cliente = new ClienteDTO();

        try {
            ps = con.prepareStatement("SELECT * FROM clientes WHERE idCliente = ?");
            ps.setInt(1, id);
            rs = ps.executeQuery();

            while (rs.next()) {
                cliente.setIdCliente(rs.getInt("idCliente"));
                cliente.setNomeCliente(rs.getString("nomeCliente"));
                cliente.setDataNascimento(rs.getDate("dataNascimento").toLocalDate());
                cliente.setUsuario(rs.getString("usuario"));
                cliente.setSenha(rs.getString("senha"));
                cliente.setTipo(rs.getString("tipo").charAt(0));
            }

            ps.close();

        } catch (SQLException e) {
            e.getMessage();
        }
        return cliente;
    }

    public void save(ClienteDTO objClienteDTO) throws ClassNotFoundException {
        con = new ConexaoDAO().conexaoBD();

        try {
            ps = con.prepareStatement("INSERT INTO clientes(nomeCliente, dataNascimento, usuario, senha) values (?, ?, ?, ?)");
            ps.setString(1, objClienteDTO.getNomeCliente());
            ps.setDate(2, java.sql.Date.valueOf(objClienteDTO.getDataNascimento()));
            ps.setString(3, objClienteDTO.getUsuario());
            ps.setString(4, objClienteDTO.getSenha());
            ps.execute();

            ps.close();

        } catch (SQLException e) {
            e.getMessage();
        }
    }

    public void update(ClienteDTO objClienteDTO) throws ClassNotFoundException {
        con = new ConexaoDAO().conexaoBD();

        try {
            ps = con.prepareStatement("UPDATE clientes SET nomeCliente = ?, dataNascimento = ?, usuario = ?, senha = ? WHERE idCliente = ?");
            ps.setString(1, objClienteDTO.getNomeCliente());
            ps.setDate(2, java.sql.Date.valueOf(objClienteDTO.getDataNascimento()));
            ps.setString(3, objClienteDTO.getUsuario());
            ps.setString(4, objClienteDTO.getSenha());
            ps.setInt(5, objClienteDTO.getIdCliente());
            ps.executeUpdate();
            ps.close();

        } catch (SQLException e) {
            System.out.print("Teste: " + e.getMessage());
        }
    }

    public void updateAssinatura(ClienteDTO objClienteDTO) throws ClassNotFoundException {
        con = new ConexaoDAO().conexaoBD();

        try {
            ps = con.prepareStatement("UPDATE clientes SET tipo= ? WHERE idCliente = ?");
            ps.setString(1, objClienteDTO.getTipo().getInitial().toString());
            ps.setInt(2, objClienteDTO.getIdCliente());
            ps.executeUpdate();
            ps.close();

        } catch (SQLException e) {
            System.out.print("Teste: " + e.getMessage());
        }
    }

    public void delete(Integer id) throws ClassNotFoundException {
        con = new ConexaoDAO().conexaoBD();

        try {
            ps = con.prepareStatement("DELETE FROM clientes WHERE idCliente = ?");
            ps.setInt(1, id);
            ps.executeUpdate();
            ps.close();

        } catch (SQLException e) {
            e.getMessage();
        }
    }
}
