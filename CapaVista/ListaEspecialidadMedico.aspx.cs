﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDatos;
using CapaNegocio;
using System.Data.Linq;

namespace CapaVista
{
    public partial class ListaEspecialidadMedico : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargar();
            }
        }

        public void cargar()
        {

            List<Mostrar_espe_medicoResult> lista = new List<Mostrar_espe_medicoResult>();
            lista = LogicaEspecialidadMedico.Mostrar_espe_me();
            if (lista != null)
            {
                GridView1.DataSource = lista;
                GridView1.DataBind();
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            int codigo = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "Edit")
            {
                Response.Redirect("~/AgregarEspecialidadMedico.aspx?cod=" + codigo, true);
            }
            else if (e.CommandName == "Eliminar")
            {               
                    LogicaEspecialidadMedico.delete(codigo);
                    cargar();
         
           }

        }
        protected void img_lupa_Click(object sender, ImageClickEventArgs e)
        {

            List<sp_buscar_espemed_xmedicoResult> cap = new List<sp_buscar_espemed_xmedicoResult>();
            string op = ddl_criterio.SelectedValue;
            if (op != "0")
            {
                switch (op)
                {
                    case "N":
                        cap = LogicaEspecialidadMedico.BuscarMedEspe(txt_buscar.Text);
                        if (cap != null)
                        {
                            if (txt_buscar.Text == "")
                            {
                                cargar();

                            }
                            else
                            {
                                GridView1.DataSource = cap;
                                GridView1.DataBind();
                            }
                        }
                        else
                        {
                            cargar();
                        }
                        break;
                }
            }
        }
        protected void lnk_nuevo_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AgregarEspecialidadMedico.aspx");
        }

        protected void grd_espe_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ddl_criterio_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void txt_buscar_TextChanged(object sender, EventArgs e)
        {

        }

        

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}