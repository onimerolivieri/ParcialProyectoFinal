package controlador;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Persona;
import modeloDAO.PersonaDAO;

@WebServlet("/Controlador")
public class Controlador extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	String listar = "vistas/listar.jsp";
	String add = "vistas/add.jsp";
	String edit = "vistas/edit.jsp";
	Persona p = new Persona();
	PersonaDAO dao= new PersonaDAO();
	
	int id;
	public Controlador() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String acceso = "";
		String action = request.getParameter("accion");
		if(action.equalsIgnoreCase("listar")) {
			acceso = listar;
		}else if(action.equalsIgnoreCase("add")) {
			acceso=add;
		}else if(action.equalsIgnoreCase("Agregar")){
			String dni = request.getParameter("txtDni");
			String nom = request.getParameter("txtNom");
			p.setDni(dni);
			p.setNom(nom);
			dao.add(p);
			acceso = listar;
		}else if(action.equalsIgnoreCase("editar")) {
			request.setAttribute("idper", request.getParameter("id"));
			acceso = edit;
		}else if(action.equalsIgnoreCase("Actualizar")) {
			id = Integer.parseInt(request.getParameter("txtid"));
			String dni = request.getParameter("txtDni");
			String nom = request.getParameter("txtNom");
			p.setId(id);
			p.setDni(dni);
			p.setNom(nom);
			dao.adit(p);
			acceso = listar;
		}else if(action.equalsIgnoreCase("eliminar")) {
			id = Integer.parseInt(request.getParameter("id"));
			p.setId(id);
			dao.eliminar(id);
			acceso = listar;
		}
		
		RequestDispatcher vista = request.getRequestDispatcher(acceso);
		vista.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
