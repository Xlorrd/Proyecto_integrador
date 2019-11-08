﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDatos;
using CapaNegocio;  

namespace CapaVista
{
    public partial class Cli_iniciar : System.Web.UI.Page
    {
        int contador = 1;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["con"] = Session["ConAntiguo"];
        }
        public void Ingresar()
        {

            //  lblMensaje.Visible = false;
            if (string.IsNullOrEmpty(txt_usuario.Text))
            {
                intento.Text = (contador + (Convert.ToInt32(Session["con"]))).ToString();
                Session["ConAntiguo"] = intento.Text.ToString();
                if (Convert.ToInt32(intento.Text) == 3)
                {
                    btn_ingresar.Enabled = false;
                    Session["con"] = null;
                    Session["ConAntiguo"] = null;
                }
                // lblMensaje.Visible = true;

                txt_usuario.Attributes.Add("placeholder", "Escribe un usuario");
                // txt_usu.BorderColor=System.Drawing.Color.FromArgb(255,0,0) ;
                // txt_usu.BorderStyle = BorderStyle.Solid;
                return;
            }

            if (string.IsNullOrEmpty(txt_contra.Text))
            {
                intento.Text = (contador + (Convert.ToInt32(Session["con"]))).ToString();
                Session["ConAntiguo"] = intento.Text.ToString();
                if (Convert.ToInt32(intento.Text) == 3)
                {
                    btn_ingresar.Enabled = false;
                    Session["con"] = null;
                    Session["ConAntiguo"] = null;
                }

                //  lblMensaje.Visible = true;
                txt_contra.Attributes.Add("placeholder", "Ingrese  una clave");
                return;
            }

            bool existe = UsuarioLogica.Autentificar(txt_usuario.Text, txt_contra.Text);
            {
                if (existe)
                {
                    Persona usuario = new Persona();
                    usuario = UsuarioLogica.Autentificarlogin(txt_usuario.Text, txt_contra.Text);

                    int tipousuario = Convert.ToInt32(usuario.id_tipousu);

                    if (tipousuario == 1)
                    {
                        Session["New"] = txt_usuario.Text;
                        Response.Redirect("~/MenuAdministrador.aspx");

                    }
                    if (tipousuario == 2)
                    {
                       
                        Session["New"] = txt_usuario.Text;
                        Response.Redirect("~/Cli_menu.aspx");

                    }
                    if (tipousuario == 3)
                    {
                        Session["New"] = txt_usuario.Text;
                        Response.Redirect("~/Doc_menu.aspx");

                    }
                    if (tipousuario == 5)
                    {
                        Session["New"] = txt_usuario.Text;
                        Response.Redirect("~/xprueba.aspx");

                    }
                        


                }
                else
                {
                    //  lblMensaje.Visible = true;
                    txt_contra.Attributes.Add("placeholder", "Contraseña o usuario incorrecto");
                    return;
                }

            }


        }

        protected void btn_registra_Click(object sender, EventArgs e)
        {
            Ingresar();
        }
    }
}