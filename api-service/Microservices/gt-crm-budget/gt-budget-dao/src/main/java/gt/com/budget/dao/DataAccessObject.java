/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gt.com.budget.dao;

import gt.com.budget.model.Usuario;
import java.util.List;
/**
 *
 * @author alex
 */
public interface DataAccessObject {
   List<Usuario> finAllUsuario();
}