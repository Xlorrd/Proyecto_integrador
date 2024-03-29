USE [ProyectoCitas]
GO
/****** Object:  Table [dbo].[Citas]    Script Date: 28/08/2019 20:37:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Citas](
	[cita_id] [int] IDENTITY(1,1) NOT NULL,
	[cita_estado] [varchar](20) NULL,
	[paci_id] [int] NULL,
	[medhor_id] [int] NOT NULL,
	[cita_motivo] [nchar](500) NOT NULL,
 CONSTRAINT [PK_Citas] PRIMARY KEY CLUSTERED 
(
	[cita_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[mostrar]    Script Date: 28/08/2019 20:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[mostrar]
as
select * from Citas
GO
/****** Object:  Table [dbo].[Especialidad]    Script Date: 28/08/2019 20:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Especialidad](
	[espe_id] [int] IDENTITY(1,1) NOT NULL,
	[espe_descripcion] [nchar](50) NOT NULL,
	[espe_estado] [char](1) NOT NULL,
 CONSTRAINT [PK_Especialidad] PRIMARY KEY CLUSTERED 
(
	[espe_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EspecialidadMedico]    Script Date: 28/08/2019 20:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EspecialidadMedico](
	[espmed_id] [int] IDENTITY(1,1) NOT NULL,
	[med_id] [int] NOT NULL,
	[espe_id] [int] NOT NULL,
 CONSTRAINT [PK_EspecialidadMedico] PRIMARY KEY CLUSTERED 
(
	[espmed_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Historial_Clinico]    Script Date: 28/08/2019 20:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Historial_Clinico](
	[histocli_id] [int] IDENTITY(1,1) NOT NULL,
	[cita_id] [int] NULL,
	[paci_id] [int] NOT NULL,
	[espmed_id] [int] NOT NULL,
	[histocli_diagnostico] [nchar](500) NOT NULL,
	[histocli_alergia] [nchar](500) NULL,
	[histocli_receta] [nchar](500) NULL,
	[histocli_enfermedad] [nchar](500) NULL,
 CONSTRAINT [PK_Historial_Clinico] PRIMARY KEY CLUSTERED 
(
	[histocli_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medico]    Script Date: 28/08/2019 20:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medico](
	[med_id] [int] IDENTITY(1,1) NOT NULL,
	[med_abreviatura] [varchar](10) NULL,
	[per_id] [int] NOT NULL,
 CONSTRAINT [PK_Medico] PRIMARY KEY CLUSTERED 
(
	[med_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medico_Horario]    Script Date: 28/08/2019 20:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medico_Horario](
	[medhor_id] [int] IDENTITY(1,1) NOT NULL,
	[espmed_id] [int] NOT NULL,
	[medhor_fecha] [varchar](50) NOT NULL,
	[medhor_hora_ini] [varchar](50) NULL,
	[medhor_hora_fin] [varchar](50) NULL,
	[medhor_estado] [nchar](10) NULL,
 CONSTRAINT [PK_Medico_Horario] PRIMARY KEY CLUSTERED 
(
	[medhor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paciente]    Script Date: 28/08/2019 20:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paciente](
	[paci_id] [int] IDENTITY(1,1) NOT NULL,
	[paci_peso] [varchar](10) NULL,
	[paci_tiposangre] [varchar](10) NULL,
	[paci_estatura] [varchar](10) NULL,
	[per_id] [int] NOT NULL,
 CONSTRAINT [PK_Paciente] PRIMARY KEY CLUSTERED 
(
	[paci_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Persona]    Script Date: 28/08/2019 20:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persona](
	[per_id] [int] IDENTITY(1,1) NOT NULL,
	[per_nombres] [varchar](50) NOT NULL,
	[per_apellidos] [varchar](50) NOT NULL,
	[per_cedula] [int] NULL,
	[per_email] [varchar](50) NULL,
	[per_telefono] [nchar](10) NULL,
	[per_fechanacimiento] [nvarchar](50) NULL,
	[per_genero] [varchar](50) NULL,
	[per_direccion] [varchar](100) NULL,
	[per_estado] [nvarchar](50) NULL,
	[per_fechaCreacion] [nvarchar](50) NULL,
	[per_usuario] [varchar](50) NULL,
	[per_contrasenia] [varchar](50) NULL,
	[id_tipousu] [int] NULL,
 CONSTRAINT [PK_Persona] PRIMARY KEY CLUSTERED 
(
	[per_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_usuario]    Script Date: 28/08/2019 20:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_usuario](
	[id_tipousu] [int] IDENTITY(1,1) NOT NULL,
	[nombre_tipousu] [varchar](50) NOT NULL,
	[estado_tipousu] [char](1) NOT NULL,
 CONSTRAINT [PK_Tipo_usuario] PRIMARY KEY CLUSTERED 
(
	[id_tipousu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Citas]  WITH CHECK ADD  CONSTRAINT [FK_Citas_Medico_Horario] FOREIGN KEY([medhor_id])
REFERENCES [dbo].[Medico_Horario] ([medhor_id])
GO
ALTER TABLE [dbo].[Citas] CHECK CONSTRAINT [FK_Citas_Medico_Horario]
GO
ALTER TABLE [dbo].[Citas]  WITH CHECK ADD  CONSTRAINT [FK_Citas_Paciente] FOREIGN KEY([paci_id])
REFERENCES [dbo].[Paciente] ([paci_id])
GO
ALTER TABLE [dbo].[Citas] CHECK CONSTRAINT [FK_Citas_Paciente]
GO
ALTER TABLE [dbo].[EspecialidadMedico]  WITH CHECK ADD  CONSTRAINT [FK_EspecialidadMedico_Especialidad] FOREIGN KEY([espe_id])
REFERENCES [dbo].[Especialidad] ([espe_id])
GO
ALTER TABLE [dbo].[EspecialidadMedico] CHECK CONSTRAINT [FK_EspecialidadMedico_Especialidad]
GO
ALTER TABLE [dbo].[EspecialidadMedico]  WITH CHECK ADD  CONSTRAINT [FK_EspecialidadMedico_Medico1] FOREIGN KEY([med_id])
REFERENCES [dbo].[Medico] ([med_id])
GO
ALTER TABLE [dbo].[EspecialidadMedico] CHECK CONSTRAINT [FK_EspecialidadMedico_Medico1]
GO
ALTER TABLE [dbo].[Historial_Clinico]  WITH CHECK ADD  CONSTRAINT [FK_Historial_Clinico_Citas] FOREIGN KEY([cita_id])
REFERENCES [dbo].[Citas] ([cita_id])
GO
ALTER TABLE [dbo].[Historial_Clinico] CHECK CONSTRAINT [FK_Historial_Clinico_Citas]
GO
ALTER TABLE [dbo].[Historial_Clinico]  WITH CHECK ADD  CONSTRAINT [FK_Historial_Clinico_EspecialidadMedico] FOREIGN KEY([espmed_id])
REFERENCES [dbo].[EspecialidadMedico] ([espmed_id])
GO
ALTER TABLE [dbo].[Historial_Clinico] CHECK CONSTRAINT [FK_Historial_Clinico_EspecialidadMedico]
GO
ALTER TABLE [dbo].[Historial_Clinico]  WITH CHECK ADD  CONSTRAINT [FK_Historial_Clinico_Paciente] FOREIGN KEY([paci_id])
REFERENCES [dbo].[Paciente] ([paci_id])
GO
ALTER TABLE [dbo].[Historial_Clinico] CHECK CONSTRAINT [FK_Historial_Clinico_Paciente]
GO
ALTER TABLE [dbo].[Medico]  WITH CHECK ADD  CONSTRAINT [FK_Medico_Persona] FOREIGN KEY([per_id])
REFERENCES [dbo].[Persona] ([per_id])
GO
ALTER TABLE [dbo].[Medico] CHECK CONSTRAINT [FK_Medico_Persona]
GO
ALTER TABLE [dbo].[Medico_Horario]  WITH CHECK ADD  CONSTRAINT [FK_Medico_Horario_EspecialidadMedico] FOREIGN KEY([espmed_id])
REFERENCES [dbo].[EspecialidadMedico] ([espmed_id])
GO
ALTER TABLE [dbo].[Medico_Horario] CHECK CONSTRAINT [FK_Medico_Horario_EspecialidadMedico]
GO
ALTER TABLE [dbo].[Paciente]  WITH CHECK ADD  CONSTRAINT [FK_Paciente_Persona1] FOREIGN KEY([per_id])
REFERENCES [dbo].[Persona] ([per_id])
GO
ALTER TABLE [dbo].[Paciente] CHECK CONSTRAINT [FK_Paciente_Persona1]
GO
ALTER TABLE [dbo].[Persona]  WITH CHECK ADD  CONSTRAINT [FK_Persona_Tipo_usuario] FOREIGN KEY([id_tipousu])
REFERENCES [dbo].[Tipo_usuario] ([id_tipousu])
GO
ALTER TABLE [dbo].[Persona] CHECK CONSTRAINT [FK_Persona_Tipo_usuario]
GO
/****** Object:  StoredProcedure [dbo].[Mostrar_Citas]    Script Date: 28/08/2019 20:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Mostrar_Citas] 
as(
select DISTINCT  ci.cita_id ID,cita_estado Estado,pe2.per_apellidos +' '+ pe2.per_nombres Paciente,mh.medhor_fecha  Fecha, mh.medhor_hora_ini+' '+medhor_hora_fin Hora,me.med_abreviatura+'.'+pe.per_apellidos+'-'+es.espe_descripcion   Doctor  , ci.cita_motivo Motivo from Paciente pa, Persona pe ,Citas ci, Medico_Horario mh, EspecialidadMedico em,Especialidad es , Medico me,Paciente pa2, Persona pe2 
 where 
   mh.espmed_id=em.espmed_id and  em.med_id=me.med_id and me.per_id=pe.per_id and ci.paci_id=pa2.paci_id and pa2.per_id=pe2.per_id and ci.medhor_id=mh.medhor_id and ci.medhor_id=mh.medhor_id and mh.espmed_id=em.espmed_id and es.espe_id=em.espe_id
 
);
GO
/****** Object:  StoredProcedure [dbo].[Mostrar_espe_mas_medico]    Script Date: 28/08/2019 20:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Mostrar_espe_mas_medico]
as
select em.espmed_id ,pe.per_apellidos+' '+pe.per_nombres+': '+ es.espe_descripcion md from  Especialidad es, Medico me, Persona pe, EspecialidadMedico em where  em.espe_id=es.espe_id and em.med_id=me.med_id  and me.per_id=pe.per_id
GO
/****** Object:  StoredProcedure [dbo].[Mostrar_espe_medico]    Script Date: 28/08/2019 20:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Mostrar_espe_medico]
as
select em.espmed_id ID,es.espe_descripcion Especialidad,me.med_abreviatura+'.'+pe.per_apellidos+' '+pe.per_nombres Médico from  Especialidad es, Medico me, Persona pe, EspecialidadMedico em where  em.espe_id=es.espe_id and em.med_id=me.med_id  and me.per_id=pe.per_id
GO
/****** Object:  StoredProcedure [dbo].[Mostrar_especialidad]    Script Date: 28/08/2019 20:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Mostrar_especialidad]

as(

select  espe_id ID, espe_descripcion Especialidad,espe_estado Estado from Especialidad


)
GO
/****** Object:  StoredProcedure [dbo].[Mostrar_medico]    Script Date: 28/08/2019 20:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Mostrar_medico]
as
select med_id ID, me.med_abreviatura+'.'+pe.per_apellidos+' '+pe.per_nombres Médico from Persona pe, Medico me where pe.per_id=me.per_id

GO
/****** Object:  StoredProcedure [dbo].[Mostrar_medico_fecha_horario]    Script Date: 28/08/2019 20:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create procedure [dbo].[Mostrar_medico_fecha_horario]
  as 
 select DISTINCT mh.medhor_id ID, me.med_abreviatura+'.'+pe.per_apellidos+' '+pe.per_nombres +' // ' +mh.medhor_fecha +' // '+mh.medhor_hora_ini+'-'+mh.medhor_hora_fin Datos
 from Medico_Horario mh, Persona pe, Medico me , EspecialidadMedico em , Especialidad es 
 where mh.espmed_id=em.espmed_id and em.espe_id=es.espe_id and em.med_id=me.med_id and me.per_id=pe.per_id and mh.medhor_estado='Disponible'
GO
/****** Object:  StoredProcedure [dbo].[Mostrar_medico_horario]    Script Date: 28/08/2019 20:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Mostrar_medico_horario]

as
   select DISTINCT mh.medhor_id ID, me.med_abreviatura+'.'+pe.per_apellidos+' '+pe.per_nombres  Médico,mh.medhor_fecha Fecha,mh.medhor_hora_ini+'-'+mh.medhor_hora_fin Horario, mh.medhor_estado Estado
 from Medico_Horario mh, Persona pe, Medico me , EspecialidadMedico em , Especialidad es where mh.espmed_id=em.espmed_id and em.espe_id=es.espe_id and em.med_id=me.med_id and me.per_id=pe.per_id

GO
/****** Object:  StoredProcedure [dbo].[Mostrar_paciente]    Script Date: 28/08/2019 20:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create procedure [dbo].[Mostrar_paciente]

 as
 select  pa.paci_id ID,pa.paci_peso,pa.paci_tiposangre,pa.paci_estatura,pe.per_apellidos+' '+ pe.per_nombres Paciente 
 from Paciente pa, Persona pe where  pa.per_id=pe.per_id
GO
/****** Object:  StoredProcedure [dbo].[Mostrar_Persona]    Script Date: 28/08/2019 20:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Mostrar_Persona]
as(
select * from Persona
)
GO
/****** Object:  StoredProcedure [dbo].[Mostrar_personas]    Script Date: 28/08/2019 20:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create procedure [dbo].[Mostrar_personas]
 as
 select pe.per_id ID, pe.per_apellidos+' '+pe.per_nombres Nombres ,pe.per_cedula DNI, pe.per_email Correo, pe.per_direccion Dirección, tu.nombre_tipousu from   persona pe , Tipo_usuario tu where pe.id_tipousu=tu.id_tipousu
 

GO
/****** Object:  StoredProcedure [dbo].[sp_buscar_cita_id]    Script Date: 28/08/2019 20:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_buscar_cita_id]
(
@cita_id int)
as

select * from Citas where cita_id=@cita_id
GO
/****** Object:  StoredProcedure [dbo].[sp_buscar_cita_xpaciente]    Script Date: 28/08/2019 20:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_buscar_cita_xpaciente]
(@nombres nvarchar(100))
as
select DISTINCT  ci.cita_id ID,cita_estado Estado,pe2.per_apellidos +' '+ pe2.per_nombres Paciente,mh.medhor_fecha  Fecha, mh.medhor_hora_ini+' '+medhor_hora_fin Hora,me.med_abreviatura+'.'+pe.per_apellidos+'-'+es.espe_descripcion   Doctor  , ci.cita_motivo Motivo from Paciente pa, Persona pe ,Citas ci, Medico_Horario mh, EspecialidadMedico em,Especialidad es , Medico me,Paciente pa2, Persona pe2 
 where 

   mh.espmed_id=em.espmed_id and  em.med_id=me.med_id and me.per_id=pe.per_id and ci.paci_id=pa2.paci_id and pa2.per_id=pe2.per_id and ci.medhor_id=mh.medhor_id and ci.medhor_id=mh.medhor_id and mh.espmed_id=em.espmed_id and es.espe_id=em.espe_id
 and pe2.per_apellidos=@nombres 

GO
/****** Object:  StoredProcedure [dbo].[sp_buscar_especialidad_medico_xid]    Script Date: 28/08/2019 20:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_buscar_especialidad_medico_xid]
(@espe_id int)
as

select em.espmed_id ID,me.med_abreviatura+'.'+pe.per_apellidos+' '+pe.per_nombres+':  '+es.espe_descripcion Médico from  Especialidad es, Medico me, Persona pe, EspecialidadMedico em where  em.espe_id=es.espe_id and em.med_id=me.med_id  and me.per_id=pe.per_id
and es.espe_id =@espe_id
GO
/****** Object:  StoredProcedure [dbo].[sp_buscar_especialidad_xdescripcion]    Script Date: 28/08/2019 20:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_buscar_especialidad_xdescripcion]

(@espe_descripcion nvarchar(100))

as
select 
espe_id ID, espe_descripcion Especialidad,espe_estado Estado from Especialidad 
where espe_descripcion=@espe_descripcion
GO
/****** Object:  StoredProcedure [dbo].[sp_buscar_espemed_xmedico]    Script Date: 28/08/2019 20:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_buscar_espemed_xmedico]
(@nombre nvarchar(100))
as
select em.espmed_id ID,es.espe_descripcion Especialidad,me.med_abreviatura+'.'+pe.per_apellidos+' '+pe.per_nombres Médico from  Especialidad es, Medico me, Persona pe, EspecialidadMedico em where  em.espe_id=es.espe_id and em.med_id=me.med_id  and me.per_id=pe.per_id
and pe.per_apellidos=@nombre
GO
/****** Object:  StoredProcedure [dbo].[sp_buscar_medico_horario_xespemed]    Script Date: 28/08/2019 20:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_buscar_medico_horario_xespemed]
 (@id int )
 as 
    select DISTINCT mh.medhor_id ID, me.med_abreviatura+'.'+pe.per_apellidos+' '+pe.per_nombres  +' |'+mh.medhor_fecha +' '+mh.medhor_hora_ini+'-'+mh.medhor_hora_fin +'| ' Datos
 from Medico_Horario mh, Persona pe, Medico me , EspecialidadMedico em , Especialidad es where mh.espmed_id=em.espmed_id and em.espe_id=es.espe_id and em.med_id=me.med_id and me.per_id=pe.per_id 
 and mh.espmed_id=@id and mh.medhor_estado='Disponible'
GO
/****** Object:  StoredProcedure [dbo].[sp_buscar_medico_horario_xmedico]    Script Date: 28/08/2019 20:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create procedure [dbo].[sp_buscar_medico_horario_xmedico]
 (@nombre nvarchar(100) )
 as 
    select DISTINCT mh.medhor_id ID, me.med_abreviatura+'.'+pe.per_apellidos+' '+pe.per_nombres  Médico,mh.medhor_fecha Fecha,mh.medhor_hora_ini+'-'+mh.medhor_hora_fin Horario, mh.medhor_estado Estado
 from Medico_Horario mh, Persona pe, Medico me , EspecialidadMedico em , Especialidad es where mh.espmed_id=em.espmed_id and em.espe_id=es.espe_id and em.med_id=me.med_id and me.per_id=pe.per_id and pe.per_apellidos= @nombre


GO
/****** Object:  StoredProcedure [dbo].[sp_buscar_medico_xpersona]    Script Date: 28/08/2019 20:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_buscar_medico_xpersona]
(@nombre nvarchar(100))
as
select med_id ID, me.med_abreviatura+'.'+pe.per_apellidos+' '+pe.per_nombres Médico from Persona pe, Medico me where pe.per_id=me.per_id
and @nombre=pe.per_apellidos
GO
/****** Object:  StoredProcedure [dbo].[sp_buscar_paciente_xnombre]    Script Date: 28/08/2019 20:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create procedure [dbo].[sp_buscar_paciente_xnombre]
 (@nombre nvarchar(100))
  as
 select  pa.paci_id ID,pa.paci_peso,pa.paci_tiposangre,pa.paci_estatura,pe.per_apellidos+' '+ pe.per_nombres Paciente 
 from Paciente pa, Persona pe where  pa.per_id=pe.per_id and @nombre=pe.per_apellidos
GO
/****** Object:  StoredProcedure [dbo].[sp_buscar_persona_xapellido]    Script Date: 28/08/2019 20:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create procedure [dbo].[sp_buscar_persona_xapellido]
 (@apellido nvarchar(100))
as

 select pe.per_id ID, pe.per_apellidos+' '+pe.per_nombres Nombres ,pe.per_cedula DNI, pe.per_email Correo, pe.per_direccion Dirección, tu.nombre_tipousu from   persona pe , Tipo_usuario tu where pe.id_tipousu=tu.id_tipousu
 and @apellido =pe.per_apellidos
GO
/****** Object:  StoredProcedure [dbo].[sp_buscar_persona_xDNI]    Script Date: 28/08/2019 20:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  create procedure [dbo].[sp_buscar_persona_xDNI]
 (@per_cedula nvarchar(100))
as

 select pe.per_id ID, pe.per_apellidos+' '+pe.per_nombres Nombres ,pe.per_cedula DNI, pe.per_email Correo, pe.per_direccion Dirección, tu.nombre_tipousu from   persona pe , Tipo_usuario tu where pe.id_tipousu=tu.id_tipousu
 and @per_cedula =pe.per_cedula
GO
/****** Object:  StoredProcedure [dbo].[sp_buscar_persona_xroll]    Script Date: 28/08/2019 20:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_buscar_persona_xroll]

(@roll nvarchar (100))
as
 select pe.per_id ID, pe.per_apellidos+' '+pe.per_nombres Nombres ,pe.per_cedula DNI, pe.per_email Correo, pe.per_direccion Dirección, tu.nombre_tipousu from   persona pe , Tipo_usuario tu where pe.id_tipousu=tu.id_tipousu
 and @roll=tu.nombre_tipousu
GO
/****** Object:  StoredProcedure [dbo].[sp_eliminar_cita]    Script Date: 28/08/2019 20:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_eliminar_cita]
(@cita_id int)

as

delete Citas where  cita_id=@cita_id
GO
/****** Object:  StoredProcedure [dbo].[sp_eliminar_especialidad]    Script Date: 28/08/2019 20:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_eliminar_especialidad]
(@espe_id int)

as

delete from Especialidad
where espe_id=@espe_id
GO
/****** Object:  StoredProcedure [dbo].[sp_eliminar_espemed]    Script Date: 28/08/2019 20:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[sp_eliminar_espemed]
(@espmed_id int )
as

delete EspecialidadMedico where @espmed_id=espmed_id
GO
/****** Object:  StoredProcedure [dbo].[sp_eliminar_medico]    Script Date: 28/08/2019 20:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_eliminar_medico]
(@med_id int)
as
delete from Medico 
where med_id=@med_id
GO
/****** Object:  StoredProcedure [dbo].[sp_eliminar_medico_horario]    Script Date: 28/08/2019 20:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  create procedure [dbo].[sp_eliminar_medico_horario]
 (@medhor_id int )
 as 
 delete from Medico_Horario where @medhor_id=medhor_id
GO
/****** Object:  StoredProcedure [dbo].[sp_eliminar_paciente]    Script Date: 28/08/2019 20:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create procedure [dbo].[sp_eliminar_paciente]
 (@paci_id   int)
 as
 delete from paciente
 where @paci_id=paci_id
GO
/****** Object:  StoredProcedure [dbo].[sp_eliminar_persona]    Script Date: 28/08/2019 20:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create procedure [dbo].[sp_eliminar_persona]
 (@per_id int)

 as

 delete  from Persona 
 where @per_id=per_id

GO
/****** Object:  StoredProcedure [dbo].[sp_obtener_pacientes]    Script Date: 28/08/2019 20:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_obtener_pacientes](  @Nombres nvarchar(50))
as
 select  pe.per_apellidos+' '+ pe.per_nombres Nombres  from Paciente pa, Persona pe where  pa.per_id= pe.per_id

return @nombres
GO
/****** Object:  StoredProcedure [dbo].[sp_registrar_persona_login]    Script Date: 28/08/2019 20:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_registrar_persona_login]
(
@per_nombres nvarchar(100),
@per_apellidos nvarchar(100),
@per_email nvarchar(100),
@per_usuario nvarchar(100),
@per_contrasenia nvarchar(100),
@per_estado  nvarchar(100),
@per_fechaCreacion nvarchar(100),
@id_tipousu int)
as
INSERT INTO Persona(per_nombres,per_apellidos,per_email,per_usuario,per_contrasenia,per_estado,per_fechaCreacion,id_tipousu)
 values(@per_nombres,@per_apellidos,@per_email,@per_usuario,@per_contrasenia,@per_estado,@per_fechaCreacion,@id_tipousu)
GO
/****** Object:  StoredProcedure [dbo].[sp_reservar_medico_horario]    Script Date: 28/08/2019 20:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create procedure [dbo].[sp_reservar_medico_horario]
 (@medhor_id int)
 as
 update Medico_Horario set medhor_estado='Reservado'
 where medhor_id=@medhor_id
GO
