/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gt.con.strategy.svc;

import gt.com.strategy.model.Usuario;
import java.math.BigDecimal;
import java.util.List;

/**
 *
 * @author alex
 */
public interface Serviceinterface {
     public List<Usuario> findAll();
    public Boolean deleteUsuario(BigDecimal id);
    public Boolean updateUsuario(Usuario usuario);
    public Boolean saveUsuario(Usuario usuario);
}
