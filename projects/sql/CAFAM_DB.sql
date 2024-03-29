SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblFormSubsidioVivienda]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblFormSubsidioVivienda](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Inscripcion] [varchar](100) NULL,
	[ModalidadDeVivienda] [varchar](100) NULL,
	[Apellidos] [varchar](100) NULL,
	[Nombres] [varchar](100) NULL,
	[FechaDeNacimiento] [varchar](100) NULL,
	[TipoDeDocumento] [varchar](100) NULL,
	[NumeroDeDocumento] [varchar](100) NULL,
	[Parentesco] [varchar](100) NULL,
	[CondicionEspecial] [varchar](100) NULL,
	[TipoDePostulante] [varchar](100) NULL,
	[EstadoCivil] [varchar](100) NULL,
	[Sexo] [varchar](100) NULL,
	[Ocupacion] [varchar](100) NULL,
	[IngresosMensualesPesos] [varchar](100) NULL,
	[MiembrosDelHogar] [varchar](100) NULL,
	[DireccionDomicilioActual] [varchar](100) NULL,
	[LocalidadDomicilio] [varchar](100) NULL,
	[Departamento] [varchar](100) NULL,
	[Municipio] [varchar](100) NULL,
	[CorreoElectronico] [varchar](100) NULL,
	[Telefono1] [varchar](100) NULL,
	[Telefono2] [varchar](100) NULL,
	[NombreRazonSocialDeLaEmpresa] [varchar](100) NULL,
	[DireccionDeLaEmpresa] [varchar](100) NULL,
	[DepartamentoB] [varchar](100) NULL,
	[MunicipioB] [varchar](100) NULL,
	[Telefono3] [varchar](100) NULL,
	[Telefono4] [varchar](100) NULL,
	[DireccionSitioDeTrabajo] [varchar](100) NULL,
	[MunicipioDepartamento] [varchar](100) NULL,
	[Telefono5] [varchar](100) NULL,
	[Desde] [varchar](100) NULL,
	[Hasta] [varchar](100) NULL,
	[DepartamentoDeAplicacion] [varchar](100) NULL,
	[MunicipioDeAplicacion] [varchar](100) NULL,
	[LocalidadDeAplicacion] [varchar](100) NULL,
	[ValorSFVSMLMV] [varchar](100) NULL,
	[ValorDeSubsidioSolicitado] [varchar](100) NULL,
	[ParaConstruccionEnSitioPropioYMejoramiento] [varchar](100) NULL,
	[ValorPresupuesto] [varchar](100) NULL,
	[ValorLoteAvaluoCatastral] [varchar](100) NULL,
	[ValorTotal] [varchar](100) NULL,
	[ValorTotalDeLaViviendaParaAdquisicionDeViviendaNueva] [varchar](100) NULL,
	[FechaDeRegistroDeEscritura] [varchar](100) NULL,
	[NumeroDeMatriculaInmobiliaria] [varchar](100) NULL,
	[LoteUrbanizado] [varchar](100) NULL,
	[CuentaDeAhorroProgramado] [varchar](100) NULL,
	[AportesPeriodicosDeAhorro] [varchar](100) NULL,
	[Cesantias] [varchar](100) NULL,
	[AporteLoteOTerreno] [varchar](100) NULL,
	[AporteAvanceDeObra] [varchar](100) NULL,
	[AporteLoteSubsidioPorMunicipalODepartamental] [varchar](100) NULL,
	[AporteLoteOPVONGNoReembolsable] [varchar](100) NULL,
	[TotalAhorroPrevio] [varchar](100) NULL,
	[AhorroPrevioEnCualquierModalidad] [varchar](100) NULL,
	[CreditoAprobado] [varchar](100) NULL,
	[AportesSolidarios] [varchar](100) NULL,
	[AportesEnteTerritorial] [varchar](100) NULL,
	[DonacionOtrasEntidades] [varchar](100) NULL,
	[EvaluacionCrediticia] [varchar](100) NULL,
	[OtrosRecursos] [varchar](100) NULL,
	[TotalRecursosComplementarios] [varchar](100) NULL,
	[AhorroPrevio] [varchar](100) NULL,
	[RecursosComplementarios] [varchar](100) NULL,
	[SubsidioSolicitado] [varchar](100) NULL,
	[Total] [varchar](100) NULL,
	[EntidadCaptadora] [varchar](100) NULL,
	[NumerodeCuenta] [varchar](100) NULL,
	[FechaApertura] [varchar](100) NULL,
	[FechadeInmovilizacion] [varchar](100) NULL,
	[PromedioAhorroultimosseismeses] [varchar](100) NULL,
	[EntidadDepositaria] [varchar](100) NULL,
	[FechaCertificacion] [varchar](100) NULL,
	[FechaInmovilizacion] [varchar](100) NULL,
	[PromedioAhorroultimosseismeses2] [varchar](100) NULL,
	[FormularioNumero1] [varchar](100) NULL,
	[DatosImpresión] [varchar](100) NULL,
	[direccionA] [varchar](500) NULL,
	[direccionB] [varchar](500) NULL,
	[direccionC] [varchar](500) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblFormSolicitudCredicafam_Insert]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblFormSolicitudCredicafam_Insert](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DateIns] [nchar](10) NULL,
	[FirstName] [varchar](100) NULL,
	[SecondName] [varchar](100) NULL,
	[FirstSurname] [varchar](100) NULL,
	[SecondSurname] [varchar](100) NULL,
	[AddressOriginal] [varchar](500) NULL,
	[CityOriginal] [varchar](100) NULL,
	[City] [varchar](100) NULL,
	[LocalityOther] [varchar](100) NULL,
	[OtherAddress] [varchar](500) NULL,
	[SolAddress] [varchar](500) NULL,
	[FormName] [varchar](100) NULL,
	[AssignedTo] [varchar](100) NULL,
	[DeadLine] [varchar](100) NULL,
	[RenterName] [varchar](100) NULL,
	[CompanyAddress] [varchar](500) NULL,
	[Profession] [varchar](100) NULL,
	[DocNumber] [varchar](100) NULL,
	[BirthDate] [varchar](100) NULL,
	[Degree] [varchar](100) NULL,
	[DocType] [varchar](100) NULL,
	[DocumentPlace] [varchar](100) NULL,
	[MaritalStatus] [varchar](100) NULL,
	[PeopleInCharge] [varchar](100) NULL,
	[CompanyName] [varchar](100) NULL,
	[NIT] [varchar](100) NULL,
	[Dependency] [varchar](100) NULL,
	[Position] [varchar](100) NULL,
	[LabTime] [varchar](100) NULL,
	[LabContractType] [varchar](100) NULL,
	[LabExpiryDate] [varchar](100) NULL,
	[LabPhones] [varchar](100) NULL,
	[LabExtensions] [varchar](100) NULL,
	[RealState] [varchar](100) NULL,
	[ComercialValue] [varchar](100) NULL,
	[Mortgage] [varchar](100) NULL,
	[InFavor] [varchar](100) NULL,
	[Balance] [varchar](100) NULL,
	[MonthlyShare] [varchar](100) NULL,
	[PropertyNumber] [varchar](100) NULL,
	[DeedNumber] [varchar](100) NULL,
	[Brand] [varchar](100) NULL,
	[VehicleRegisterNumber] [varchar](100) NULL,
	[VehicleModel] [varchar](100) NULL,
	[VehicleValue] [varchar](100) NULL,
	[VehicleReserved] [varchar](100) NULL,
	[VehicleMortgageBeneficiary] [varchar](100) NULL,
	[RefFullName] [varchar](100) NULL,
	[RefPhones] [varchar](100) NULL,
	[RefCompany] [varchar](100) NULL,
	[RefOfficePhones] [varchar](100) NULL,
	[PRefFullName] [varchar](100) NULL,
	[PRefPhones] [varchar](100) NULL,
	[PRefCompany] [varchar](100) NULL,
	[PRefOfficePhones] [varchar](100) NULL,
	[LabAddress] [varchar](500) NULL,
	[ActAddress] [varchar](500) NULL,
	[RefAddress] [varchar](500) NULL,
	[RepAddress] [varchar](500) NULL,
	[AmountAsked] [varchar](100) NULL,
	[WorkCity] [varchar](100) NULL,
	[ActiveNeighborhood] [varchar](100) NULL,
	[Date] [varchar](100) NULL,
	[CreditNum] [varchar](100) NULL,
	[Destiny] [varchar](100) NULL,
	[ActiveCity] [varchar](100) NULL,
	[DeedDate] [varchar](100) NULL,
	[spouse] [varchar](100) NULL,
	[SpouseFirstSurName] [varchar](100) NULL,
	[SpouseSecondSurName] [varchar](100) NULL,
	[SpouseFirstName] [varchar](100) NULL,
	[SpouseSecondName] [varchar](100) NULL,
	[SpouseProfession] [varchar](100) NULL,
	[SpouseDocNum] [varchar](100) NULL,
	[SpouseDE] [varchar](100) NULL,
	[SpouseDocType] [varchar](100) NULL,
	[SpouseCompanyName] [varchar](100) NULL,
	[SpouseAntiquity] [varchar](100) NULL,
	[SpouseCharge] [varchar](100) NULL,
	[SpouseSalary] [varchar](100) NULL,
	[SpousePhone] [varchar](100) NULL,
	[HouseType] [varchar](100) NULL,
	[HouseTime] [varchar](100) NULL,
	[Neighborhood] [varchar](100) NULL,
	[Phones] [varchar](100) NULL,
	[PhoneNumber] [varchar](100) NULL,
	[RentValue] [varchar](100) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblFormRetiroTrabajadoresDetalle]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblFormRetiroTrabajadoresDetalle](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDSusp] [int] NOT NULL,
	[IdType] [varchar](100) NOT NULL,
	[IdNumber] [varchar](100) NOT NULL,
	[FirstName] [varchar](100) NOT NULL,
	[SecondName] [varchar](100) NULL,
	[FirstSurname] [varchar](100) NOT NULL,
	[SecondSurname] [varchar](100) NULL,
	[WithdrawDate] [varchar](100) NOT NULL,
	[WithdrawReason] [varchar](100) NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblFormRetiroTrabajadores]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblFormRetiroTrabajadores](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CurrentUser] [varchar](100) NOT NULL,
	[DateIns] [datetime] NOT NULL,
	[NIT] [varchar](50) NOT NULL,
	[SUBNIT] [varchar](50) NOT NULL,
	[RazonSocial] [varchar](100) NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblFormInscripcionRevistaVivemas]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblFormInscripcionRevistaVivemas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](100) NOT NULL,
	[SecondName] [varchar](100) NULL,
	[FirstSurname] [varchar](100) NOT NULL,
	[SecondSurname] [varchar](100) NULL,
	[Address] [varchar](500) NOT NULL,
	[City] [varchar](100) NOT NULL,
	[AddressOther] [varchar](500) NULL,
	[CityOther] [varchar](100) NULL,
	[LocalityOther] [varchar](100) NULL,
 CONSTRAINT [PK_tblFormInscripcionRevistaVivemas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblFormInscripcionCafamiguitos_InscriptionNumber]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblFormInscripcionCafamiguitos_InscriptionNumber](
	[InscriptionNumber] [int] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCreditoPersonal]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCreditoPersonal](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[credValorSolicitado] [varchar](100) NOT NULL,
	[credDestino] [varchar](100) NOT NULL,
	[credPlazo] [varchar](100) NOT NULL,
	[solPrimerApellido] [varchar](100) NOT NULL,
	[solSegundoApellido] [varchar](100) NOT NULL,
	[solNombres] [varchar](100) NOT NULL,
	[solTipoDocumento] [varchar](100) NOT NULL,
	[solNroDocumento] [varchar](100) NOT NULL,
	[solDE] [varchar](100) NOT NULL,
	[solEstadoCivil] [varchar](100) NOT NULL,
	[solFechaNacimiento] [varchar](100) NOT NULL,
	[solEscolaridad] [varchar](100) NOT NULL,
	[solNroPersonasCargo] [varchar](100) NOT NULL,
	[solProfesion] [varchar](100) NOT NULL,
	[solDirResidencia] [varchar](500) NOT NULL,
	[solTiempoResidencia] [varchar](100) NOT NULL,
	[solTelefono] [varchar](100) NOT NULL,
	[solBarrio] [varchar](100) NOT NULL,
	[solCiudad] [varchar](100) NOT NULL,
	[solValArriendo] [varchar](100) NULL,
	[solNombreArrendador] [varchar](100) NULL,
	[solTelefonos] [varchar](100) NULL,
	[solLabNombreEmpresa] [varchar](100) NOT NULL,
	[solLabNit] [varchar](100) NOT NULL,
	[solLabDireccion] [varchar](500) NOT NULL,
	[solLabDependencia] [varchar](100) NOT NULL,
	[soLabCargo] [varchar](100) NOT NULL,
	[soLabTiempoEmpresa] [varchar](100) NOT NULL,
	[solLabTipoContrato] [varchar](100) NOT NULL,
	[soLabVencimiento] [varchar](100) NOT NULL,
	[soLabCiudad] [varchar](100) NOT NULL,
	[soLabTelefonos] [varchar](100) NOT NULL,
	[soLabExtensiones] [varchar](100) NOT NULL,
	[solActBienesInmuebles] [varchar](100) NULL,
	[solActValorComercial] [varchar](100) NULL,
	[solActTieneHipoteca] [varchar](100) NOT NULL,
	[solActAFavorDe] [varchar](100) NULL,
	[solActSaldo] [varchar](100) NULL,
	[solActCuotaMensual] [varchar](100) NULL,
	[solActDireccion] [varchar](500) NULL,
	[solActBarrio] [varchar](100) NULL,
	[solActCity] [varchar](100) NULL,
	[solActNroMatricula] [varchar](100) NULL,
	[solActNroEscritura] [varchar](100) NULL,
	[solActDeedDate] [varchar](100) NULL,
	[solVehMarca] [varchar](100) NULL,
	[solVehPlaca] [varchar](100) NULL,
	[solVehModelo] [varchar](100) NULL,
	[solVehValorComercial] [varchar](100) NULL,
	[solVehReserva] [varchar](100) NOT NULL,
	[solVehAFavorDe] [varchar](100) NULL,
	[solIngreSueldoBasico] [varchar](100) NOT NULL,
	[solIngreSubsidio] [varchar](100) NULL,
	[solIngreHonorarios] [varchar](100) NULL,
	[solIngreOtros] [varchar](100) NULL,
	[solGastosArriendo] [varchar](100) NULL,
	[solGastosObligaciones] [varchar](100) NULL,
	[solGastosTarjetas] [varchar](100) NULL,
	[solGastosDescuentos] [varchar](100) NULL,
	[solGastosFamilia] [varchar](100) NULL,
	[solConyPrimApellido] [varchar](100) NOT NULL,
	[solConySegApellido] [varchar](100) NOT NULL,
	[solConyNombreCompleto] [varchar](100) NOT NULL,
	[solConyTipoDocum] [varchar](100) NOT NULL,
	[solConyNroDocumento] [varchar](100) NOT NULL,
	[solConyDE] [varchar](100) NOT NULL,
	[solConyProfesion] [varchar](100) NULL,
	[solConyNomEmpresa] [varchar](100) NULL,
	[solConyAntiguedad] [varchar](100) NULL,
	[solConyCargo] [varchar](100) NULL,
	[solConySalario] [varchar](100) NULL,
	[solConyTelefonos] [varchar](100) NULL,
	[solConyDirEmpresa] [varchar](500) NULL,
	[solRefamNombreCompleto] [varchar](100) NOT NULL,
	[solRefamTelResidencia] [varchar](100) NOT NULL,
	[solRefamEmpresa] [varchar](100) NULL,
	[solRefamTelOficina] [varchar](100) NULL,
	[solRefamDirResidencia] [varchar](500) NOT NULL,
	[solRefperNombreCompleto] [varchar](100) NOT NULL,
	[solRefperTelefResidencia] [varchar](100) NULL,
	[solRefperNombreEmpresa] [varchar](100) NULL,
	[solRefperTelefOficina] [varchar](100) NULL,
	[solRefperDirResidencia] [varchar](500) NOT NULL,
	[codeuPrimerApellido] [varchar](100) NOT NULL,
	[codeuSegundoApellido] [varchar](100) NOT NULL,
	[codeuNombreCompleto] [varchar](100) NOT NULL,
	[codeuTipoDocumento] [varchar](100) NOT NULL,
	[codeuNroDocumento] [varchar](100) NOT NULL,
	[codeuDE] [varchar](100) NOT NULL,
	[codeuEstadoCivil] [varchar](100) NOT NULL,
	[codeuFechaNac] [varchar](100) NOT NULL,
	[codeuEscolaridad] [varchar](100) NOT NULL,
	[codeuNroPersonas] [varchar](100) NOT NULL,
	[codeuProfesion] [varchar](100) NOT NULL,
	[codeuTiempoResidencia] [varchar](100) NOT NULL,
	[codeuTelefono] [varchar](100) NOT NULL,
	[codeuTipoResidencia] [varchar](100) NOT NULL,
	[codeuDirAcualRes] [varchar](500) NOT NULL,
	[codeuBarrio] [varchar](100) NOT NULL,
	[codeuCiudad] [varchar](100) NOT NULL,
	[codeuValArriendo] [varchar](100) NULL,
	[codeuNombreArrendador] [varchar](100) NULL,
	[codeuTelefonos] [varchar](100) NULL,
	[codeuLabNomEmpresa] [varchar](100) NOT NULL,
	[codeuLabNit] [varchar](100) NOT NULL,
	[codeuLabDependencia] [varchar](100) NOT NULL,
	[codeuLabCargo] [varchar](100) NOT NULL,
	[codeuLabTiempoEmpresa] [varchar](100) NOT NULL,
	[codeuLabTiempoContrato] [varchar](100) NOT NULL,
	[codeuLabCiudad] [varchar](100) NOT NULL,
	[codeuLabTelefonos] [varchar](100) NOT NULL,
	[codeuLabExtensiones] [varchar](100) NOT NULL,
	[codeuLabDireccion] [varchar](500) NOT NULL,
	[codeuActBienesInmuebles] [varchar](100) NULL,
	[codeuActValorComercial] [varchar](100) NULL,
	[codeuActTieneHipoteca] [varchar](500) NOT NULL,
	[codeuAct] [varchar](100) NULL,
	[codeuActSaldo] [varchar](100) NULL,
	[codeuActCuotaMensual] [varchar](100) NULL,
	[codeuActBarrio] [varchar](100) NULL,
	[codeuActCity] [varchar](100) NULL,
	[codeuActMatInmobiliaria] [varchar](100) NULL,
	[codeuActNroEscritura] [varchar](100) NULL,
	[codeuActDireccion] [varchar](500) NULL,
	[codeuActDeedDate] [varchar](100) NULL,
	[codeuVehMarca] [varchar](100) NULL,
	[codeuVehPlaca] [varchar](100) NULL,
	[codeuVehModelo] [varchar](100) NULL,
	[codeuVehValorComercial] [varchar](100) NULL,
	[codeuVehDominio] [varchar](100) NOT NULL,
	[codeuVehAFavorDe] [varchar](100) NULL,
	[codeuIngreSueldo] [varchar](100) NOT NULL,
	[codeuIngreSubsidio] [varchar](100) NULL,
	[codeuIngreHonorarios] [varchar](100) NULL,
	[codeuIngreOtros] [varchar](100) NULL,
	[codeuGastosArriendo] [varchar](100) NULL,
	[codeuGastosObligaciones] [varchar](100) NULL,
	[codeuGastosTarjeta] [varchar](100) NULL,
	[codeuGastosDescuentos] [varchar](100) NULL,
	[codeuGastosFamiliar] [varchar](100) NULL,
	[codeuConyApellido1] [varchar](100) NOT NULL,
	[codeuConyApellido2] [varchar](100) NOT NULL,
	[codeuConyNombres] [varchar](100) NOT NULL,
	[codeuConyTipoDoc] [varchar](100) NOT NULL,
	[codeuConyNroDocum] [varchar](100) NOT NULL,
	[codeuConyDE] [varchar](100) NOT NULL,
	[codeuConyProfesion] [varchar](100) NULL,
	[codeuConyEmpresa] [varchar](100) NULL,
	[codeuConyAntiguedad] [varchar](100) NULL,
	[codeuConyCargo] [varchar](100) NULL,
	[codeuConySalario] [varchar](100) NULL,
	[codeuConyTelefonos] [varchar](100) NULL,
	[codeuConyDirEmpresa] [varchar](500) NULL,
	[codeuConyRefamNombreCompleto] [varchar](100) NOT NULL,
	[codeuConyRefamTelefonos] [varchar](100) NOT NULL,
	[codeuConyRefamEmpresa] [varchar](100) NULL,
	[codeuConyRefamTelOficina] [varchar](100) NULL,
	[codeuConyRefamDirRes] [varchar](500) NOT NULL,
	[codeuConyRefPersNombreCompleto] [varchar](100) NOT NULL,
	[codeuConyRefPersTelResidencia] [varchar](100) NULL,
	[codeuConyRefPersEmpresa] [varchar](100) NULL,
	[codeuConyRefPersTelOficina] [varchar](100) NULL,
	[codeuConyRefPersDirRes] [varchar](500) NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CaptchaControl]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CaptchaControl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FormName] [varchar](128) NOT NULL,
	[GUID] [uniqueidentifier] NOT NULL,
	[DateInsert] [datetime] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblNovedadesTrabajadores]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblNovedadesTrabajadores](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DATEINS] [datetime] NOT NULL,
	[COMPNIT] [varchar](100) NOT NULL,
	[COMPSUBNIT] [varchar](100) NOT NULL,
	[COMPNAME] [varchar](100) NOT NULL,
	[EMPIDTYPE] [varchar](100) NOT NULL,
	[EMPIDNUM] [varchar](100) NOT NULL,
	[EMPBRANCH] [varchar](100) NOT NULL,
	[EMPFIRSTSURNAME] [varchar](100) NOT NULL,
	[EMPSECONDSURNAME] [varchar](100) NULL,
	[EMPFIRSTNAME] [varchar](100) NOT NULL,
	[EMPSECONDNAME] [varchar](100) NULL,
	[EMPMARITALSTATE] [varchar](100) NOT NULL,
	[EMPBIRTHDATE] [varchar](100) NOT NULL,
	[EMPGENDER] [varchar](100) NOT NULL,
	[EMPJOININGDATE] [varchar](100) NOT NULL,
	[EMPPOSITION] [varchar](100) NOT NULL,
	[EMPMONTHHOUR] [varchar](100) NOT NULL,
	[EMPBASICSALARY] [varchar](100) NOT NULL,
	[EMPSALECOMMISSION] [varchar](100) NOT NULL,
	[EMPCITY] [varchar](100) NOT NULL,
	[EMPADDRESS] [varchar](500) NOT NULL,
	[EMPEMAIL] [varchar](100) NOT NULL,
	[EMPPHONENUMB1] [varchar](100) NOT NULL,
	[EMPPHONENUMB2] [varchar](100) NOT NULL,
	[EMPOWNER] [varchar](100) NOT NULL,
	[EMPAGRICULTUREW] [varchar](100) NOT NULL,
	[EMPCOMPNIT] [varchar](100) NULL,
	[EMPCOMPSUBNIT] [varchar](100) NULL,
	[EMPCOMPNAME] [varchar](100) NULL,
	[EMPCOMPMONTHHOUR] [varchar](100) NULL,
	[EMPCOMPBASICSALARY] [varchar](100) NULL,
	[EMPCOMPSALECOMMISSION] [varchar](100) NULL,
	[PARTNERIDTYPE] [varchar](100) NULL,
	[PARTNERIDNUM] [varchar](100) NULL,
	[PARTNERLIVETOGETHER] [varchar](100) NULL,
	[PARTNERRELATIONSHIP] [varchar](100) NULL,
	[PARTNERFIRSTSURNAME] [varchar](100) NULL,
	[PARTNERSECONDSURNAME] [varchar](100) NULL,
	[PARTNERFIRSTNAME] [varchar](100) NULL,
	[PARTNERSECONDNAME] [varchar](100) NULL,
	[PARTNERBIRTHDATE] [varchar](100) NULL,
	[PARTNERADDRESS] [varchar](500) NULL,
	[PARTNERCITY] [varchar](100) NULL,
	[PARTNERPHONENUMB] [varchar](100) NULL,
	[PARTNEROCCUPATION] [varchar](100) NULL,
	[PARTNEROCCUPSUBSIDY] [varchar](100) NULL,
	[PARTNEROCCUPNIT] [varchar](100) NULL,
	[PARTNEROCCUPCOMPANYNAME] [varchar](100) NULL,
	[PARTNEROCCUPBASICSALARY] [varchar](100) NULL,
	[PARENTIDTYPE] [varchar](100) NULL,
	[PARENTIDNUM] [varchar](100) NULL,
	[PARENTLIVETOGETHER] [varchar](100) NULL,
	[PARENTFIRSTSURNAME] [varchar](100) NULL,
	[PARENTSECONDSURNAME] [varchar](100) NULL,
	[PARENTFIRSTNAME] [varchar](100) NULL,
	[PARENTSECONDNAME] [varchar](100) NULL,
	[PARENTBIRTHDATE] [varchar](100) NULL,
	[PARENTOCCUPATION] [varchar](100) NULL,
	[PARENTADDRESS] [varchar](500) NULL,
	[PARENTCITY] [varchar](100) NULL,
	[PARENTPHONENUMB] [varchar](100) NULL,
	[PARENTEMPLOYEESUBSIDY] [varchar](100) NULL,
	[PARENTEMPLOYEESONNAME] [varchar](100) NULL,
	[PARENTEMPLOYEENIT] [varchar](100) NULL,
	[PARENTEMPLOYEECOMPNAME] [varchar](100) NULL,
	[PARENTEMPLOYEEBASICSALARY] [varchar](100) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblNovedadesDetalle]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblNovedadesDetalle](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Novedad] [int] NOT NULL,
	[DEPENDIDTYPE] [varchar](100) NULL,
	[DEPENDIDNUM] [varchar](100) NULL,
	[DEPENDPARENTIDTYPE] [varchar](100) NULL,
	[DEPENDPARENTIDNUM] [varchar](100) NULL,
	[DEPENDPARENTGENDER] [varchar](100) NULL,
	[DEPENDBIRTHDATE] [datetime] NULL,
	[DEPENDFIRSTSURENAME] [varchar](100) NULL,
	[DEPENDSECONDSURENAME] [varchar](100) NULL,
	[DEPENDFIRSTNAME] [varchar](100) NULL,
	[DEPENDSECONDNAME] [varchar](100) NULL,
	[DEPENDKINDSHIP] [varchar](100) NULL,
	[DEPENDHANDICAPP] [varchar](100) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblFormSuspensionTrabajadoresDetalle]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblFormSuspensionTrabajadoresDetalle](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDSusp] [int] NOT NULL,
	[IdType] [varchar](100) NOT NULL,
	[IdNumber] [varchar](100) NOT NULL,
	[FirstName] [varchar](100) NOT NULL,
	[SecondName] [varchar](100) NULL,
	[FirstSurname] [varchar](100) NOT NULL,
	[SecondSurname] [varchar](100) NULL,
	[SuspentionStart] [varchar](100) NOT NULL,
	[SuspentionStop] [varchar](100) NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblFormSuspensionTrabajadores]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblFormSuspensionTrabajadores](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CurrentUser] [varchar](100) NOT NULL,
	[DateIns] [datetime] NOT NULL,
	[NIT] [varchar](50) NOT NULL,
	[SUBNIT] [varchar](50) NOT NULL,
	[RazonSocial] [varchar](100) NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblFormSubsidioViviendaDetalle]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblFormSubsidioViviendaDetalle](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IDSubsidio] [int] NULL,
	[MHApellidos] [varchar](100) NULL,
	[MHNombres] [varchar](100) NULL,
	[MHFechaDeNacimiento] [varchar](100) NULL,
	[MHTipoDeDocumento] [varchar](100) NULL,
	[MHNumeroDeDocumento] [varchar](100) NULL,
	[MHParentesco] [varchar](100) NULL,
	[MHCondicionEspecial] [varchar](100) NULL,
	[MHTipoDePostulante] [varchar](100) NULL,
	[MHEstadoCivil] [varchar](100) NULL,
	[MHSexo] [varchar](100) NULL,
	[MHOcupacion] [varchar](100) NULL,
	[MHIngresosMensualesPesos] [varchar](100) NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspFormSubsidioVivienda_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:                Martin De Sa Granja
-- Create date: 03/27/09
-- Description:        Insert Worker Suspention
-- =============================================
CREATE PROCEDURE [dbo].[uspFormSubsidioVivienda_Insert]
(
	@Inscripcion varchar (100),
	@ModalidadDeVivienda varchar (100),
	@Apellidos varchar (100),
	@Nombres varchar (100),
	@FechaDeNacimiento varchar (100),
	@TipoDeDocumento varchar (100),
	@NumeroDeDocumento varchar (100),
	@Parentesco varchar (100),
	@CondicionEspecial varchar (100),
	@TipoDePostulante varchar (100),
	@EstadoCivil varchar (100),
	@Sexo varchar (100),
	@Ocupacion varchar (100),
	@IngresosMensualesPesos varchar (100),
	@MiembrosDelHogar varchar (100),
	@DireccionDomicilioActual varchar (100),
	@LocalidadDomicilio varchar (100),
	@Departamento varchar (100),
	@Municipio varchar (100),
	@CorreoElectronico varchar (100),
	@Telefono1 varchar (100),
	@Telefono2 varchar (100),
	@NombreRazonSocialDeLaEmpresa varchar (100),
	@DireccionDeLaEmpresa varchar (100),
	@DepartamentoB varchar (100),
	@MunicipioB varchar (100),
	@Telefono3 varchar (100),
	@Telefono4 varchar (100),
	@DireccionSitioDeTrabajo varchar (100),
	@MunicipioDepartamento varchar (100),
	@Telefono5 varchar (100),
	@Desde varchar (100),
	@Hasta varchar (100),
	@DepartamentoDeAplicacion varchar (100),
	@MunicipioDeAplicacion varchar (100),
	@LocalidadDeAplicacion varchar (100),
	@ValorSFVSMLMV varchar (100),
	@ValorDeSubsidioSolicitado varchar (100),
	@ParaConstruccionEnSitioPropioYMejoramiento varchar (100),
	@ValorPresupuesto varchar (100),
	@ValorLoteAvaluoCatastral varchar (100),
	@ValorTotal varchar (100),
	@ValorTotalDeLaViviendaParaAdquisicionDeViviendaNueva varchar (100),
	@FechaDeRegistroDeEscritura varchar (100),
	@NumeroDeMatriculaInmobiliaria varchar (100),
	@LoteUrbanizado varchar (100),
	@CuentaDeAhorroProgramado varchar (100),
	@AportesPeriodicosDeAhorro varchar (100),
	@Cesantias varchar (100),
	@AporteLoteOTerreno varchar (100),
	@AporteAvanceDeObra varchar (100),
	@AporteLoteSubsidioPorMunicipalODepartamental varchar (100),
	@AporteLoteOPVONGNoReembolsable varchar (100),
	@TotalAhorroPrevio varchar (100),
	@AhorroPrevioEnCualquierModalidad varchar (100),
	@CreditoAprobado varchar (100),
	@AportesSolidarios varchar (100),
	@AportesEnteTerritorial varchar (100),
	@DonacionOtrasEntidades varchar (100),
	@EvaluacionCrediticia varchar (100),
	@OtrosRecursos varchar (100),
	@TotalRecursosComplementarios varchar (100),
	@AhorroPrevio varchar (100),
	@RecursosComplementarios varchar (100),
	@SubsidioSolicitado varchar (100),
	@Total varchar (100),
	@EntidadCaptadora varchar (100),
	@NumerodeCuenta varchar (100),
	@FechaApertura varchar (100),
	@FechadeInmovilizacion varchar (100),
	@PromedioAhorroultimosseismeses varchar (100),
	@EntidadDepositaria varchar (100),
	@FechaCertificacion varchar (100),
	@FechaInmovilizacion varchar (100),
	@PromedioAhorroultimosseismeses2 varchar (100),
	@FormularioNumero1 varchar (100),
	@DatosImpresión varchar (100),
	@direccion1 varchar (50),
	@direccion2 varchar (50),
	@direccion3 varchar (50),
	@direccion4 varchar (50),
	@direccion5 varchar (50),
	@direccion6 varchar (50),
	@direccion7 varchar (50),
	@direccion8 varchar (50),
	@direccion9 varchar (50),
	@direccion10 varchar (50),
	@direccion11 varchar (50),        
	@direccion1B varchar (50),
	@direccion2B varchar (50),
	@direccion3B varchar (50),
	@direccion4B varchar (50),
	@direccion5B varchar (50),
	@direccion6B varchar (50),
	@direccion7B varchar (50),
	@direccion8B varchar (50),
	@direccion9B varchar (50),
	@direccion10B varchar (50),
	@direccion11B varchar (50),
	@direccion1C varchar (50),
	@direccion2C varchar (50),
	@direccion3C varchar (50),
	@direccion4C varchar (50),
	@direccion5C varchar (50),
	@direccion6C varchar (50),
	@direccion7C varchar (50),
	@direccion8C varchar (50),
	@direccion9C varchar (50),
	@direccion10C varchar (50),
	@direccion11C varchar (50))
AS
BEGIN
	DECLARE @direccionA VARCHAR(500)
	DECLARE @direccionB VARCHAR(500)
	DECLARE @direccionC VARCHAR(500)
	DECLARE @Id int

	SET @direccionA = 
		isnull(@direccion1, '''') +
		isnull(@direccion2, '''') +
		isnull(@direccion3, '''') +
		isnull(@direccion4, '''') +
		isnull(@direccion5, '''') +
		isnull(@direccion6, '''') +
		isnull(@direccion7, '''') +
		isnull(@direccion8, '''') +
		isnull(@direccion9, '''')

	SET @direccionB = 
		isnull(@direccion1B, '''') +
		isnull(@direccion2B, '''') +
		isnull(@direccion3B, '''') +
		isnull(@direccion4B, '''') +
		isnull(@direccion5B, '''') +
		isnull(@direccion6B, '''') +
		isnull(@direccion7B, '''') +
		isnull(@direccion8B, '''') +
		isnull(@direccion9B, '''')

	SET @direccionC = 
		isnull(@direccion1C, '''') +
		isnull(@direccion2C, '''') +
		isnull(@direccion3C, '''') +
		isnull(@direccion4C, '''') +
		isnull(@direccion5C, '''') +
		isnull(@direccion6C, '''') +
		isnull(@direccion7C, '''') +
		isnull(@direccion8C, '''') +
		isnull(@direccion9C, '''')

	INSERT INTO [CAFAM_DB].[dbo].[tblFormSubsidioVivienda]
           ([Inscripcion]
           ,[ModalidadDeVivienda]
           ,[Apellidos]
           ,[Nombres]
           ,[FechaDeNacimiento]
           ,[TipoDeDocumento]
           ,[NumeroDeDocumento]
           ,[Parentesco]
           ,[CondicionEspecial]
           ,[TipoDePostulante]
           ,[EstadoCivil]
           ,[Sexo]
           ,[Ocupacion]
           ,[IngresosMensualesPesos]
           ,[MiembrosDelHogar]
           ,[DireccionDomicilioActual]
           ,[LocalidadDomicilio]
           ,[Departamento]
           ,[Municipio]
           ,[CorreoElectronico]
           ,[Telefono1]
           ,[Telefono2]
           ,[NombreRazonSocialDeLaEmpresa]
           ,[DireccionDeLaEmpresa]
           ,[DepartamentoB]
           ,[MunicipioB]
           ,[Telefono3]
           ,[Telefono4]
           ,[DireccionSitioDeTrabajo]
           ,[MunicipioDepartamento]
           ,[Telefono5]
           ,[Desde]
           ,[Hasta]
           ,[DepartamentoDeAplicacion]
           ,[MunicipioDeAplicacion]
           ,[LocalidadDeAplicacion]
           ,[ValorSFVSMLMV]
           ,[ValorDeSubsidioSolicitado]
           ,[ParaConstruccionEnSitioPropioYMejoramiento]
           ,[ValorPresupuesto]
           ,[ValorLoteAvaluoCatastral]
           ,[ValorTotal]
           ,[ValorTotalDeLaViviendaParaAdquisicionDeViviendaNueva]
           ,[FechaDeRegistroDeEscritura]
           ,[NumeroDeMatriculaInmobiliaria]
           ,[LoteUrbanizado]
           ,[CuentaDeAhorroProgramado]
           ,[AportesPeriodicosDeAhorro]
           ,[Cesantias]
           ,[AporteLoteOTerreno]
           ,[AporteAvanceDeObra]
           ,[AporteLoteSubsidioPorMunicipalODepartamental]
           ,[AporteLoteOPVONGNoReembolsable]
           ,[TotalAhorroPrevio]
           ,[AhorroPrevioEnCualquierModalidad]
           ,[CreditoAprobado]
           ,[AportesSolidarios]
           ,[AportesEnteTerritorial]
           ,[DonacionOtrasEntidades]
           ,[EvaluacionCrediticia]
           ,[OtrosRecursos]
           ,[TotalRecursosComplementarios]
           ,[AhorroPrevio]
           ,[RecursosComplementarios]
           ,[SubsidioSolicitado]
           ,[Total]
           ,[EntidadCaptadora]
           ,[NumerodeCuenta]
           ,[FechaApertura]
           ,[FechadeInmovilizacion]
           ,[PromedioAhorroultimosseismeses]
           ,[EntidadDepositaria]
           ,[FechaCertificacion]
           ,[FechaInmovilizacion]
           ,[PromedioAhorroultimosseismeses2]
           ,[FormularioNumero1]
           ,[DatosImpresión]
           ,[direccionA]
           ,[direccionB]
           ,[direccionC])
     VALUES (
	@Inscripcion,
	@ModalidadDeVivienda,
	@Apellidos,
	@Nombres,
	@FechaDeNacimiento,
	@TipoDeDocumento,
	@NumeroDeDocumento,
	@Parentesco,
	@CondicionEspecial,
	@TipoDePostulante,
	@EstadoCivil,
	@Sexo,
	@Ocupacion,
	@IngresosMensualesPesos,
	@MiembrosDelHogar,
	@DireccionDomicilioActual,
	@LocalidadDomicilio,
	@Departamento,
	@Municipio,
	@CorreoElectronico,
	@Telefono1,
	@Telefono2,
	@NombreRazonSocialDeLaEmpresa,
	@DireccionDeLaEmpresa,
	@DepartamentoB,
	@MunicipioB,
	@Telefono3,
	@Telefono4,
	@DireccionSitioDeTrabajo,
	@MunicipioDepartamento,
	@Telefono5,
	@Desde,
	@Hasta,
	@DepartamentoDeAplicacion,
	@MunicipioDeAplicacion,
	@LocalidadDeAplicacion,
	@ValorSFVSMLMV,
	@ValorDeSubsidioSolicitado,
	@ParaConstruccionEnSitioPropioYMejoramiento,
	@ValorPresupuesto,
	@ValorLoteAvaluoCatastral,
	@ValorTotal,
	@ValorTotalDeLaViviendaParaAdquisicionDeViviendaNueva,
	@FechaDeRegistroDeEscritura,
	@NumeroDeMatriculaInmobiliaria,
	@LoteUrbanizado,
	@CuentaDeAhorroProgramado,
	@AportesPeriodicosDeAhorro,
	@Cesantias,
	@AporteLoteOTerreno,
	@AporteAvanceDeObra,
	@AporteLoteSubsidioPorMunicipalODepartamental,
	@AporteLoteOPVONGNoReembolsable,
	@TotalAhorroPrevio,
	@AhorroPrevioEnCualquierModalidad,
	@CreditoAprobado,
	@AportesSolidarios,
	@AportesEnteTerritorial,
	@DonacionOtrasEntidades,
	@EvaluacionCrediticia,
	@OtrosRecursos,
	@TotalRecursosComplementarios,
	@AhorroPrevio,
	@RecursosComplementarios,
	@SubsidioSolicitado,
	@Total,
	@EntidadCaptadora,
	@NumerodeCuenta,
	@FechaApertura,
	@FechadeInmovilizacion,
	@PromedioAhorroultimosseismeses,
	@EntidadDepositaria,
	@FechaCertificacion,
	@FechaInmovilizacion,
	@PromedioAhorroultimosseismeses2,
	@FormularioNumero1,
	@DatosImpresión,
	@direccionA, @direccionB, @direccionC)

        SET @Id = @@IDENTITY

        RETURN @Id
END
/*----------------------------------------------------------------------------*/
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspFormSolicitudCredicafam_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[uspFormSolicitudCredicafam_Insert]
		(
		 @ActAddressCombo1 VARCHAR(50) = NULL
		,@ActAddressCombo2 VARCHAR(25)= NULL
		,@ActAddressCombo3 VARCHAR(50)= NULL
		,@ActAddressCombo4 VARCHAR(25)= NULL
		,@ActAddressCombo5 VARCHAR(50)= NULL
		,@ActAddressCombo6 VARCHAR(50)= NULL
		,@ActAddressText1 VARCHAR(50)= NULL
		,@ActAddressText2 VARCHAR(50)= NULL
		,@ActAddressText3 VARCHAR(50)= NULL
		,@ActAddressText4 VARCHAR(50)= NULL
		,@ActAddressText5 VARCHAR(50)= NULL
		,@ActiveCity VARCHAR(100)= NULL
		,@ActiveNeighborhood VARCHAR(100)= NULL
		,@AddressOriginal VARCHAR(100)= NULL
		,@AmountAsked VARCHAR(100)= NULL
		,@AssignedTo VARCHAR(100)= NULL
		,@Balance VARCHAR(100)= NULL
		,@BirthDate VARCHAR(100)= NULL
		,@Brand VARCHAR(100)= NULL
		,@City VARCHAR(100)= NULL
		,@CityOriginal VARCHAR(100)= NULL
		,@ComercialValue VARCHAR(100)= NULL
		,@CompanyAddressCombo1 VARCHAR(50)= NULL
		,@CompanyAddressCombo2 VARCHAR(25)= NULL
		,@CompanyAddressCombo3 VARCHAR(50)= NULL
		,@CompanyAddressCombo4 VARCHAR(25)= NULL
		,@CompanyAddressCombo5 VARCHAR(50)= NULL
		,@CompanyAddressCombo6 VARCHAR(50)= NULL
		,@CompanyAddressText1 VARCHAR(50)= NULL
		,@CompanyAddressText2 VARCHAR(50)= NULL
		,@CompanyAddressText3 VARCHAR(50)= NULL
		,@CompanyAddressText4 VARCHAR(50)= NULL
		,@CompanyAddressText5 VARCHAR(50)= NULL
		,@CompanyName VARCHAR(100)= NULL
		,@CreditNum VARCHAR(100)= NULL
		,@Date VARCHAR(100)= NULL
		,@DeadLine VARCHAR(100)= NULL
		,@DeedDate VARCHAR(100)= NULL
		,@DeedNumber VARCHAR(100)= NULL
		,@Degree VARCHAR(100)= NULL
		,@Dependency VARCHAR(100)= NULL
		,@Destiny VARCHAR(100)= NULL
		,@DocNumber VARCHAR(100)= NULL
		,@DocType VARCHAR(100)= NULL
		,@DocumentPlace VARCHAR(100)= NULL
		,@FirstName VARCHAR(100)= NULL
		,@FirstSurname VARCHAR(100)= NULL
		,@FormName VARCHAR(100)= NULL
		,@HouseTime VARCHAR(100)= NULL
		,@HouseType VARCHAR(100)= NULL
		,@InFavor VARCHAR(100)= NULL
		,@LabAddressCombo1 VARCHAR(50)= NULL
		,@LabAddressCombo2 VARCHAR(25)= NULL
		,@LabAddressCombo3 VARCHAR(50)= NULL
		,@LabAddressCombo4 VARCHAR(25)= NULL
		,@LabAddressCombo5 VARCHAR(50)= NULL
		,@LabAddressCombo6 VARCHAR(50)= NULL
		,@LabAddressText1 VARCHAR(50)= NULL
		,@LabAddressText2 VARCHAR(50)= NULL
		,@LabAddressText3 VARCHAR(50)= NULL
		,@LabAddressText4 VARCHAR(50)= NULL
		,@LabAddressText5 VARCHAR(50)= NULL
		,@LabContractType VARCHAR(100)= NULL
		,@LabExpiryDate VARCHAR(100)= NULL
		,@LabExtensions VARCHAR(100)= NULL
		,@LabPhones VARCHAR(100)= NULL
		,@LabTime VARCHAR(100)= NULL
		,@LocalityOther VARCHAR(100)= NULL
		,@MaritalStatus VARCHAR(100)= NULL
		,@MonthlyShare VARCHAR(100)= NULL
		,@Mortgage VARCHAR(100)= NULL
		,@Neighborhood VARCHAR(100)= NULL
		,@NIT VARCHAR(100)= NULL
		,@OtherAddress VARCHAR(100)= NULL
		,@PeopleInCharge VARCHAR(100)= NULL
		,@PhoneNumber VARCHAR(100)= NULL
		,@Phones VARCHAR(100)= NULL
		,@Position VARCHAR(100)= NULL
		,@PRefCompany VARCHAR(100)= NULL
		,@PRefFullName VARCHAR(100)= NULL
		,@PRefOfficePhones VARCHAR(100)= NULL
		,@PRefPhones VARCHAR(100)= NULL
		,@Profession VARCHAR(100)= NULL
		,@PropertyNumber VARCHAR(100)= NULL
		,@RealState VARCHAR(100)= NULL
		,@RefAddressCombo1 VARCHAR(50)= NULL
		,@RefAddressCombo2 VARCHAR(25)= NULL
		,@RefAddressCombo3 VARCHAR(50)= NULL
		,@RefAddressCombo4 VARCHAR(25)= NULL
		,@RefAddressCombo5 VARCHAR(50)= NULL
		,@RefAddressCombo6 VARCHAR(50)= NULL
		,@RefAddressText1 VARCHAR(50)= NULL
		,@RefAddressText2 VARCHAR(50)= NULL
		,@RefAddressText3 VARCHAR(50)= NULL
		,@RefAddressText4 VARCHAR(50)= NULL
		,@RefAddressText5 VARCHAR(50)= NULL
		,@RefCompany VARCHAR(100)= NULL
		,@RefFullName VARCHAR(100)= NULL
		,@RefOfficePhones VARCHAR(100)= NULL
		,@RefPhones VARCHAR(100)= NULL
		,@RenterName VARCHAR(100)= NULL
		,@RentValue VARCHAR(100)= NULL
		,@RepAddressCombo1 VARCHAR(50)= NULL
		,@RepAddressCombo2 VARCHAR(25)= NULL
		,@RepAddressCombo3 VARCHAR(50)= NULL
		,@RepAddressCombo4 VARCHAR(25)= NULL
		,@RepAddressCombo5 VARCHAR(50)= NULL
		,@RepAddressCombo6 VARCHAR(50)= NULL
		,@RepAddressText1 VARCHAR(50)= NULL
		,@RepAddressText2 VARCHAR(50)= NULL
		,@RepAddressText3 VARCHAR(50)= NULL
		,@RepAddressText4 VARCHAR(50)= NULL
		,@RepAddressText5 VARCHAR(50)= NULL
		,@RequiredError VARCHAR(100)= NULL
		,@SecondName VARCHAR(100)= NULL
		,@SecondSurname VARCHAR(100)= NULL
		,@SolAddressCombo1 VARCHAR(50)= NULL
		,@SolAddressCombo2 VARCHAR(25)= NULL
		,@SolAddressCombo3 VARCHAR(50)= NULL
		,@SolAddressCombo4 VARCHAR(25)= NULL
		,@SolAddressCombo5 VARCHAR(50)= NULL
		,@SolAddressCombo6 VARCHAR(50)= NULL
		,@SolAddressText1 VARCHAR(50)= NULL
		,@SolAddressText2 VARCHAR(50)= NULL
		,@SolAddressText3 VARCHAR(50)= NULL
		,@SolAddressText4 VARCHAR(50)= NULL
		,@SolAddressText5 VARCHAR(50)= NULL
		,@spouse VARCHAR(100)= NULL
		,@SpouseAntiquity VARCHAR(100)= NULL
		,@SpouseCharge VARCHAR(100)= NULL
		,@SpouseCompanyName VARCHAR(100)= NULL
		,@SpouseDE VARCHAR(100)= NULL
		,@SpouseDocNum VARCHAR(100)= NULL
		,@SpouseDocType VARCHAR(100)= NULL
		,@SpouseFirstName VARCHAR(100)= NULL
		,@SpouseFirstSurName VARCHAR(100)= NULL
		,@SpousePhone VARCHAR(100)= NULL
		,@SpouseProfession VARCHAR(100)= NULL
		,@SpouseSalary VARCHAR(100)= NULL
		,@SpouseSecondName VARCHAR(100)= NULL
		,@SpouseSecondSurName VARCHAR(100)= NULL
		,@VehicleModel VARCHAR(100)= NULL
		,@VehicleMortgageBeneficiary VARCHAR(100)= NULL
		,@VehicleRegisterNumber VARCHAR(100)= NULL
		,@VehicleReserved VARCHAR(100)= NULL
		,@VehicleValue VARCHAR(100)= NULL
		,@WorkCity VARCHAR(100)= NULL
		)
AS

BEGIN
        DECLARE @ActAddress AS VARCHAR(500)
			 IF(@ActAddressCombo1 IS NOT NULL)
			 BEGIN
			  SET @ActAddress = @ActAddressCombo1 + '' ''
			 END
			 
			 IF(@ActAddressText1 IS NOT NULL)
			 BEGIN
			  SET @ActAddress = ISNULL(@ActAddress, '''') + @CompanyAddressText1 + '' ''
			 END

			 IF(@ActAddressCombo2 IS NOT NULL)
			 BEGIN
			  SET @ActAddress = ISNULL(@ActAddress, '''') + @ActAddressCombo2 + '' ''
			 END
			 
			 IF(@ActAddressCombo3 IS NOT NULL)
			 BEGIN
			  SET @ActAddress = ISNULL(@ActAddress, '''') + @ActAddressCombo3 + '' ''
			 END

			 IF(@ActAddressText2 IS NOT NULL)
			 BEGIN
			  SET @ActAddress = ISNULL(@ActAddress, '''') + @ActAddressText2 + '' ''
			 END

			 IF(@ActAddressCombo4 IS NOT NULL)
			 BEGIN
			  SET @ActAddress = ISNULL(@ActAddress, '''') + @ActAddressCombo4 + '' ''
			 END

			 IF(@ActAddressText3 IS NOT NULL)
			 BEGIN
			  SET @ActAddress = ISNULL(@ActAddress, '''') + @ActAddressText3 + '' ''
			 END

			 IF(@ActAddressCombo5 IS NOT NULL)
			 BEGIN
			  SET @ActAddress = ISNULL(@ActAddress, '''') + @ActAddressCombo5 + '' ''
			 END

			 IF(@ActAddressText4 IS NOT NULL)
			 BEGIN
			  SET @ActAddress = ISNULL(@ActAddress, '''') + @ActAddressText4 + '' ''
			 END

			 IF(@ActAddressCombo6 IS NOT NULL)
			 BEGIN
			  SET @ActAddress = ISNULL(@ActAddress, '''') + @ActAddressCombo6 + '' ''
			 END

			 IF(@ActAddressText5 IS NOT NULL)
			 BEGIN
			  SET @ActAddress = ISNULL(@ActAddress, '''') + @ActAddressText5
			 END
END
BEGIN
        DECLARE @CompanyAddress AS VARCHAR(500)
			 IF(@CompanyAddressCombo1 IS NOT NULL)
			 BEGIN
			  SET @CompanyAddress = @CompanyAddressCombo1 + '' ''
			 END
			 
			 IF(@CompanyAddressText1 IS NOT NULL)
			 BEGIN
			  SET @CompanyAddress = ISNULL(@CompanyAddress, '''') + @CompanyAddressText1 + '' ''
			 END

			 IF(@CompanyAddressCombo2 IS NOT NULL)
			 BEGIN
			  SET @CompanyAddress = ISNULL(@CompanyAddress, '''') + @CompanyAddressCombo2 + '' ''
			 END
			 
			 IF(@CompanyAddressCombo3 IS NOT NULL)
			 BEGIN
			  SET @CompanyAddress = ISNULL(@CompanyAddress, '''') + @CompanyAddressCombo3 + '' ''
			 END

			 IF(@CompanyAddressText2 IS NOT NULL)
			 BEGIN
			  SET @CompanyAddress = ISNULL(@CompanyAddress, '''') + @CompanyAddressText2 + '' ''
			 END

			 IF(@CompanyAddressCombo4 IS NOT NULL)
			 BEGIN
			  SET @CompanyAddress = ISNULL(@CompanyAddress, '''') + @CompanyAddressCombo4 + '' ''
			 END

			 IF(@CompanyAddressText3 IS NOT NULL)
			 BEGIN
			  SET @CompanyAddress = ISNULL(@CompanyAddress, '''') + @CompanyAddressText3 + '' ''
			 END

			 IF(@CompanyAddressCombo5 IS NOT NULL)
			 BEGIN
			  SET @CompanyAddress = ISNULL(@CompanyAddress, '''') + @CompanyAddressCombo5 + '' ''
			 END

			 IF(@CompanyAddressText4 IS NOT NULL)
			 BEGIN
			  SET @CompanyAddress = ISNULL(@CompanyAddress, '''') + @CompanyAddressText4 + '' ''
			 END

			 IF(@CompanyAddressCombo6 IS NOT NULL)
			 BEGIN
			  SET @CompanyAddress = ISNULL(@CompanyAddress, '''') + @CompanyAddressCombo6 + '' ''
			 END

			 IF(@CompanyAddressText5 IS NOT NULL)
			 BEGIN
			  SET @CompanyAddress = ISNULL(@CompanyAddress, '''') + @CompanyAddressText5
			 END
END
BEGIN
        DECLARE @LabAddress AS VARCHAR(500)
			 IF(@LabAddressCombo1 IS NOT NULL)
			 BEGIN
			  SET @LabAddress = @LabAddressCombo1 + '' ''
			 END
			 
			 IF(@LabAddressText1 IS NOT NULL)
			 BEGIN
			  SET @LabAddress = ISNULL(@LabAddress, '''') + @LabAddressText1 + '' ''
			 END

			 IF(@LabAddressCombo2 IS NOT NULL)
			 BEGIN
			  SET @LabAddress = ISNULL(@LabAddress, '''') + @LabAddressCombo2 + '' ''
			 END
			 
			 IF(@LabAddressCombo3 IS NOT NULL)
			 BEGIN
			  SET @LabAddress = ISNULL(@LabAddress, '''') + @LabAddressCombo3 + '' ''
			 END

			 IF(@LabAddressText2 IS NOT NULL)
			 BEGIN
			  SET @LabAddress = ISNULL(@LabAddress, '''') + @LabAddressText2 + '' ''
			 END

			 IF(@LabAddressCombo4 IS NOT NULL)
			 BEGIN
			  SET @LabAddress = ISNULL(@LabAddress, '''') + @LabAddressCombo4 + '' ''
			 END

			 IF(@LabAddressText3 IS NOT NULL)
			 BEGIN
			  SET @LabAddress = ISNULL(@LabAddress, '''') + @LabAddressText3 + '' ''
			 END

			 IF(@LabAddressCombo5 IS NOT NULL)
			 BEGIN
			  SET @LabAddress = ISNULL(@LabAddress, '''') + @LabAddressCombo5 + '' ''
			 END

			 IF(@LabAddressText4 IS NOT NULL)
			 BEGIN
			  SET @LabAddress = ISNULL(@LabAddress, '''') + @LabAddressText4 + '' ''
			 END

			 IF(@LabAddressCombo6 IS NOT NULL)
			 BEGIN
			  SET @LabAddress = ISNULL(@LabAddress, '''') + @LabAddressCombo6 + '' ''
			 END

			 IF(@LabAddressText5 IS NOT NULL)
			 BEGIN
			  SET @LabAddress = ISNULL(@LabAddress, '''') + @LabAddressText5
			 END
END
BEGIN
        DECLARE @RefAddress AS VARCHAR(500)
			 IF(@RefAddressCombo1 IS NOT NULL)
			 BEGIN
			  SET @RefAddress = @RefAddressCombo1 + '' ''
			 END
			 
			 IF(@RefAddressText1 IS NOT NULL)
			 BEGIN
			  SET @RefAddress = ISNULL(@RefAddress, '''') + @RefAddressText1 + '' ''
			 END

			 IF(@RefAddressCombo2 IS NOT NULL)
			 BEGIN
			  SET @RefAddress = ISNULL(@RefAddress, '''') + @RefAddressCombo2 + '' ''
			 END
			 
			 IF(@RefAddressCombo3 IS NOT NULL)
			 BEGIN
			  SET @RefAddress = ISNULL(@RefAddress, '''') + @RefAddressCombo3 + '' ''
			 END

			 IF(@RefAddressText2 IS NOT NULL)
			 BEGIN
			  SET @RefAddress = ISNULL(@RefAddress, '''') + @RefAddressText2 + '' ''
			 END

			 IF(@RefAddressCombo4 IS NOT NULL)
			 BEGIN
			  SET @RefAddress = ISNULL(@RefAddress, '''') + @RefAddressCombo4 + '' ''
			 END

			 IF(@RefAddressText3 IS NOT NULL)
			 BEGIN
			  SET @RefAddress = ISNULL(@RefAddress, '''') + @RefAddressText3 + '' ''
			 END

			 IF(@RefAddressCombo5 IS NOT NULL)
			 BEGIN
			  SET @RefAddress = ISNULL(@RefAddress, '''') + @RefAddressCombo5 + '' ''
			 END

			 IF(@RefAddressText4 IS NOT NULL)
			 BEGIN
			  SET @RefAddress = ISNULL(@RefAddress, '''') + @RefAddressText4 + '' ''
			 END

			 IF(@RefAddressCombo6 IS NOT NULL)
			 BEGIN
			  SET @RefAddress = ISNULL(@RefAddress, '''') + @RefAddressCombo6 + '' ''
			 END

			 IF(@RefAddressText5 IS NOT NULL)
			 BEGIN
			  SET @RefAddress = ISNULL(@RefAddress, '''') + @RefAddressText5
			 END
END
BEGIN
        DECLARE @RepAddress AS VARCHAR(500)
			 IF(@RepAddressCombo1 IS NOT NULL)
			 BEGIN
			  SET @RepAddress = @RepAddressCombo1 + '' ''
			 END
			 
			 IF(@RepAddressText1 IS NOT NULL)
			 BEGIN
			  SET @RepAddress = ISNULL(@RepAddress, '''') + @RepAddressText1 + '' ''
			 END

			 IF(@RepAddressCombo2 IS NOT NULL)
			 BEGIN
			  SET @RepAddress = ISNULL(@RepAddress, '''') + @RepAddressCombo2 + '' ''
			 END
			 
			 IF(@RepAddressCombo3 IS NOT NULL)
			 BEGIN
			  SET @RepAddress = ISNULL(@RepAddress, '''') + @RepAddressCombo3 + '' ''
			 END

			 IF(@RepAddressText2 IS NOT NULL)
			 BEGIN
			  SET @RepAddress = ISNULL(@RepAddress, '''') + @RepAddressText2 + '' ''
			 END

			 IF(@RepAddressCombo4 IS NOT NULL)
			 BEGIN
			  SET @RepAddress = ISNULL(@RepAddress, '''') + @RepAddressCombo4 + '' ''
			 END

			 IF(@RepAddressText3 IS NOT NULL)
			 BEGIN
			  SET @RepAddress = ISNULL(@RepAddress, '''') + @RepAddressText3 + '' ''
			 END

			 IF(@RepAddressCombo5 IS NOT NULL)
			 BEGIN
			  SET @RepAddress = ISNULL(@RepAddress, '''') + @RepAddressCombo5 + '' ''
			 END

			 IF(@RepAddressText4 IS NOT NULL)
			 BEGIN
			  SET @RepAddress = ISNULL(@RepAddress, '''') + @RepAddressText4 + '' ''
			 END

			 IF(@RepAddressCombo6 IS NOT NULL)
			 BEGIN
			  SET @RepAddress = ISNULL(@RepAddress, '''') + @RepAddressCombo6 + '' ''
			 END

			 IF(@RepAddressText5 IS NOT NULL)
			 BEGIN
			  SET @RepAddress = ISNULL(@RepAddress, '''') + @RepAddressText5
			 END
END
BEGIN
        DECLARE @SolAddress AS VARCHAR(500)
			 IF(@SolAddressCombo1 IS NOT NULL)
			 BEGIN
			  SET @SolAddress = @SolAddressCombo1 + '' ''
			 END
			 
			 IF(@SolAddressText1 IS NOT NULL)
			 BEGIN
			  SET @SolAddress = ISNULL(@SolAddress, '''') + @SolAddressText1 + '' ''
			 END

			 IF(@SolAddressCombo2 IS NOT NULL)
			 BEGIN
			  SET @SolAddress = ISNULL(@SolAddress, '''') + @SolAddressCombo2 + '' ''
			 END
			 
			 IF(@SolAddressCombo3 IS NOT NULL)
			 BEGIN
			  SET @SolAddress = ISNULL(@SolAddress, '''') + @SolAddressCombo3 + '' ''
			 END

			 IF(@SolAddressText2 IS NOT NULL)
			 BEGIN
			  SET @SolAddress = ISNULL(@SolAddress, '''') + @SolAddressText2 + '' ''
			 END

			 IF(@SolAddressCombo4 IS NOT NULL)
			 BEGIN
			  SET @SolAddress = ISNULL(@SolAddress, '''') + @SolAddressCombo4 + '' ''
			 END

			 IF(@SolAddressText3 IS NOT NULL)
			 BEGIN
			  SET @SolAddress = ISNULL(@SolAddress, '''') + @SolAddressText3 + '' ''
			 END

			 IF(@SolAddressCombo5 IS NOT NULL)
			 BEGIN
			  SET @SolAddress = ISNULL(@SolAddress, '''') + @SolAddressCombo5 + '' ''
			 END

			 IF(@SolAddressText4 IS NOT NULL)
			 BEGIN
			  SET @SolAddress = ISNULL(@SolAddress, '''') + @SolAddressText4 + '' ''
			 END

			 IF(@SolAddressCombo6 IS NOT NULL)
			 BEGIN
			  SET @SolAddress = ISNULL(@SolAddress, '''') + @SolAddressCombo6 + '' ''
			 END

			 IF(@SolAddressText5 IS NOT NULL)
			 BEGIN
			  SET @SolAddress = ISNULL(@SolAddress, '''') + @SolAddressText5
			 END

	INSERT INTO dbo.tblFormSolicitudCredicafam_Insert
           (
			DateIns
		   ,FirstName
           ,SecondName
           ,FirstSurname
           ,SecondSurname
           ,AddressOriginal
           ,CityOriginal
           ,City
           ,LocalityOther
           ,OtherAddress
           ,SolAddress
           ,FormName
           ,AssignedTo
           ,DeadLine
           ,RenterName
           ,CompanyAddress
           ,Profession
           ,DocNumber
           ,BirthDate
           ,Degree
           ,DocType
           ,DocumentPlace
           ,MaritalStatus
           ,PeopleInCharge
           ,CompanyName
           ,NIT
           ,Dependency
           ,Position
           ,LabTime
           ,LabContractType
           ,LabExpiryDate
           ,LabPhones
           ,LabExtensions
           ,RealState
           ,ComercialValue
           ,Mortgage
           ,InFavor
           ,Balance
           ,MonthlyShare
           ,PropertyNumber
           ,DeedNumber
           ,Brand
           ,VehicleRegisterNumber
           ,VehicleModel
           ,VehicleValue
           ,VehicleReserved
           ,VehicleMortgageBeneficiary
           ,RefFullName
           ,RefPhones
           ,RefCompany
           ,RefOfficePhones
           ,PRefFullName
           ,PRefPhones
           ,PRefCompany
           ,PRefOfficePhones
           ,LabAddress
           ,ActAddress
           ,RefAddress
           ,RepAddress
           ,AmountAsked
           ,WorkCity
           ,ActiveNeighborhood
           ,Date
           ,CreditNum
           ,Destiny
           ,ActiveCity
           ,DeedDate
           ,spouse
           ,SpouseFirstSurName
           ,SpouseSecondSurName
           ,SpouseFirstName
           ,SpouseSecondName
           ,SpouseProfession
           ,SpouseDocNum
           ,SpouseDE
           ,SpouseDocType
           ,SpouseCompanyName
           ,SpouseAntiquity
           ,SpouseCharge
           ,SpouseSalary
           ,SpousePhone
           ,HouseType
           ,HouseTime
           ,Neighborhood
           ,Phones
           ,PhoneNumber
           ,RentValue
			)
     VALUES
           ( Getdate()
		   ,@FirstName
           ,@SecondName
           ,@FirstSurname
           ,@SecondSurname
           ,@AddressOriginal
           ,@CityOriginal
           ,@City
           ,@LocalityOther
           ,@OtherAddress
           ,@SolAddress
           ,@FormName
           ,@AssignedTo
           ,@DeadLine
           ,@RenterName
           ,@CompanyAddress
           ,@Profession
           ,@DocNumber
           ,@BirthDate
           ,@Degree
           ,@DocType
           ,@DocumentPlace
           ,@MaritalStatus
           ,@PeopleInCharge
           ,@CompanyName
           ,@NIT
           ,@Dependency
           ,@Position
           ,@LabTime
           ,@LabContractType
           ,@LabExpiryDate
           ,@LabPhones
           ,@LabExtensions
           ,@RealState
           ,@ComercialValue
           ,@Mortgage
           ,@InFavor
           ,@Balance
           ,@MonthlyShare
           ,@PropertyNumber
           ,@DeedNumber
           ,@Brand
           ,@VehicleRegisterNumber
           ,@VehicleModel
           ,@VehicleValue
           ,@VehicleReserved
           ,@VehicleMortgageBeneficiary
           ,@RefFullName
           ,@RefPhones
           ,@RefCompany
           ,@RefOfficePhones
           ,@PRefFullName
           ,@PRefPhones
           ,@PRefCompany
           ,@PRefOfficePhones
           ,@LabAddress
           ,@ActAddress
           ,@RefAddress
           ,@RepAddress
           ,@AmountAsked
           ,@WorkCity
           ,@ActiveNeighborhood
           ,@Date
           ,@CreditNum
           ,@Destiny
           ,@ActiveCity
           ,@DeedDate
           ,@spouse
           ,@SpouseFirstSurName
           ,@SpouseSecondSurName
           ,@SpouseFirstName
           ,@SpouseSecondName
           ,@SpouseProfession
           ,@SpouseDocNum
           ,@SpouseDE
           ,@SpouseDocType
           ,@SpouseCompanyName
           ,@SpouseAntiquity
           ,@SpouseCharge
           ,@SpouseSalary
           ,@SpousePhone
           ,@HouseType
           ,@HouseTime
           ,@Neighborhood
           ,@Phones
           ,@PhoneNumber
           ,@RentValue
			)
END
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspFormRetiroTrabajadoresDetalle_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[uspFormRetiroTrabajadoresDetalle_Insert]
(
        @IDSusp int,
        @IdType VARCHAR(100),
        @IdNumber VARCHAR(100),
        @FirstName VARCHAR(100),
        @SecondName VARCHAR(100) = null,
        @FirstSurname VARCHAR(100),
        @SecondSurname VARCHAR(100) = null,
        @WithdrawDate VARCHAR(100),
        @WithdrawReason VARCHAR(100)
)
AS
BEGIN
        DECLARE @AddressOther AS VARCHAR(500)
        INSERT INTO dbo.tblFormRetiroTrabajadoresDetalle
                ( IDSusp
                , IdType
                , IdNumber
                , FirstName
                , SecondName
                , FirstSurname
                , SecondSurname
                , WithdrawDate
                , WithdrawReason)
        VALUES
                ( @IDSusp
                , @IdType
                , @IdNumber
                , @FirstName
                , @SecondName
                , @FirstSurname
                , @SecondSurname
                , @WithdrawDate
                , @WithdrawReason)
END
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspFormRetiroTrabajadores_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:                Martin De Sa Granja
-- Create date: 03/27/09
-- Description:        Insert Worker Suspention
-- =============================================
CREATE PROCEDURE [dbo].[uspFormRetiroTrabajadores_Insert]
(
        @CurrentUser VARCHAR(100),
        @NIT VARCHAR(50),
        @SUBNIT VARCHAR(50),
        @RAZONSOCIAL VARCHAR(100),
        @Id int OUTPUT
)
AS
BEGIN
        DECLARE @AddressOther AS VARCHAR(500)
        INSERT INTO dbo.tblFormRetiroTrabajadores
                ( CurrentUser, DateIns, NIT, SUBNIT, RAZONSOCIAL)
        VALUES
                ( @CurrentUser, GetDate(), @NIT, @SUBNIT, @RAZONSOCIAL)

        SET @Id = @@IDENTITY

        RETURN
END
/*----------------------------------------------------------------------------*/
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspFormInscripcionRevistaVivemas_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Pablo Daniel Marc
-- Create date: 02/27/09
-- Description:	Insert Subscription to magazine Vivemas
-- =============================================
CREATE PROCEDURE [dbo].[uspFormInscripcionRevistaVivemas_Insert]
(
	@FirstName VARCHAR(100)
	, @SecondName VARCHAR(100) = NULL
	, @FirstSurname VARCHAR(100)
	, @SecondSurname VARCHAR(100) = NULL
	, @Address VARCHAR(500)
	, @City VARCHAR(100)
	, @AddressOtherCombo1 VARCHAR(50) = NULL
	, @AddressOtherText1 VARCHAR(50) = NULL
	, @AddressOtherCombo2 VARCHAR(25) = NULL
	, @AddressOtherCombo3 VARCHAR(50) = NULL
	, @AddressOtherText2 VARCHAR(50) = NULL
	, @AddressOtherCombo4 VARCHAR(25) = NULL
	, @AddressOtherText3 VARCHAR(50) = NULL
	, @AddressOtherCombo5 VARCHAR(50) = NULL
	, @AddressOtherText4 VARCHAR(50) = NULL
	, @AddressOtherCombo6 VARCHAR(50) = NULL
	, @AddressOtherText5 VARCHAR(50) = NULL
	, @CityOther VARCHAR(100) = NULL
	, @LocalityOther VARCHAR(100) = NULL
)
AS
BEGIN
	DECLARE @AddressOther AS VARCHAR(500)

	IF(@AddressOtherCombo1 IS NOT NULL)
	BEGIN
		SET @AddressOther = @AddressOtherCombo1 + '' ''
	END
	
	IF(@AddressOtherText1 IS NOT NULL)
	BEGIN
		SET @AddressOther = ISNULL(@AddressOther, '''') + @AddressOtherText1 + '' ''
	END

	IF(@AddressOtherCombo2 IS NOT NULL)
	BEGIN
		SET @AddressOther = ISNULL(@AddressOther, '''') + @AddressOtherCombo2 + '' ''
	END
	
	IF(@AddressOtherCombo3 IS NOT NULL)
	BEGIN
		SET @AddressOther = ISNULL(@AddressOther, '''') + @AddressOtherCombo3 + '' ''
	END

	IF(@AddressOtherText2 IS NOT NULL)
	BEGIN
		SET @AddressOther = ISNULL(@AddressOther, '''') + @AddressOtherText2 + '' ''
	END

	IF(@AddressOtherCombo4 IS NOT NULL)
	BEGIN
		SET @AddressOther = ISNULL(@AddressOther, '''') + @AddressOtherCombo4 + '' ''
	END

	IF(@AddressOtherText3 IS NOT NULL)
	BEGIN
		SET @AddressOther = ISNULL(@AddressOther, '''') + @AddressOtherText3 + '' ''
	END

	IF(@AddressOtherCombo5 IS NOT NULL)
	BEGIN
		SET @AddressOther = ISNULL(@AddressOther, '''') + @AddressOtherCombo5 + '' ''
	END

	IF(@AddressOtherText4 IS NOT NULL)
	BEGIN
		SET @AddressOther = ISNULL(@AddressOther, '''') + @AddressOtherText4 + '' ''
	END

	IF(@AddressOtherCombo6 IS NOT NULL)
	BEGIN
		SET @AddressOther = ISNULL(@AddressOther, '''') + @AddressOtherCombo6 + '' ''
	END

	IF(@AddressOtherText5 IS NOT NULL)
	BEGIN
		SET @AddressOther = ISNULL(@AddressOther, '''') + @AddressOtherText5
	END

	INSERT INTO dbo.tblFormInscripcionRevistaVivemas
		(FirstName
		, SecondName
		, FirstSurname
		, SecondSurname
		, Address
		, City
		, AddressOther
		, CityOther
		, LocalityOther)
	VALUES
		(@FirstName
		, @SecondName
		, @FirstSurname
		, @SecondSurname
		, @Address
		, @City
		, @AddressOther
		, @CityOther
		, @LocalityOther)
END
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspFormInscripcionCafamiguitos_GetNewInscriptionNumber]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Pablo Daniel Marc
-- Create date: 03/05/2009
-- Description:	Gets a new Inscription Number 
-- for a new Cafamiguitos  member
-- =============================================
CREATE PROCEDURE [dbo].[uspFormInscripcionCafamiguitos_GetNewInscriptionNumber]
AS
BEGIN
	DECLARE @NewInscriptionNumber AS INT
	
	BEGIN TRANSACTION

	IF NOT EXISTS(SELECT InscriptionNumber FROM dbo.tblFormInscripcionCafamiguitos_InscriptionNumber)
	BEGIN	
		INSERT INTO dbo.tblFormInscripcionCafamiguitos_InscriptionNumber
			(InscriptionNumber)
		VALUES
			(0)
	END

	SELECT 
		@NewInscriptionNumber = InscriptionNumber + 1
	FROM
		dbo.tblFormInscripcionCafamiguitos_InscriptionNumber

	UPDATE 
		tblFormInscripcionCafamiguitos_InscriptionNumber 
	SET 
		InscriptionNumber = @NewInscriptionNumber

	SELECT @NewInscriptionNumber AS InscriptionNumber

	COMMIT TRANSACTION
    
END
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspFormSolicitudCreditoPersonal_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Guillermina Fernández Zaghini
-- Create date: 03/05/09
-- Description:	Insert Solicitud de Crédito Personal
-- =============================================
CREATE PROCEDURE [dbo].[uspFormSolicitudCreditoPersonal_Insert]
(
	@credValorSolicitado VARCHAR(100),
	@credDestino VARCHAR(100),
	@credPlazo VARCHAR(100),
	@solPrimerApellido VARCHAR(100),
	@solSegundoApellido VARCHAR(100),
	@solNombres VARCHAR(100),
	@solTipoDocumento VARCHAR(100),
	@solNroDocumento VARCHAR(100),
	@solDE VARCHAR(100),
	@solEstadoCivil VARCHAR(100),
	@solFechaNacimiento VARCHAR(100),
	@solEscolaridad VARCHAR(100),
	@solNroPersonasCargo VARCHAR(100),
	@solProfesion VARCHAR(100),
	@solDirResidenciaCombo1 VARCHAR(100) ,
	@solDirResidenciaCombo2 VARCHAR(100) ,
	@solDirResidenciaCombo3 VARCHAR(100) ,
	@solDirResidenciaCombo4 VARCHAR(100) ,
	@solDirResidenciaCombo5 VARCHAR(100) ,
	@solDirResidenciaCombo6 VARCHAR(100) ,
	@solDirResidenciaText1 VARCHAR(100) ,
	@solDirResidenciaText2 VARCHAR(100) ,
	@solDirResidenciaText3 VARCHAR(100) ,
	@solDirResidenciaText4 VARCHAR(100) ,
	@solDirResidenciaText5 VARCHAR(100) ,
	@solTiempoResidencia VARCHAR(100),
	@solTelefono VARCHAR(100),
	@solBarrio VARCHAR(100),
	@solCiudad VARCHAR(100),
	@solValArriendo VARCHAR(100),
	@solNombreArrendador VARCHAR(100),
	@solTelefonos VARCHAR(100),
	@solLabNombreEmpresa VARCHAR(100),
	@solLabNit VARCHAR(100),
	@solLabDireccionCombo1 VARCHAR(100) ,
	@solLabDireccionCombo2 VARCHAR(100) ,
	@solLabDireccionCombo3 VARCHAR(100) ,
	@solLabDireccionCombo4 VARCHAR(100) ,
	@solLabDireccionCombo5 VARCHAR(100) ,
	@solLabDireccionCombo6 VARCHAR(100) ,
	@solLabDireccionText1 VARCHAR(100) ,
	@solLabDireccionText2 VARCHAR(100) ,
	@solLabDireccionText3 VARCHAR(100) ,
	@solLabDireccionText4 VARCHAR(100) ,
	@solLabDireccionText5 VARCHAR(100) ,
	@solLabDependencia VARCHAR(100),
	@soLabCargo VARCHAR(100),
	@soLabTiempoEmpresa VARCHAR(100),
	@solLabTipoContrato VARCHAR(100),
	@soLabVencimiento VARCHAR(100),
	@soLabCiudad VARCHAR(100),
	@soLabTelefonos VARCHAR(100),
	@soLabExtensiones VARCHAR(100),
	@solActBienesInmuebles VARCHAR(100),
	@solActValorComercial VARCHAR(100),
	@solActTieneHipoteca VARCHAR(100),
	@solActAFavorDe VARCHAR(100),
	@solActSaldo VARCHAR(100),
	@solActCuotaMensual VARCHAR(100),
	@solActDireccionCombo1 VARCHAR(100) ,
	@solActDireccionCombo2 VARCHAR(100) ,
	@solActDireccionCombo3 VARCHAR(100) ,
	@solActDireccionCombo4 VARCHAR(100) ,
	@solActDireccionCombo5 VARCHAR(100) ,
	@solActDireccionCombo6 VARCHAR(100) ,
	@solActDireccionText1 VARCHAR(100) ,
	@solActDireccionText2 VARCHAR(100) ,
	@solActDireccionText3 VARCHAR(100) ,
	@solActDireccionText4 VARCHAR(100) ,
	@solActDireccionText5 VARCHAR(100) ,
	@solActBarrio VARCHAR(100),
	@solActCity VARCHAR(100),
	@solActNroMatricula VARCHAR(100),
	@solActNroEscritura VARCHAR(100),
	@solActDeedDate VARCHAR(100),
	@solVehMarca VARCHAR(100),
	@solVehPlaca VARCHAR(100),
	@solVehModelo VARCHAR(100),
	@solVehValorComercial VARCHAR(100),
	@solVehReserva VARCHAR(100),
	@solVehAFavorDe VARCHAR(100),
	@solIngreSueldoBasico VARCHAR(100),
	@solIngreSubsidio VARCHAR(100),
	@solIngreHonorarios VARCHAR(100),
	@solIngreOtros VARCHAR(100),
	@solGastosArriendo VARCHAR(100),
	@solGastosObligaciones VARCHAR(100),
	@solGastosTarjetas VARCHAR(100),
	@solGastosDescuentos VARCHAR(100),
	@solGastosFamilia VARCHAR(100),
	@solConyPrimApellido VARCHAR(100),
	@solConySegApellido VARCHAR(100),
	@solConyNombreCompleto VARCHAR(100),
	@solConyTipoDocum VARCHAR(100),
	@solConyNroDocumento VARCHAR(100),
	@solConyDE VARCHAR(100),
	@solConyProfesion VARCHAR(100),
	@solConyNomEmpresa VARCHAR(100),
	@solConyAntiguedad VARCHAR(100),
	@solConyCargo VARCHAR(100),
	@solConySalario VARCHAR(100),
	@solConyTelefonos VARCHAR(100),
	@solConyDirEmpresaCombo1 VARCHAR(100) ,
	@solConyDirEmpresaCombo2 VARCHAR(100) ,
	@solConyDirEmpresaCombo3 VARCHAR(100) ,
	@solConyDirEmpresaCombo4 VARCHAR(100) ,
	@solConyDirEmpresaCombo5 VARCHAR(100) ,
	@solConyDirEmpresaCombo6 VARCHAR(100) ,
	@solConyDirEmpresaText1 VARCHAR(100) ,
	@solConyDirEmpresaText2 VARCHAR(100) ,
	@solConyDirEmpresaText3 VARCHAR(100) ,
	@solConyDirEmpresaText4 VARCHAR(100) ,
	@solConyDirEmpresaText5 VARCHAR(100) ,
	@solRefamNombreCompleto VARCHAR(100),
	@solRefamTelResidencia VARCHAR(100),
	@solRefamEmpresa VARCHAR(100),
	@solRefamTelOficina VARCHAR(100),
	@solRefamDirResidenciaCombo1 VARCHAR(100) ,
	@solRefamDirResidenciaCombo2 VARCHAR(100) ,
	@solRefamDirResidenciaCombo3 VARCHAR(100) ,
	@solRefamDirResidenciaCombo4 VARCHAR(100) ,
	@solRefamDirResidenciaCombo5 VARCHAR(100) ,
	@solRefamDirResidenciaCombo6 VARCHAR(100) ,
	@solRefamDirResidenciaText1 VARCHAR(100) ,
	@solRefamDirResidenciaText2 VARCHAR(100) ,
	@solRefamDirResidenciaText3 VARCHAR(100) ,
	@solRefamDirResidenciaText4 VARCHAR(100) ,
	@solRefamDirResidenciaText5 VARCHAR(100) ,
	@solRefperNombreCompleto VARCHAR(100),
	@solRefperTelefResidencia VARCHAR(100),
	@solRefperNombreEmpresa VARCHAR(100),
	@solRefperTelefOficina VARCHAR(100),
	@solRefperDirResidenciaCombo1 VARCHAR(100) ,
	@solRefperDirResidenciaCombo2 VARCHAR(100) ,
	@solRefperDirResidenciaCombo3 VARCHAR(100) ,
	@solRefperDirResidenciaCombo4 VARCHAR(100) ,
	@solRefperDirResidenciaCombo5 VARCHAR(100) ,
	@solRefperDirResidenciaCombo6 VARCHAR(100) ,
	@solRefperDirResidenciaText1 VARCHAR(100) ,
	@solRefperDirResidenciaText2 VARCHAR(100) ,
	@solRefperDirResidenciaText3 VARCHAR(100) ,
	@solRefperDirResidenciaText4 VARCHAR(100) ,
	@solRefperDirResidenciaText5 VARCHAR(100) ,
	@codeuPrimerApellido VARCHAR(100),
	@codeuSegundoApellido VARCHAR(100),
	@codeuNombreCompleto VARCHAR(100),
	@codeuTipoDocumento VARCHAR(100),
	@codeuNroDocumento VARCHAR(100),
	@codeuDE VARCHAR(100),
	@codeuEstadoCivil VARCHAR(100),
	@codeuFechaNac VARCHAR(100),
	@codeuEscolaridad VARCHAR(100),
	@codeuNroPersonas VARCHAR(100),
	@codeuProfesion VARCHAR(100),
	@codeuTiempoResidencia VARCHAR(100),
	@codeuTelefono VARCHAR(100),
	@codeuTipoResidencia VARCHAR(100),
	@codeuDirAcualResCombo1 VARCHAR(100) ,
	@codeuDirAcualResCombo2 VARCHAR(100) ,
	@codeuDirAcualResCombo3 VARCHAR(100) ,
	@codeuDirAcualResCombo4 VARCHAR(100) ,
	@codeuDirAcualResCombo5 VARCHAR(100) ,
	@codeuDirAcualResCombo6 VARCHAR(100) ,
	@codeuDirAcualResText1 VARCHAR(100) ,
	@codeuDirAcualResText2 VARCHAR(100) ,
	@codeuDirAcualResText3 VARCHAR(100) ,
	@codeuDirAcualResText4 VARCHAR(100) ,
	@codeuDirAcualResText5 VARCHAR(100) ,
	@codeuBarrio VARCHAR(100),
	@codeuCiudad VARCHAR(100),
	@codeuValArriendo VARCHAR(100),
	@codeuNombreArrendador VARCHAR(100),
	@codeuTelefonos VARCHAR(100),
	@codeuLabNomEmpresa VARCHAR(100),
	@codeuLabNit VARCHAR(100),
	@codeuLabDependencia VARCHAR(100),
	@codeuLabCargo VARCHAR(100),
	@codeuLabTiempoEmpresa VARCHAR(100),
	@codeuLabTiempoContrato VARCHAR(100),
	@codeuLabCiudad VARCHAR(100),
	@codeuLabTelefonos VARCHAR(100),
	@codeuLabExtensiones VARCHAR(100),
	@codeuLabDireccionCombo1 VARCHAR(100) ,
	@codeuLabDireccionCombo2 VARCHAR(100) ,
	@codeuLabDireccionCombo3 VARCHAR(100) ,
	@codeuLabDireccionCombo4 VARCHAR(100) ,
	@codeuLabDireccionCombo5 VARCHAR(100) ,
	@codeuLabDireccionCombo6 VARCHAR(100) ,
	@codeuLabDireccionText1 VARCHAR(100) ,
	@codeuLabDireccionText2 VARCHAR(100) ,
	@codeuLabDireccionText3 VARCHAR(100) ,
	@codeuLabDireccionText4 VARCHAR(100) ,
	@codeuLabDireccionText5 VARCHAR(100) ,
	@codeuActBienesInmuebles VARCHAR(100),
	@codeuActValorComercial VARCHAR(100),
	@codeuActTieneHipoteca VARCHAR(100),
	@codeuAct VARCHAR(100),
	@codeuActSaldo VARCHAR(100),
	@codeuActCuotaMensual VARCHAR(100),
	@codeuActBarrio VARCHAR(100),
	@codeuActCity VARCHAR(100),
	@codeuActMatInmobiliaria VARCHAR(100),
	@codeuActNroEscritura VARCHAR(100),
	@codeuActDireccionCombo1 VARCHAR(100) ,
	@codeuActDireccionCombo2 VARCHAR(100) ,
	@codeuActDireccionCombo3 VARCHAR(100) ,
	@codeuActDireccionCombo4 VARCHAR(100) ,
	@codeuActDireccionCombo5 VARCHAR(100) ,
	@codeuActDireccionCombo6 VARCHAR(100) ,
	@codeuActDireccionText1 VARCHAR(100) ,
	@codeuActDireccionText2 VARCHAR(100) ,
	@codeuActDireccionText3 VARCHAR(100) ,
	@codeuActDireccionText4 VARCHAR(100) ,
	@codeuActDireccionText5 VARCHAR(100) ,
	@codeuActDeedDate VARCHAR(100),
	@codeuVehMarca VARCHAR(100),
	@codeuVehPlaca VARCHAR(100),
	@codeuVehModelo VARCHAR(100),
	@codeuVehValorComercial VARCHAR(100),
	@codeuVehDominio VARCHAR(100),
	@codeuVehAFavorDe VARCHAR(100),
	@codeuIngreSueldo VARCHAR(100),
	@codeuIngreSubsidio VARCHAR(100),
	@codeuIngreHonorarios VARCHAR(100),
	@codeuIngreOtros VARCHAR(100),
	@codeuGastosArriendo VARCHAR(100),
	@codeuGastosObligaciones VARCHAR(100),
	@codeuGastosTarjeta VARCHAR(100),
	@codeuGastosDescuentos VARCHAR(100),
	@codeuGastosFamiliar VARCHAR(100),
	@codeuConyApellido1 VARCHAR(100),
	@codeuConyApellido2 VARCHAR(100),
	@codeuConyNombres VARCHAR(100),
	@codeuConyTipoDoc VARCHAR(100),
	@codeuConyNroDocum VARCHAR(100),
	@codeuConyDE VARCHAR(100),
	@codeuConyProfesion VARCHAR(100),
	@codeuConyEmpresa VARCHAR(100),
	@codeuConyAntiguedad VARCHAR(100),
	@codeuConyCargo VARCHAR(100),
	@codeuConySalario VARCHAR(100),
	@codeuConyTelefonos VARCHAR(100),
	@codeuConyDirEmpresaCombo1 VARCHAR(100) ,
	@codeuConyDirEmpresaCombo2 VARCHAR(100) ,
	@codeuConyDirEmpresaCombo3 VARCHAR(100) ,
	@codeuConyDirEmpresaCombo4 VARCHAR(100) ,
	@codeuConyDirEmpresaCombo5 VARCHAR(100) ,
	@codeuConyDirEmpresaCombo6 VARCHAR(100) ,
	@codeuConyDirEmpresaText1 VARCHAR(100) ,
	@codeuConyDirEmpresaText2 VARCHAR(100) ,
	@codeuConyDirEmpresaText3 VARCHAR(100) ,
	@codeuConyDirEmpresaText4 VARCHAR(100) ,
	@codeuConyDirEmpresaText5 VARCHAR(100) ,
	@codeuConyRefamNombreCompleto VARCHAR(100),
	@codeuConyRefamTelefonos VARCHAR(100),
	@codeuConyRefamEmpresa VARCHAR(100),
	@codeuConyRefamTelOficina VARCHAR(100),
	@codeuConyRefamDirResCombo1 VARCHAR(100) ,
	@codeuConyRefamDirResCombo2 VARCHAR(100) ,
	@codeuConyRefamDirResCombo3 VARCHAR(100) ,
	@codeuConyRefamDirResCombo4 VARCHAR(100) ,
	@codeuConyRefamDirResCombo5 VARCHAR(100) ,
	@codeuConyRefamDirResCombo6 VARCHAR(100) ,
	@codeuConyRefamDirResText1 VARCHAR(100) ,
	@codeuConyRefamDirResText2 VARCHAR(100) ,
	@codeuConyRefamDirResText3 VARCHAR(100) ,
	@codeuConyRefamDirResText4 VARCHAR(100) ,
	@codeuConyRefamDirResText5 VARCHAR(100) ,
	@codeuConyRefPersNombreCompleto VARCHAR(100),
	@codeuConyRefPersTelResidencia VARCHAR(100),
	@codeuConyRefPersEmpresa VARCHAR(100),
	@codeuConyRefPersTelOficina VARCHAR(100),
	@codeuConyRefPersDirResCombo1 VARCHAR(100) ,
	@codeuConyRefPersDirResCombo2 VARCHAR(100) ,
	@codeuConyRefPersDirResCombo3 VARCHAR(100) ,
	@codeuConyRefPersDirResCombo4 VARCHAR(100) ,
	@codeuConyRefPersDirResCombo5 VARCHAR(100) ,
	@codeuConyRefPersDirResCombo6 VARCHAR(100) ,
	@codeuConyRefPersDirResText1 VARCHAR(100) ,
	@codeuConyRefPersDirResText2 VARCHAR(100) ,
	@codeuConyRefPersDirResText3 VARCHAR(100) ,
	@codeuConyRefPersDirResText4 VARCHAR(100) ,
	@codeuConyRefPersDirResText5 VARCHAR(100) 

)
AS
BEGIN
	DECLARE @solDirResidencia AS VARCHAR(500),
			@solLabDireccion  AS VARCHAR(500),
			@solActDireccion  AS VARCHAR(500),
			@solConyDirEmpresa  AS VARCHAR(500),
			@solRefamDirResidencia  AS VARCHAR(500),
			@solRefperDirResidencia  AS VARCHAR(500),
			@codeuDirAcualRes  AS VARCHAR(500),
			@codeuLabDireccion AS VARCHAR(500),
			@codeuActDireccion AS VARCHAR(500),
			@codeuConyDirEmpresa AS VARCHAR(500),
			@codeuConyRefamDirRes AS VARCHAR(500),
			@codeuConyRefPersDirRes AS VARCHAR(500)

	IF(@solDirResidenciaCombo1 IS NOT NULL)
	BEGIN
		SET @solDirResidencia = @solDirResidenciaCombo1 + '' ''
	END
	
	IF(@solDirResidenciaText1 IS NOT NULL)
	BEGIN
		SET @solDirResidencia = ISNULL(@solDirResidencia, '''') + @solDirResidenciaText1 + '' ''
	END

	IF(@solDirResidenciaCombo2 IS NOT NULL)
	BEGIN
		SET @solDirResidencia = ISNULL(@solDirResidencia, '''') + @solDirResidenciaCombo2 + '' ''
	END
	
	IF(@solDirResidenciaCombo3 IS NOT NULL)
	BEGIN
		SET @solDirResidencia = ISNULL(@solDirResidencia, '''') + @solDirResidenciaCombo3 + '' ''
	END

	IF(@solDirResidenciaText2 IS NOT NULL)
	BEGIN
		SET @solDirResidencia = ISNULL(@solDirResidencia, '''') + @solDirResidenciaText2 + '' ''
	END

	IF(@solDirResidenciaCombo4 IS NOT NULL)
	BEGIN
		SET @solDirResidencia = ISNULL(@solDirResidencia, '''') + @solDirResidenciaCombo4 + '' ''
	END

	IF(@solDirResidenciaText3 IS NOT NULL)
	BEGIN
		SET @solDirResidencia = ISNULL(@solDirResidencia, '''') + @solDirResidenciaText3 + '' ''
	END

	IF(@solDirResidenciaCombo5 IS NOT NULL)
	BEGIN
		SET @solDirResidencia = ISNULL(@solDirResidencia, '''') + @solDirResidenciaCombo5 + '' ''
	END

	IF(@solDirResidenciaText4 IS NOT NULL)
	BEGIN
		SET @solDirResidencia = ISNULL(@solDirResidencia, '''') + @solDirResidenciaText4 + '' ''
	END

	IF(@solDirResidenciaCombo6 IS NOT NULL)
	BEGIN
		SET @solDirResidencia = ISNULL(@solDirResidencia, '''') + @solDirResidenciaCombo6 + '' ''
	END

	IF(@solDirResidenciaText5 IS NOT NULL)
	BEGIN
		SET @solDirResidencia = ISNULL(@solDirResidencia, '''') + @solDirResidenciaText5
	END

	IF(@solLabDireccionCombo1 IS NOT NULL)
	BEGIN
		SET @solLabDireccion = @solLabDireccionCombo1 + '' ''
	END
	
	IF(@solLabDireccionText1 IS NOT NULL)
	BEGIN
		SET @solLabDireccion = ISNULL(@solLabDireccion, '''') + @solLabDireccionText1 + '' ''
	END

	IF(@solLabDireccionCombo2 IS NOT NULL)
	BEGIN
		SET @solLabDireccion = ISNULL(@solLabDireccion, '''') + @solLabDireccionCombo2 + '' ''
	END
	
	IF(@solLabDireccionCombo3 IS NOT NULL)
	BEGIN
		SET @solLabDireccion = ISNULL(@solLabDireccion, '''') + @solLabDireccionCombo3 + '' ''
	END

	IF(@solLabDireccionText2 IS NOT NULL)
	BEGIN
		SET @solLabDireccion = ISNULL(@solLabDireccion, '''') + @solLabDireccionText2 + '' ''
	END

	IF(@solLabDireccionCombo4 IS NOT NULL)
	BEGIN
		SET @solLabDireccion = ISNULL(@solLabDireccion, '''') + @solLabDireccionCombo4 + '' ''
	END

	IF(@solLabDireccionText3 IS NOT NULL)
	BEGIN
		SET @solLabDireccion = ISNULL(@solLabDireccion, '''') + @solLabDireccionText3 + '' ''
	END

	IF(@solLabDireccionCombo5 IS NOT NULL)
	BEGIN
		SET @solLabDireccion = ISNULL(@solLabDireccion, '''') + @solLabDireccionCombo5 + '' ''
	END

	IF(@solLabDireccionText4 IS NOT NULL)
	BEGIN
		SET @solLabDireccion = ISNULL(@solLabDireccion, '''') + @solLabDireccionText4 + '' ''
	END

	IF(@solLabDireccionCombo6 IS NOT NULL)
	BEGIN
		SET @solLabDireccion = ISNULL(@solLabDireccion, '''') + @solLabDireccionCombo6 + '' ''
	END

	IF(@solLabDireccionText5 IS NOT NULL)
	BEGIN
		SET @solLabDireccion = ISNULL(@solLabDireccion, '''') + @solLabDireccionText5
	END
	
	IF(@solActDireccionCombo1 IS NOT NULL)
	BEGIN
		SET @solActDireccion = @solActDireccionCombo1 + '' ''
	END
	
	IF(@solActDireccionText1 IS NOT NULL)
	BEGIN
		SET @solActDireccion = ISNULL(@solActDireccion, '''') + @solActDireccionText1 + '' ''
	END

	IF(@solActDireccionCombo2 IS NOT NULL)
	BEGIN
		SET @solActDireccion = ISNULL(@solActDireccion, '''') + @solActDireccionCombo2 + '' ''
	END
	
	IF(@solActDireccionCombo3 IS NOT NULL)
	BEGIN
		SET @solActDireccion = ISNULL(@solActDireccion, '''') + @solActDireccionCombo3 + '' ''
	END

	IF(@solActDireccionText2 IS NOT NULL)
	BEGIN
		SET @solActDireccion = ISNULL(@solActDireccion, '''') + @solActDireccionText2 + '' ''
	END

	IF(@solActDireccionCombo4 IS NOT NULL)
	BEGIN
		SET @solActDireccion = ISNULL(@solActDireccion, '''') + @solActDireccionCombo4 + '' ''
	END

	IF(@solActDireccionText3 IS NOT NULL)
	BEGIN
		SET @solActDireccion = ISNULL(@solActDireccion, '''') + @solActDireccionText3 + '' ''
	END

	IF(@solActDireccionCombo5 IS NOT NULL)
	BEGIN
		SET @solActDireccion = ISNULL(@solActDireccion, '''') + @solActDireccionCombo5 + '' ''
	END

	IF(@solActDireccionText4 IS NOT NULL)
	BEGIN
		SET @solActDireccion = ISNULL(@solActDireccion, '''') + @solActDireccionText4 + '' ''
	END

	IF(@solActDireccionCombo6 IS NOT NULL)
	BEGIN
		SET @solActDireccion = ISNULL(@solActDireccion, '''') + @solActDireccionCombo6 + '' ''
	END

	IF(@solActDireccionText5 IS NOT NULL)
	BEGIN
		SET @solActDireccion = ISNULL(@solActDireccion, '''') + @solActDireccionText5
	END

	IF(@solConyDirEmpresaCombo1 IS NOT NULL)
	BEGIN
		SET @solConyDirEmpresa = @solConyDirEmpresaCombo1 + '' ''
	END
	
	IF(@solConyDirEmpresaText1 IS NOT NULL)
	BEGIN
		SET @solConyDirEmpresa = ISNULL(@solConyDirEmpresa, '''') + @solConyDirEmpresaText1 + '' ''
	END

	IF(@solConyDirEmpresaCombo2 IS NOT NULL)
	BEGIN
		SET @solConyDirEmpresa = ISNULL(@solConyDirEmpresa, '''') + @solConyDirEmpresaCombo2 + '' ''
	END
	
	IF(@solConyDirEmpresaCombo3 IS NOT NULL)
	BEGIN
		SET @solConyDirEmpresa = ISNULL(@solConyDirEmpresa, '''') + @solConyDirEmpresaCombo3 + '' ''
	END

	IF(@solConyDirEmpresaText2 IS NOT NULL)
	BEGIN
		SET @solConyDirEmpresa = ISNULL(@solConyDirEmpresa, '''') + @solConyDirEmpresaText2 + '' ''
	END

	IF(@solConyDirEmpresaCombo4 IS NOT NULL)
	BEGIN
		SET @solConyDirEmpresa = ISNULL(@solConyDirEmpresa, '''') + @solConyDirEmpresaCombo4 + '' ''
	END

	IF(@solConyDirEmpresaText3 IS NOT NULL)
	BEGIN
		SET @solConyDirEmpresa = ISNULL(@solConyDirEmpresa, '''') + @solConyDirEmpresaText3 + '' ''
	END

	IF(@solConyDirEmpresaCombo5 IS NOT NULL)
	BEGIN
		SET @solConyDirEmpresa = ISNULL(@solConyDirEmpresa, '''') + @solConyDirEmpresaCombo5 + '' ''
	END

	IF(@solConyDirEmpresaText4 IS NOT NULL)
	BEGIN
		SET @solConyDirEmpresa = ISNULL(@solConyDirEmpresa, '''') + @solConyDirEmpresaText4 + '' ''
	END

	IF(@solConyDirEmpresaCombo6 IS NOT NULL)
	BEGIN
		SET @solConyDirEmpresa = ISNULL(@solConyDirEmpresa, '''') + @solConyDirEmpresaCombo6 + '' ''
	END

	IF(@solConyDirEmpresaText5 IS NOT NULL)
	BEGIN
		SET @solConyDirEmpresa = ISNULL(@solConyDirEmpresa, '''') + @solConyDirEmpresaText5
	END

	IF(@solRefamDirResidenciaCombo1 IS NOT NULL)
	BEGIN
		SET @solRefamDirResidencia = @solRefamDirResidenciaCombo1 + '' ''
	END
	
	IF(@solRefamDirResidenciaText1 IS NOT NULL)
	BEGIN
		SET @solRefamDirResidencia = ISNULL(@solRefamDirResidencia, '''') + @solRefamDirResidenciaText1 + '' ''
	END

	IF(@solRefamDirResidenciaCombo2 IS NOT NULL)
	BEGIN
		SET @solRefamDirResidencia = ISNULL(@solRefamDirResidencia, '''') + @solRefamDirResidenciaCombo2 + '' ''
	END
	
	IF(@solRefamDirResidenciaCombo3 IS NOT NULL)
	BEGIN
		SET @solRefamDirResidencia = ISNULL(@solRefamDirResidencia, '''') + @solRefamDirResidenciaCombo3 + '' ''
	END

	IF(@solRefamDirResidenciaText2 IS NOT NULL)
	BEGIN
		SET @solRefamDirResidencia = ISNULL(@solRefamDirResidencia, '''') + @solRefamDirResidenciaText2 + '' ''
	END

	IF(@solRefamDirResidenciaCombo4 IS NOT NULL)
	BEGIN
		SET @solRefamDirResidencia = ISNULL(@solRefamDirResidencia, '''') + @solRefamDirResidenciaCombo4 + '' ''
	END

	IF(@solRefamDirResidenciaText3 IS NOT NULL)
	BEGIN
		SET @solRefamDirResidencia = ISNULL(@solRefamDirResidencia, '''') + @solRefamDirResidenciaText3 + '' ''
	END

	IF(@solRefamDirResidenciaCombo5 IS NOT NULL)
	BEGIN
		SET @solRefamDirResidencia = ISNULL(@solRefamDirResidencia, '''') + @solRefamDirResidenciaCombo5 + '' ''
	END

	IF(@solRefamDirResidenciaText4 IS NOT NULL)
	BEGIN
		SET @solRefamDirResidencia = ISNULL(@solRefamDirResidencia, '''') + @solRefamDirResidenciaText4 + '' ''
	END

	IF(@solRefamDirResidenciaCombo6 IS NOT NULL)
	BEGIN
		SET @solRefamDirResidencia = ISNULL(@solRefamDirResidencia, '''') + @solRefamDirResidenciaCombo6 + '' ''
	END

	IF(@solRefamDirResidenciaText5 IS NOT NULL)
	BEGIN
		SET @solRefamDirResidencia = ISNULL(@solRefamDirResidencia, '''') + @solRefamDirResidenciaText5
	END

	IF(@solRefperDirResidenciaCombo1 IS NOT NULL)
	BEGIN
		SET @solRefperDirResidencia = @solRefperDirResidenciaCombo1 + '' ''
	END
	
	IF(@solRefperDirResidenciaText1 IS NOT NULL)
	BEGIN
		SET @solRefperDirResidencia = ISNULL(@solRefperDirResidencia, '''') + @solRefperDirResidenciaText1 + '' ''
	END

	IF(@solRefperDirResidenciaCombo2 IS NOT NULL)
	BEGIN
		SET @solRefperDirResidencia = ISNULL(@solRefperDirResidencia, '''') + @solRefperDirResidenciaCombo2 + '' ''
	END
	
	IF(@solRefperDirResidenciaCombo3 IS NOT NULL)
	BEGIN
		SET @solRefperDirResidencia = ISNULL(@solRefperDirResidencia, '''') + @solRefperDirResidenciaCombo3 + '' ''
	END

	IF(@solRefperDirResidenciaText2 IS NOT NULL)
	BEGIN
		SET @solRefperDirResidencia = ISNULL(@solRefperDirResidencia, '''') + @solRefperDirResidenciaText2 + '' ''
	END

	IF(@solRefperDirResidenciaCombo4 IS NOT NULL)
	BEGIN
		SET @solRefperDirResidencia = ISNULL(@solRefperDirResidencia, '''') + @solRefperDirResidenciaCombo4 + '' ''
	END

	IF(@solRefperDirResidenciaText3 IS NOT NULL)
	BEGIN
		SET @solRefperDirResidencia = ISNULL(@solRefperDirResidencia, '''') + @solRefperDirResidenciaText3 + '' ''
	END

	IF(@solRefperDirResidenciaCombo5 IS NOT NULL)
	BEGIN
		SET @solRefperDirResidencia = ISNULL(@solRefperDirResidencia, '''') + @solRefperDirResidenciaCombo5 + '' ''
	END

	IF(@solRefperDirResidenciaText4 IS NOT NULL)
	BEGIN
		SET @solRefperDirResidencia = ISNULL(@solRefperDirResidencia, '''') + @solRefperDirResidenciaText4 + '' ''
	END

	IF(@solRefperDirResidenciaCombo6 IS NOT NULL)
	BEGIN
		SET @solRefperDirResidencia = ISNULL(@solRefperDirResidencia, '''') + @solRefperDirResidenciaCombo6 + '' ''
	END

	IF(@solRefperDirResidenciaText5 IS NOT NULL)
	BEGIN
		SET @solRefperDirResidencia = ISNULL(@solRefperDirResidencia, '''') + @solRefperDirResidenciaText5
	END

	IF(@codeuDirAcualResCombo1 IS NOT NULL)
	BEGIN
		SET @codeuDirAcualRes = @codeuDirAcualResCombo1 + '' ''
	END
	
	IF(@codeuDirAcualResText1 IS NOT NULL)
	BEGIN
		SET @codeuDirAcualRes = ISNULL(@codeuDirAcualRes, '''') + @codeuDirAcualResText1 + '' ''
	END

	IF(@codeuDirAcualResCombo2 IS NOT NULL)
	BEGIN
		SET @codeuDirAcualRes = ISNULL(@codeuDirAcualRes, '''') + @codeuDirAcualResCombo2 + '' ''
	END
	
	IF(@codeuDirAcualResCombo3 IS NOT NULL)
	BEGIN
		SET @codeuDirAcualRes = ISNULL(@codeuDirAcualRes, '''') + @codeuDirAcualResCombo3 + '' ''
	END

	IF(@codeuDirAcualResText2 IS NOT NULL)
	BEGIN
		SET @codeuDirAcualRes = ISNULL(@codeuDirAcualRes, '''') + @codeuDirAcualResText2 + '' ''
	END

	IF(@codeuDirAcualResCombo4 IS NOT NULL)
	BEGIN
		SET @codeuDirAcualRes = ISNULL(@codeuDirAcualRes, '''') + @codeuDirAcualResCombo4 + '' ''
	END

	IF(@codeuDirAcualResText3 IS NOT NULL)
	BEGIN
		SET @codeuDirAcualRes = ISNULL(@codeuDirAcualRes, '''') + @codeuDirAcualResText3 + '' ''
	END

	IF(@codeuDirAcualResCombo5 IS NOT NULL)
	BEGIN
		SET @codeuDirAcualRes = ISNULL(@codeuDirAcualRes, '''') + @codeuDirAcualResCombo5 + '' ''
	END

	IF(@codeuDirAcualResText4 IS NOT NULL)
	BEGIN
		SET @codeuDirAcualRes = ISNULL(@codeuDirAcualRes, '''') + @codeuDirAcualResText4 + '' ''
	END

	IF(@codeuDirAcualResCombo6 IS NOT NULL)
	BEGIN
		SET @codeuDirAcualRes = ISNULL(@codeuDirAcualRes, '''') + @codeuDirAcualResCombo6 + '' ''
	END

	IF(@codeuDirAcualResText5 IS NOT NULL)
	BEGIN
		SET @codeuDirAcualRes = ISNULL(@codeuDirAcualRes, '''') + @codeuDirAcualResText5
	END

	IF(@codeuLabDireccionCombo1 IS NOT NULL)
	BEGIN
		SET @codeuLabDireccion = @codeuLabDireccionCombo1 + '' ''
	END
	
	IF(@codeuLabDireccionText1 IS NOT NULL)
	BEGIN
		SET @codeuLabDireccion = ISNULL(@codeuLabDireccion, '''') + @codeuLabDireccionText1 + '' ''
	END

	IF(@codeuLabDireccionCombo2 IS NOT NULL)
	BEGIN
		SET @codeuLabDireccion = ISNULL(@codeuLabDireccion, '''') + @codeuLabDireccionCombo2 + '' ''
	END
	
	IF(@codeuLabDireccionCombo3 IS NOT NULL)
	BEGIN
		SET @codeuLabDireccion = ISNULL(@codeuLabDireccion, '''') + @codeuLabDireccionCombo3 + '' ''
	END

	IF(@codeuLabDireccionText2 IS NOT NULL)
	BEGIN
		SET @codeuLabDireccion = ISNULL(@codeuLabDireccion, '''') + @codeuLabDireccionText2 + '' ''
	END

	IF(@codeuLabDireccionCombo4 IS NOT NULL)
	BEGIN
		SET @codeuLabDireccion = ISNULL(@codeuLabDireccion, '''') + @codeuLabDireccionCombo4 + '' ''
	END

	IF(@codeuLabDireccionText3 IS NOT NULL)
	BEGIN
		SET @codeuLabDireccion = ISNULL(@codeuLabDireccion, '''') + @codeuLabDireccionText3 + '' ''
	END

	IF(@codeuLabDireccionCombo5 IS NOT NULL)
	BEGIN
		SET @codeuLabDireccion = ISNULL(@codeuLabDireccion, '''') + @codeuLabDireccionCombo5 + '' ''
	END

	IF(@codeuLabDireccionText4 IS NOT NULL)
	BEGIN
		SET @codeuLabDireccion = ISNULL(@codeuLabDireccion, '''') + @codeuLabDireccionText4 + '' ''
	END

	IF(@codeuLabDireccionCombo6 IS NOT NULL)
	BEGIN
		SET @codeuLabDireccion = ISNULL(@codeuLabDireccion, '''') + @codeuLabDireccionCombo6 + '' ''
	END

	IF(@codeuLabDireccionText5 IS NOT NULL)
	BEGIN
		SET @codeuLabDireccion = ISNULL(@codeuLabDireccion, '''') + @codeuLabDireccionText5
	END

	IF(@codeuActDireccionCombo1 IS NOT NULL)
	BEGIN
		SET @codeuActDireccion = @codeuActDireccionCombo1 + '' ''
	END
	
	IF(@codeuActDireccionText1 IS NOT NULL)
	BEGIN
		SET @codeuActDireccion = ISNULL(@codeuActDireccion, '''') + @codeuActDireccionText1 + '' ''
	END

	IF(@codeuActDireccionCombo2 IS NOT NULL)
	BEGIN
		SET @codeuActDireccion = ISNULL(@codeuActDireccion, '''') + @codeuActDireccionCombo2 + '' ''
	END
	
	IF(@codeuActDireccionCombo3 IS NOT NULL)
	BEGIN
		SET @codeuActDireccion = ISNULL(@codeuActDireccion, '''') + @codeuActDireccionCombo3 + '' ''
	END

	IF(@codeuActDireccionText2 IS NOT NULL)
	BEGIN
		SET @codeuActDireccion = ISNULL(@codeuActDireccion, '''') + @codeuActDireccionText2 + '' ''
	END

	IF(@codeuActDireccionCombo4 IS NOT NULL)
	BEGIN
		SET @codeuActDireccion = ISNULL(@codeuActDireccion, '''') + @codeuActDireccionCombo4 + '' ''
	END

	IF(@codeuActDireccionText3 IS NOT NULL)
	BEGIN
		SET @codeuActDireccion = ISNULL(@codeuActDireccion, '''') + @codeuActDireccionText3 + '' ''
	END

	IF(@codeuActDireccionCombo5 IS NOT NULL)
	BEGIN
		SET @codeuActDireccion = ISNULL(@codeuActDireccion, '''') + @codeuActDireccionCombo5 + '' ''
	END

	IF(@codeuActDireccionText4 IS NOT NULL)
	BEGIN
		SET @codeuActDireccion = ISNULL(@codeuActDireccion, '''') + @codeuActDireccionText4 + '' ''
	END

	IF(@codeuActDireccionCombo6 IS NOT NULL)
	BEGIN
		SET @codeuActDireccion = ISNULL(@codeuActDireccion, '''') + @codeuActDireccionCombo6 + '' ''
	END

	IF(@codeuActDireccionText5 IS NOT NULL)
	BEGIN
		SET @codeuActDireccion = ISNULL(@codeuActDireccion, '''') + @codeuActDireccionText5
	END

	IF(@codeuConyDirEmpresaCombo1 IS NOT NULL)
	BEGIN
		SET @codeuConyDirEmpresa = @codeuConyDirEmpresaCombo1 + '' ''
	END
	
	IF(@codeuConyDirEmpresaText1 IS NOT NULL)
	BEGIN
		SET @codeuConyDirEmpresa = ISNULL(@codeuConyDirEmpresa, '''') + @codeuConyDirEmpresaText1 + '' ''
	END

	IF(@codeuConyDirEmpresaCombo2 IS NOT NULL)
	BEGIN
		SET @codeuConyDirEmpresa = ISNULL(@codeuConyDirEmpresa, '''') + @codeuConyDirEmpresaCombo2 + '' ''
	END
	
	IF(@codeuConyDirEmpresaCombo3 IS NOT NULL)
	BEGIN
		SET @codeuConyDirEmpresa = ISNULL(@codeuConyDirEmpresa, '''') + @codeuConyDirEmpresaCombo3 + '' ''
	END

	IF(@codeuConyDirEmpresaText2 IS NOT NULL)
	BEGIN
		SET @codeuConyDirEmpresa = ISNULL(@codeuConyDirEmpresa, '''') + @codeuConyDirEmpresaText2 + '' ''
	END

	IF(@codeuConyDirEmpresaCombo4 IS NOT NULL)
	BEGIN
		SET @codeuConyDirEmpresa = ISNULL(@codeuConyDirEmpresa, '''') + @codeuConyDirEmpresaCombo4 + '' ''
	END

	IF(@codeuConyDirEmpresaText3 IS NOT NULL)
	BEGIN
		SET @codeuConyDirEmpresa = ISNULL(@codeuConyDirEmpresa, '''') + @codeuConyDirEmpresaText3 + '' ''
	END

	IF(@codeuConyDirEmpresaCombo5 IS NOT NULL)
	BEGIN
		SET @codeuConyDirEmpresa = ISNULL(@codeuConyDirEmpresa, '''') + @codeuConyDirEmpresaCombo5 + '' ''
	END

	IF(@codeuConyDirEmpresaText4 IS NOT NULL)
	BEGIN
		SET @codeuConyDirEmpresa = ISNULL(@codeuConyDirEmpresa, '''') + @codeuConyDirEmpresaText4 + '' ''
	END

	IF(@codeuConyDirEmpresaCombo6 IS NOT NULL)
	BEGIN
		SET @codeuConyDirEmpresa = ISNULL(@codeuConyDirEmpresa, '''') + @codeuConyDirEmpresaCombo6 + '' ''
	END

	IF(@codeuConyDirEmpresaText5 IS NOT NULL)
	BEGIN
		SET @codeuConyDirEmpresa = ISNULL(@codeuConyDirEmpresa, '''') + @codeuConyDirEmpresaText5
	END

	IF(@codeuConyRefamDirResCombo1 IS NOT NULL)
	BEGIN
		SET @codeuConyRefamDirRes = @codeuConyRefamDirResCombo1 + '' ''
	END
	
	IF(@codeuConyRefamDirResText1 IS NOT NULL)
	BEGIN
		SET @codeuConyRefamDirRes = ISNULL(@codeuConyRefamDirRes, '''') + @codeuConyRefamDirResText1 + '' ''
	END

	IF(@codeuConyRefamDirResCombo2 IS NOT NULL)
	BEGIN
		SET @codeuConyRefamDirRes = ISNULL(@codeuConyRefamDirRes, '''') + @codeuConyRefamDirResCombo2 + '' ''
	END
	
	IF(@codeuConyRefamDirResCombo3 IS NOT NULL)
	BEGIN
		SET @codeuConyRefamDirRes = ISNULL(@codeuConyRefamDirRes, '''') + @codeuConyRefamDirResCombo3 + '' ''
	END

	IF(@codeuConyRefamDirResText2 IS NOT NULL)
	BEGIN
		SET @codeuConyRefamDirRes = ISNULL(@codeuConyRefamDirRes, '''') + @codeuConyRefamDirResText2 + '' ''
	END

	IF(@codeuConyRefamDirResCombo4 IS NOT NULL)
	BEGIN
		SET @codeuConyRefamDirRes = ISNULL(@codeuConyRefamDirRes, '''') + @codeuConyRefamDirResCombo4 + '' ''
	END

	IF(@codeuConyRefamDirResText3 IS NOT NULL)
	BEGIN
		SET @codeuConyRefamDirRes = ISNULL(@codeuConyRefamDirRes, '''') + @codeuConyRefamDirResText3 + '' ''
	END

	IF(@codeuConyRefamDirResCombo5 IS NOT NULL)
	BEGIN
		SET @codeuConyRefamDirRes = ISNULL(@codeuConyRefamDirRes, '''') + @codeuConyRefamDirResCombo5 + '' ''
	END

	IF(@codeuConyRefamDirResText4 IS NOT NULL)
	BEGIN
		SET @codeuConyRefamDirRes = ISNULL(@codeuConyRefamDirRes, '''') + @codeuConyRefamDirResText4 + '' ''
	END

	IF(@codeuConyRefamDirResCombo6 IS NOT NULL)
	BEGIN
		SET @codeuConyRefamDirRes = ISNULL(@codeuConyRefamDirRes, '''') + @codeuConyRefamDirResCombo6 + '' ''
	END

	IF(@codeuConyRefamDirResText5 IS NOT NULL)
	BEGIN
		SET @codeuConyRefamDirRes = ISNULL(@codeuConyRefamDirRes, '''') + @codeuConyRefamDirResText5
	END

	IF(@codeuConyRefPersDirResCombo1 IS NOT NULL)
	BEGIN
		SET @codeuConyRefPersDirRes = @codeuConyRefPersDirResCombo1 + '' ''
	END
	
	IF(@codeuConyRefPersDirResText1 IS NOT NULL)
	BEGIN
		SET @codeuConyRefPersDirRes = ISNULL(@codeuConyRefPersDirRes, '''') + @codeuConyRefPersDirResText1 + '' ''
	END

	IF(@codeuConyRefPersDirResCombo2 IS NOT NULL)
	BEGIN
		SET @codeuConyRefPersDirRes = ISNULL(@codeuConyRefPersDirRes, '''') + @codeuConyRefPersDirResCombo2 + '' ''
	END
	
	IF(@codeuConyRefPersDirResCombo3 IS NOT NULL)
	BEGIN
		SET @codeuConyRefPersDirRes = ISNULL(@codeuConyRefPersDirRes, '''') + @codeuConyRefPersDirResCombo3 + '' ''
	END

	IF(@codeuConyRefPersDirResText2 IS NOT NULL)
	BEGIN
		SET @codeuConyRefPersDirRes = ISNULL(@codeuConyRefPersDirRes, '''') + @codeuConyRefPersDirResText2 + '' ''
	END

	IF(@codeuConyRefPersDirResCombo4 IS NOT NULL)
	BEGIN
		SET @codeuConyRefPersDirRes = ISNULL(@codeuConyRefPersDirRes, '''') + @codeuConyRefPersDirResCombo4 + '' ''
	END

	IF(@codeuConyRefPersDirResText3 IS NOT NULL)
	BEGIN
		SET @codeuConyRefPersDirRes = ISNULL(@codeuConyRefPersDirRes, '''') + @codeuConyRefPersDirResText3 + '' ''
	END

	IF(@codeuConyRefPersDirResCombo5 IS NOT NULL)
	BEGIN
		SET @codeuConyRefPersDirRes = ISNULL(@codeuConyRefPersDirRes, '''') + @codeuConyRefPersDirResCombo5 + '' ''
	END

	IF(@codeuConyRefPersDirResText4 IS NOT NULL)
	BEGIN
		SET @codeuConyRefPersDirRes = ISNULL(@codeuConyRefPersDirRes, '''') + @codeuConyRefPersDirResText4 + '' ''
	END

	IF(@codeuConyRefPersDirResCombo6 IS NOT NULL)
	BEGIN
		SET @codeuConyRefPersDirRes = ISNULL(@codeuConyRefPersDirRes, '''') + @codeuConyRefPersDirResCombo6 + '' ''
	END

	IF(@codeuConyRefPersDirResText5 IS NOT NULL)
	BEGIN
		SET @codeuConyRefPersDirRes = ISNULL(@codeuConyRefPersDirRes, '''') + @codeuConyRefPersDirResText5
	END

INSERT INTO [CAFAM_DB].[dbo].[tblCreditoPersonal]
           ([credValorSolicitado]
           ,[credDestino]
           ,[credPlazo]
           ,[solPrimerApellido]
           ,[solSegundoApellido]
           ,[solNombres]
           ,[solTipoDocumento]
           ,[solNroDocumento]
           ,[solDE]
           ,[solEstadoCivil]
           ,[solFechaNacimiento]
           ,[solEscolaridad]
           ,[solNroPersonasCargo]
           ,[solProfesion]
           ,[solDirResidencia]
           ,[solTiempoResidencia]
           ,[solTelefono]
           ,[solBarrio]
           ,[solCiudad]
           ,[solValArriendo]
           ,[solNombreArrendador]
           ,[solTelefonos]
           ,[solLabNombreEmpresa]
           ,[solLabNit]
           ,[solLabDireccion]
           ,[solLabDependencia]
           ,[soLabCargo]
           ,[soLabTiempoEmpresa]
           ,[solLabTipoContrato]
           ,[soLabVencimiento]
           ,[soLabCiudad]
           ,[soLabTelefonos]
           ,[soLabExtensiones]
           ,[solActBienesInmuebles]
           ,[solActValorComercial]
           ,[solActTieneHipoteca]
           ,[solActAFavorDe]
           ,[solActSaldo]
           ,[solActCuotaMensual]
           ,[solActDireccion]
           ,[solActBarrio]
           ,[solActCity]
           ,[solActNroMatricula]
           ,[solActNroEscritura]
           ,[solActDeedDate]
           ,[solVehMarca]
           ,[solVehPlaca]
           ,[solVehModelo]
           ,[solVehValorComercial]
           ,[solVehReserva]
           ,[solVehAFavorDe]
           ,[solIngreSueldoBasico]
           ,[solIngreSubsidio]
           ,[solIngreHonorarios]
           ,[solIngreOtros]
           ,[solGastosArriendo]
           ,[solGastosObligaciones]
           ,[solGastosTarjetas]
           ,[solGastosDescuentos]
           ,[solGastosFamilia]
           ,[solConyPrimApellido]
           ,[solConySegApellido]
           ,[solConyNombreCompleto]
           ,[solConyTipoDocum]
           ,[solConyNroDocumento]
           ,[solConyDE]
           ,[solConyProfesion]
           ,[solConyNomEmpresa]
           ,[solConyAntiguedad]
           ,[solConyCargo]
           ,[solConySalario]
           ,[solConyTelefonos]
           ,[solConyDirEmpresa]
           ,[solRefamNombreCompleto]
           ,[solRefamTelResidencia]
           ,[solRefamEmpresa]
           ,[solRefamTelOficina]
           ,[solRefamDirResidencia]
           ,[solRefperNombreCompleto]
           ,[solRefperTelefResidencia]
           ,[solRefperNombreEmpresa]
           ,[solRefperTelefOficina]
           ,[solRefperDirResidencia]
           ,[codeuPrimerApellido]
           ,[codeuSegundoApellido]
           ,[codeuNombreCompleto]
           ,[codeuTipoDocumento]
           ,[codeuNroDocumento]
           ,[codeuDE]
           ,[codeuEstadoCivil]
           ,[codeuFechaNac]
           ,[codeuEscolaridad]
           ,[codeuNroPersonas]
           ,[codeuProfesion]
           ,[codeuTiempoResidencia]
           ,[codeuTelefono]
           ,[codeuTipoResidencia]
           ,[codeuDirAcualRes]
           ,[codeuBarrio]
           ,[codeuCiudad]
           ,[codeuValArriendo]
           ,[codeuNombreArrendador]
           ,[codeuTelefonos]
           ,[codeuLabNomEmpresa]
           ,[codeuLabNit]
           ,[codeuLabDependencia]
           ,[codeuLabCargo]
           ,[codeuLabTiempoEmpresa]
           ,[codeuLabTiempoContrato]
           ,[codeuLabCiudad]
           ,[codeuLabTelefonos]
           ,[codeuLabExtensiones]
           ,[codeuLabDireccion]
           ,[codeuActBienesInmuebles]
           ,[codeuActValorComercial]
           ,[codeuActTieneHipoteca]
           ,[codeuAct]
           ,[codeuActSaldo]
           ,[codeuActCuotaMensual]
           ,[codeuActBarrio]
           ,[codeuActCity]
           ,[codeuActMatInmobiliaria]
           ,[codeuActNroEscritura]
           ,[codeuActDireccion]
           ,[codeuActDeedDate]
           ,[codeuVehMarca]
           ,[codeuVehPlaca]
           ,[codeuVehModelo]
           ,[codeuVehValorComercial]
           ,[codeuVehDominio]
           ,[codeuVehAFavorDe]
           ,[codeuIngreSueldo]
           ,[codeuIngreSubsidio]
           ,[codeuIngreHonorarios]
           ,[codeuIngreOtros]
           ,[codeuGastosArriendo]
           ,[codeuGastosObligaciones]
           ,[codeuGastosTarjeta]
           ,[codeuGastosDescuentos]
           ,[codeuGastosFamiliar]
           ,[codeuConyApellido1]
           ,[codeuConyApellido2]
           ,[codeuConyNombres]
           ,[codeuConyTipoDoc]
           ,[codeuConyNroDocum]
           ,[codeuConyDE]
           ,[codeuConyProfesion]
           ,[codeuConyEmpresa]
           ,[codeuConyAntiguedad]
           ,[codeuConyCargo]
           ,[codeuConySalario]
           ,[codeuConyTelefonos]
           ,[codeuConyDirEmpresa]
           ,[codeuConyRefamNombreCompleto]
           ,[codeuConyRefamTelefonos]
           ,[codeuConyRefamEmpresa]
           ,[codeuConyRefamTelOficina]
           ,[codeuConyRefamDirRes]
           ,[codeuConyRefPersNombreCompleto]
           ,[codeuConyRefPersTelResidencia]
           ,[codeuConyRefPersEmpresa]
           ,[codeuConyRefPersTelOficina]
           ,[codeuConyRefPersDirRes])
     VALUES
           (@credValorSolicitado, 
			@credDestino, 
			@credPlazo, 
			@solPrimerApellido, 
			@solSegundoApellido, 
			@solNombres, 
			@solTipoDocumento, 
			@solNroDocumento, 
			@solDE, 
			@solEstadoCivil, 
			@solFechaNacimiento, 
			@solEscolaridad, 
			@solNroPersonasCargo, 
			@solProfesion, 
			@solDirResidencia, 
			@solTiempoResidencia, 
			@solTelefono, 
			@solBarrio, 
			@solCiudad, 
			@solValArriendo, 
			@solNombreArrendador, 
			@solTelefonos, 
			@solLabNombreEmpresa, 
			@solLabNit, 
			@solLabDireccion, 
			@solLabDependencia, 
			@soLabCargo, 
			@soLabTiempoEmpresa, 
			@solLabTipoContrato, 
			@soLabVencimiento, 
			@soLabCiudad, 
			@soLabTelefonos, 
			@soLabExtensiones, 
			@solActBienesInmuebles, 
			@solActValorComercial, 
			@solActTieneHipoteca, 
			@solActAFavorDe, 
			@solActSaldo, 
			@solActCuotaMensual, 
			@solActDireccion, 
			@solActBarrio, 
			@solActCity, 
			@solActNroMatricula, 
			@solActNroEscritura, 
			@solActDeedDate, 
			@solVehMarca, 
			@solVehPlaca, 
			@solVehModelo, 
			@solVehValorComercial, 
			@solVehReserva, 
			@solVehAFavorDe, 
			@solIngreSueldoBasico, 
			@solIngreSubsidio, 
			@solIngreHonorarios, 
			@solIngreOtros, 
			@solGastosArriendo, 
			@solGastosObligaciones, 
			@solGastosTarjetas, 
			@solGastosDescuentos, 
			@solGastosFamilia, 
			@solConyPrimApellido, 
			@solConySegApellido, 
			@solConyNombreCompleto, 
			@solConyTipoDocum, 
			@solConyNroDocumento, 
			@solConyDE, 
			@solConyProfesion, 
			@solConyNomEmpresa, 
			@solConyAntiguedad, 
			@solConyCargo, 
			@solConySalario, 
			@solConyTelefonos, 
			@solConyDirEmpresa, 
			@solRefamNombreCompleto, 
			@solRefamTelResidencia, 
			@solRefamEmpresa, 
			@solRefamTelOficina, 
			@solRefamDirResidencia, 
			@solRefperNombreCompleto, 
			@solRefperTelefResidencia, 
			@solRefperNombreEmpresa, 
			@solRefperTelefOficina, 
			@solRefperDirResidencia, 
			@codeuPrimerApellido, 
			@codeuSegundoApellido, 
			@codeuNombreCompleto, 
			@codeuTipoDocumento, 
			@codeuNroDocumento, 
			@codeuDE, 
			@codeuEstadoCivil, 
			@codeuFechaNac, 
			@codeuEscolaridad, 
			@codeuNroPersonas, 
			@codeuProfesion, 
			@codeuTiempoResidencia, 
			@codeuTelefono, 
			@codeuTipoResidencia, 
			@codeuDirAcualRes, 
			@codeuBarrio, 
			@codeuCiudad, 
			@codeuValArriendo, 
			@codeuNombreArrendador, 
			@codeuTelefonos, 
			@codeuLabNomEmpresa, 
			@codeuLabNit, 
			@codeuLabDependencia, 
			@codeuLabCargo, 
			@codeuLabTiempoEmpresa, 
			@codeuLabTiempoContrato, 
			@codeuLabCiudad, 
			@codeuLabTelefonos, 
			@codeuLabExtensiones, 
			@codeuLabDireccion, 
			@codeuActBienesInmuebles, 
			@codeuActValorComercial, 
			@codeuActTieneHipoteca, 
			@codeuAct, 
			@codeuActSaldo, 
			@codeuActCuotaMensual, 
			@codeuActBarrio, 
			@codeuActCity, 
			@codeuActMatInmobiliaria, 
			@codeuActNroEscritura, 
			@codeuActDireccion, 
			@codeuActDeedDate, 
			@codeuVehMarca, 
			@codeuVehPlaca, 
			@codeuVehModelo, 
			@codeuVehValorComercial, 
			@codeuVehDominio, 
			@codeuVehAFavorDe, 
			@codeuIngreSueldo, 
			@codeuIngreSubsidio, 
			@codeuIngreHonorarios, 
			@codeuIngreOtros, 
			@codeuGastosArriendo, 
			@codeuGastosObligaciones, 
			@codeuGastosTarjeta, 
			@codeuGastosDescuentos, 
			@codeuGastosFamiliar, 
			@codeuConyApellido1, 
			@codeuConyApellido2, 
			@codeuConyNombres, 
			@codeuConyTipoDoc, 
			@codeuConyNroDocum, 
			@codeuConyDE, 
			@codeuConyProfesion, 
			@codeuConyEmpresa, 
			@codeuConyAntiguedad, 
			@codeuConyCargo, 
			@codeuConySalario, 
			@codeuConyTelefonos, 
			@codeuConyDirEmpresa, 
			@codeuConyRefamNombreCompleto, 
			@codeuConyRefamTelefonos, 
			@codeuConyRefamEmpresa, 
			@codeuConyRefamTelOficina, 
			@codeuConyRefamDirRes, 
			@codeuConyRefPersNombreCompleto, 
			@codeuConyRefPersTelResidencia, 
			@codeuConyRefPersEmpresa, 
			@codeuConyRefPersTelOficina, 
			@codeuConyRefPersDirRes)
END
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InsCaptchaControl]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:        Martin De Sa Granja
-- Create date: 20091703
-- Description:    CaptchaControl insertion
-- =============================================
CREATE PROCEDURE [dbo].[InsCaptchaControl]
    -- Add the parameters for the stored procedure here
    @GUID uniqueidentifier,
    @FormName varchar(128)
AS
BEGIN
    INSERT INTO CaptchaControl (GUID, FormName) VALUES
        (@GUID, @FormName);
END
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CaptchaControl_Sel]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:        Martin De Sa Granja
-- Create date: 20091703
-- Description:    CaptchaControl insertion
-- =============================================
CREATE PROCEDURE [dbo].[CaptchaControl_Sel]
    -- Add the parameters for the stored procedure here
    @GUID uniqueidentifier,
    @FormName varchar(128),
    @Count int output
AS
BEGIN
    SELECT @Count = Count(ID) FROM CaptchaControl
        WHERE
            CaptchaControl.GUID = @GUID AND
            CaptchaControl.FormName = @FormName
END
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CaptchaControl_Ins]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:        Martin De Sa Granja
-- Create date: 20091703
-- Description:    CaptchaControl insertion
-- =============================================
CREATE PROCEDURE [dbo].[CaptchaControl_Ins]
    -- Add the parameters for the stored procedure here
    @GUID uniqueidentifier,
    @FormName varchar(128)
AS
BEGIN
    INSERT INTO CaptchaControl (GUID, FormName, DateInsert) VALUES
        (@GUID, @FormName, getdate());
END
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CaptchaControl_Del]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:        Martin De Sa Granja
-- Create date: 20091703
-- Description:    CaptchaControl insertion
-- =============================================
CREATE PROCEDURE [dbo].[CaptchaControl_Del]
    -- Add the parameters for the stored procedure here
    @GUID uniqueidentifier,
    @FormName varchar(128)
AS
BEGIN
    DELETE CaptchaControl
        WHERE
            CaptchaControl.GUID = @GUID AND
            CaptchaControl.FormName = @FormName
END
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CaptchaControl_Cln]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:        Martin De Sa Granja
-- Create date: 20091703
-- Description:    CaptchaControl Cleaning
-- =============================================
CREATE PROCEDURE [dbo].[CaptchaControl_Cln]
    -- Add the parameters for the stored procedure here
    @GUID uniqueidentifier,
    @FormName varchar(128)
AS
BEGIN
    DELETE CaptchaControl
        WHERE
            CaptchaControl.DateInsert < dateadd (day, -2, getdate())
END
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblNovedadesTrabajadoresInsert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[tblNovedadesTrabajadoresInsert] (
	@DATEINS datetime,
	@COMPNIT varchar(100),
	@COMPSUBNIT varchar(100),
	@COMPNAME varchar(100),
	@EMPIDTYPE varchar(100),
	@EMPIDNUM varchar(100),
	@EMPBRANCH varchar(100),
	@EMPFIRSTSURNAME varchar(100),
	@EMPSECONDSURNAME varchar(100),
	@EMPFIRSTNAME varchar(100),
	@EMPSECONDNAME varchar(100),
	@EMPMARITALSTATE varchar(100),
	@EMPBIRTHDATE varchar(100),
	@EMPGENDER varchar(100),
	@EMPJOININGDATE varchar(100),
	@EMPPOSITION varchar(100),
	@EMPMONTHHOUR varchar(100),
	@EMPBASICSALARY varchar(100),
	@EMPSALECOMMISSION varchar(100),
	@EMPCITY varchar(100),
	@EMPADDRESS varchar(500),
	@EMPEMAIL varchar(100),
	@EMPPHONENUMB1 varchar(100),
	@EMPPHONENUMB2 varchar(100),
	@EMPOWNER varchar(100),
	@EMPAGRICULTUREW varchar(100),
	@EMPCOMPNIT varchar(100),
	@EMPCOMPSUBNIT varchar(100),
	@EMPCOMPNAME varchar(100),
	@EMPCOMPMONTHHOUR varchar(100),
	@EMPCOMPBASICSALARY varchar(100),
	@EMPCOMPSALECOMMISSION varchar(100),
	@PARTNERIDTYPE varchar(100),
	@PARTNERIDNUM varchar(100),
	@PARTNERLIVETOGETHER varchar(100),
	@PARTNERRELATIONSHIP varchar(100),
	@PARTNERFIRSTSURNAME varchar(100),
	@PARTNERSECONDSURNAME varchar(100),
	@PARTNERFIRSTNAME varchar(100),
	@PARTNERSECONDNAME varchar(100),
	@PARTNERBIRTHDATE varchar(100),
	@PARTNERADDRESS varchar(500),
	@PARTNERCITY varchar(100),
	@PARTNERPHONENUMB varchar(100),
	@PARTNEROCCUPATION varchar(100),
	@PARTNEROCCUPSUBSIDY varchar(100),
	@PARTNEROCCUPNIT varchar(100),
	@PARTNEROCCUPCOMPANYNAME varchar(100),
	@PARTNEROCCUPBASICSALARY varchar(100),
	@PARENTIDTYPE varchar(100),
	@PARENTIDNUM varchar(100),
	@PARENTLIVETOGETHER varchar(100),
	@PARENTFIRSTSURNAME varchar(100),
	@PARENTSECONDSURNAME varchar(100),
	@PARENTFIRSTNAME varchar(100),
	@PARENTSECONDNAME varchar(100),
	@PARENTBIRTHDATE varchar(100),
	@PARENTOCCUPATION varchar(100),
	@PARENTADDRESS varchar(500),
	@PARENTCITY varchar(100),
	@PARENTPHONENUMB varchar(100),
	@PARENTEMPLOYEESUBSIDY varchar(100),
	@PARENTEMPLOYEESONNAME varchar(100),
	@PARENTEMPLOYEENIT varchar(100),
	@PARENTEMPLOYEECOMPNAME varchar(100),
	@PARENTEMPLOYEEBASICSALARY varchar(100)
)

AS

SET NOCOUNT ON

INSERT INTO [tblNovedadesTrabajadores] (
	[DATEINS],
	[COMPNIT],
	[COMPSUBNIT],
	[COMPNAME],
	[EMPIDTYPE],
	[EMPIDNUM],
	[EMPBRANCH],
	[EMPFIRSTSURNAME],
	[EMPSECONDSURNAME],
	[EMPFIRSTNAME],
	[EMPSECONDNAME],
	[EMPMARITALSTATE],
	[EMPBIRTHDATE],
	[EMPGENDER],
	[EMPJOININGDATE],
	[EMPPOSITION],
	[EMPMONTHHOUR],
	[EMPBASICSALARY],
	[EMPSALECOMMISSION],
	[EMPCITY],
	[EMPADDRESS],
	[EMPEMAIL],
	[EMPPHONENUMB1],
	[EMPPHONENUMB2],
	[EMPOWNER],
	[EMPAGRICULTUREW],
	[EMPCOMPNIT],
	[EMPCOMPSUBNIT],
	[EMPCOMPNAME],
	[EMPCOMPMONTHHOUR],
	[EMPCOMPBASICSALARY],
	[EMPCOMPSALECOMMISSION],
	[PARTNERIDTYPE],
	[PARTNERIDNUM],
	[PARTNERLIVETOGETHER],
	[PARTNERRELATIONSHIP],
	[PARTNERFIRSTSURNAME],
	[PARTNERSECONDSURNAME],
	[PARTNERFIRSTNAME],
	[PARTNERSECONDNAME],
	[PARTNERBIRTHDATE],
	[PARTNERADDRESS],
	[PARTNERCITY],
	[PARTNERPHONENUMB],
	[PARTNEROCCUPATION],
	[PARTNEROCCUPSUBSIDY],
	[PARTNEROCCUPNIT],
	[PARTNEROCCUPCOMPANYNAME],
	[PARTNEROCCUPBASICSALARY],
	[PARENTIDTYPE],
	[PARENTIDNUM],
	[PARENTLIVETOGETHER],
	[PARENTFIRSTSURNAME],
	[PARENTSECONDSURNAME],
	[PARENTFIRSTNAME],
	[PARENTSECONDNAME],
	[PARENTBIRTHDATE],
	[PARENTOCCUPATION],
	[PARENTADDRESS],
	[PARENTCITY],
	[PARENTPHONENUMB],
	[PARENTEMPLOYEESUBSIDY],
	[PARENTEMPLOYEESONNAME],
	[PARENTEMPLOYEENIT],
	[PARENTEMPLOYEECOMPNAME],
	[PARENTEMPLOYEEBASICSALARY]
) VALUES (
	@DATEINS,
	@COMPNIT,
	@COMPSUBNIT,
	@COMPNAME,
	@EMPIDTYPE,
	@EMPIDNUM,
	@EMPBRANCH,
	@EMPFIRSTSURNAME,
	@EMPSECONDSURNAME,
	@EMPFIRSTNAME,
	@EMPSECONDNAME,
	@EMPMARITALSTATE,
	@EMPBIRTHDATE,
	@EMPGENDER,
	@EMPJOININGDATE,
	@EMPPOSITION,
	@EMPMONTHHOUR,
	@EMPBASICSALARY,
	@EMPSALECOMMISSION,
	@EMPCITY,
	@EMPADDRESS,
	@EMPEMAIL,
	@EMPPHONENUMB1,
	@EMPPHONENUMB2,
	@EMPOWNER,
	@EMPAGRICULTUREW,
	@EMPCOMPNIT,
	@EMPCOMPSUBNIT,
	@EMPCOMPNAME,
	@EMPCOMPMONTHHOUR,
	@EMPCOMPBASICSALARY,
	@EMPCOMPSALECOMMISSION,
	@PARTNERIDTYPE,
	@PARTNERIDNUM,
	@PARTNERLIVETOGETHER,
	@PARTNERRELATIONSHIP,
	@PARTNERFIRSTSURNAME,
	@PARTNERSECONDSURNAME,
	@PARTNERFIRSTNAME,
	@PARTNERSECONDNAME,
	@PARTNERBIRTHDATE,
	@PARTNERADDRESS,
	@PARTNERCITY,
	@PARTNERPHONENUMB,
	@PARTNEROCCUPATION,
	@PARTNEROCCUPSUBSIDY,
	@PARTNEROCCUPNIT,
	@PARTNEROCCUPCOMPANYNAME,
	@PARTNEROCCUPBASICSALARY,
	@PARENTIDTYPE,
	@PARENTIDNUM,
	@PARENTLIVETOGETHER,
	@PARENTFIRSTSURNAME,
	@PARENTSECONDSURNAME,
	@PARENTFIRSTNAME,
	@PARENTSECONDNAME,
	@PARENTBIRTHDATE,
	@PARENTOCCUPATION,
	@PARENTADDRESS,
	@PARENTCITY,
	@PARENTPHONENUMB,
	@PARENTEMPLOYEESUBSIDY,
	@PARENTEMPLOYEESONNAME,
	@PARENTEMPLOYEENIT,
	@PARENTEMPLOYEECOMPNAME,
	@PARENTEMPLOYEEBASICSALARY
)
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspFormNovedades_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[uspFormNovedades_Insert]
(
        @compNit VARCHAR(100),
        @compSubNit VARCHAR(50),
        @compName VARCHAR(50),
        @empIdType VARCHAR(100),
        @empIdNum VARCHAR(100),	
        @empBranch VARCHAR(100),
        @empFirstSurname VARCHAR(100),
        @empSecondSurname VARCHAR(100),
        @empFirstName VARCHAR(100),
        @empSecondName VARCHAR(100),
        @empMaritalState VARCHAR(100),
        @empBirthDate VARCHAR(100),
        @empGender VARCHAR(100),
        @empJoiningDate VARCHAR(100),
        @empPosition VARCHAR(100),
        @empMonthHour VARCHAR(100),
        @empBasicSalary VARCHAR(100),
        @empSaleCommission VARCHAR(100),
        @empCity VARCHAR(100),
        @empAddressCombo1 VARCHAR(50),
		@empAddressCombo2 VARCHAR(25),
		@empAddressCombo3 VARCHAR(50),
		@empAddressCombo4 VARCHAR(25),
		@empAddressCombo5 VARCHAR(50),
		@empAddressCombo6 VARCHAR(50),
        @empAddressTxt1 VARCHAR(50),
        @empAddressTxt2 VARCHAR(50),
        @empAddressTxt3 VARCHAR(50),
        @empAddressTxt4 VARCHAR(50),
        @empAddressTxt5 VARCHAR(50),
        @empEMail VARCHAR(100),
        @empPhoneNumb1 VARCHAR(100),
        @empPhoneNumb2 VARCHAR(100),
        @empOwner VARCHAR(100),
        @empAgricultureW VARCHAR(100),
        @empOtherCompanyChk VARCHAR(100),
		@empCompNit VARCHAR(100),
        @empCompSubNit VARCHAR(100),
        @empCompName VARCHAR(100),
        @empCompMonthHour VARCHAR(100),
        @empCompBasicSalary VARCHAR(100),
        @empCompSaleCommission VARCHAR(100),
        
		@partnerInput VARCHAR(100),
		@partnerIdType VARCHAR(100),
        @partnerIdNum VARCHAR(100),
        @partnerLiveTogether VARCHAR(100),
        @partnerRelationship VARCHAR(100),
        @partnerFirstSurname VARCHAR(100),
        @partnerSecondSurname VARCHAR(100),
        @partnerFirstName VARCHAR(100),
        @partnerSecondName VARCHAR(100),
        @partnerBirthDate VARCHAR(100),
        @partnerAddressCombo1 VARCHAR(50),
        @partnerAddressCombo2 VARCHAR(25),
        @partnerAddressCombo3 VARCHAR(50),
        @partnerAddressCombo4 VARCHAR(25),
        @partnerAddressCombo5 VARCHAR(50),
        @partnerAddressCombo6 VARCHAR(50),
        @partnerAddressTxt1 VARCHAR(50),
        @partnerAddressTxt2 VARCHAR(50),
        @partnerAddressTxt3 VARCHAR(50),
        @partnerAddressTxt4 VARCHAR(50),
        @partnerAddressTxt5 VARCHAR(50),
        @partnerCity VARCHAR(100),
        @partnerPhoneNumb VARCHAR(100),
        @partnerOccupation VARCHAR(100),
        @partnerOccupSubsidy VARCHAR(100),
        @partnerOccupNit VARCHAR(100),
        @partnerOccupCompName VARCHAR(100),
        @partnerOccupBasicSalary VARCHAR(100),
		
		@parentInput VARCHAR (100),
        @parentIdType VARCHAR(100),
        @parentIdNum VARCHAR(100),
        @parentLiveTogether VARCHAR(100),
        @parentFirstSurname VARCHAR(100),
        @parentSecondSurname VARCHAR(100),
        @parentFirstName VARCHAR(100),
        @parentSecondName VARCHAR(100),
        @parentBirthDate VARCHAR(100),
        @parentOccupation VARCHAR(100),
        @parentAddressCombo1 VARCHAR(50),
        @parentAddressCombo2 VARCHAR(25),
        @parentAddressCombo3 VARCHAR(50),
        @parentAddressCombo4 VARCHAR(25),
        @parentAddressCombo5 VARCHAR(50),
        @parentAddressCombo6 VARCHAR(50),
        @parentAddressTxt1 VARCHAR(50),
        @parentAddressTxt2 VARCHAR(50),
        @parentAddressTxt3 VARCHAR(50),
        @parentAddressTxt4 VARCHAR(50),
        @parentAddressTxt5 VARCHAR(50),
        @parentCity VARCHAR(100),
        @parentPhoneNumb VARCHAR(100),
		@parentEmployeeSubsidy VARCHAR(100),
        @parentEmployeeSonName VARCHAR(100),
        @parentEmployeeNit VARCHAR(100),
        @parentEmployeeCompName VARCHAR(100),
        @parentEmplooyeeBasicSalary VARCHAR(100),
        @Id int OUTPUT
)
AS
BEGIN
        DECLARE @empAddress AS VARCHAR(500)
			 IF(@empAddressCombo1 IS NOT NULL)
			 BEGIN
			  SET @empAddress = @empAddressCombo1 + '' ''
			 END
			 
			 IF(@empAddressTxt1 IS NOT NULL)
			 BEGIN
			  SET @empAddress = ISNULL(@empAddress, '''') + @empAddressTxt1 + '' ''
			 END

			 IF(@empAddressCombo2 IS NOT NULL)
			 BEGIN
			  SET @empAddress = ISNULL(@empAddress, '''') + @empAddressCombo2 + '' ''
			 END
			 
			 IF(@empAddressCombo3 IS NOT NULL)
			 BEGIN
			  SET @empAddress = ISNULL(@empAddress, '''') + @empAddressCombo3 + '' ''
			 END

			 IF(@empAddressTxt2 IS NOT NULL)
			 BEGIN
			  SET @empAddress = ISNULL(@empAddress, '''') + @empAddressTxt2 + '' ''
			 END

			 IF(@empAddressCombo4 IS NOT NULL)
			 BEGIN
			  SET @empAddress = ISNULL(@empAddress, '''') + @empAddressCombo4 + '' ''
			 END

			 IF(@empAddressTxt3 IS NOT NULL)
			 BEGIN
			  SET @empAddress = ISNULL(@empAddress, '''') + @empAddressTxt3 + '' ''
			 END

			 IF(@empAddressCombo5 IS NOT NULL)
			 BEGIN
			  SET @empAddress = ISNULL(@empAddress, '''') + @empAddressCombo5 + '' ''
			 END

			 IF(@empAddressTxt4 IS NOT NULL)
			 BEGIN
			  SET @empAddress = ISNULL(@empAddress, '''') + @empAddressTxt4 + '' ''
			 END

			 IF(@empAddressCombo6 IS NOT NULL)
			 BEGIN
			  SET @empAddress = ISNULL(@empAddress, '''') + @empAddressCombo6 + '' ''
			 END

			 IF(@empAddressTxt5 IS NOT NULL)
			 BEGIN
			  SET @empAddress = ISNULL(@empAddress, '''') + @empAddressTxt5
			 END
					       
		DECLARE @partnerAddress AS VARCHAR(500)
			 IF(@partnerAddressCombo1 IS NOT NULL)
			 BEGIN
			  SET @partnerAddress = @partnerAddressCombo1 + '' ''
			 END
			 
			 IF(@partnerAddressTxt1 IS NOT NULL)
			 BEGIN
			  SET @partnerAddress = ISNULL(@partnerAddress, '''') + @partnerAddressTxt1 + '' ''
			 END

			 IF(@partnerAddressCombo2 IS NOT NULL)
			 BEGIN
			  SET @partnerAddress = ISNULL(@partnerAddress, '''') + @partnerAddressCombo2 + '' ''
			 END
			 
			 IF(@partnerAddressCombo3 IS NOT NULL)
			 BEGIN
			  SET @partnerAddress = ISNULL(@partnerAddress, '''') + @partnerAddressCombo3 + '' ''
			 END

			 IF(@partnerAddressTxt2 IS NOT NULL)
			 BEGIN
			  SET @partnerAddress = ISNULL(@partnerAddress, '''') + @partnerAddressTxt2 + '' ''
			 END

			 IF(@partnerAddressCombo4 IS NOT NULL)
			 BEGIN
			  SET @partnerAddress = ISNULL(@partnerAddress, '''') + @partnerAddressCombo4 + '' ''
			 END

			 IF(@partnerAddressTxt3 IS NOT NULL)
			 BEGIN
			  SET @partnerAddress = ISNULL(@partnerAddress, '''') + @partnerAddressTxt3 + '' ''
			 END

			 IF(@partnerAddressCombo5 IS NOT NULL)
			 BEGIN
			  SET @partnerAddress = ISNULL(@partnerAddress, '''') + @partnerAddressCombo5 + '' ''
			 END

			 IF(@partnerAddressTxt4 IS NOT NULL)
			 BEGIN
			  SET @partnerAddress = ISNULL(@partnerAddress, '''') + @partnerAddressTxt4 + '' ''
			 END

			 IF(@partnerAddressCombo6 IS NOT NULL)
			 BEGIN
			  SET @partnerAddress = ISNULL(@partnerAddress, '''') + @partnerAddressCombo6 + '' ''
			 END

			 IF(@partnerAddressTxt5 IS NOT NULL)
			 BEGIN
			  SET @partnerAddress = ISNULL(@partnerAddress, '''') + @partnerAddressTxt5
			 END

		 DECLARE @parentAddress AS VARCHAR(500)

			 IF(@parentAddressCombo1 IS NOT NULL)
			 BEGIN
			  SET @parentAddress = @parentAddressCombo1 + '' ''
			 END
			 
			 IF(@parentAddressTxt1 IS NOT NULL)
			 BEGIN
			  SET @parentAddress = ISNULL(@parentAddress, '''') + @parentAddressTxt1 + '' ''
			 END

			 IF(@parentAddressCombo2 IS NOT NULL)
			 BEGIN
			  SET @parentAddress = ISNULL(@parentAddress, '''') + @parentAddressCombo2 + '' ''
			 END
			 
			 IF(@parentAddressCombo3 IS NOT NULL)
			 BEGIN
			  SET @parentAddress = ISNULL(@parentAddress, '''') + @parentAddressCombo3 + '' ''
			 END

			 IF(@parentAddressTxt2 IS NOT NULL)
			 BEGIN
			  SET @parentAddress = ISNULL(@parentAddress, '''') + @parentAddressTxt2 + '' ''
			 END

			 IF(@parentAddressCombo4 IS NOT NULL)
			 BEGIN
			  SET @parentAddress = ISNULL(@parentAddress, '''') + @parentAddressCombo4 + '' ''
			 END

			 IF(@parentAddressTxt3 IS NOT NULL)
			 BEGIN
			  SET @parentAddress = ISNULL(@parentAddress, '''') + @parentAddressTxt3 + '' ''
			 END

			 IF(@parentAddressCombo5 IS NOT NULL)
			 BEGIN
			  SET @parentAddress = ISNULL(@parentAddress, '''') + @parentAddressCombo5 + '' ''
			 END

			 IF(@parentAddressTxt4 IS NOT NULL)
			 BEGIN
			  SET @parentAddress = ISNULL(@parentAddress, '''') + @parentAddressTxt4 + '' ''
			 END

			 IF(@parentAddressCombo6 IS NOT NULL)
			 BEGIN
			  SET @parentAddress = ISNULL(@parentAddress, '''') + @parentAddressCombo6 + '' ''
			 END

			 IF(@parentAddressTxt5 IS NOT NULL)
			 BEGIN
			  SET @parentAddress = ISNULL(@parentAddress, '''') + @parentAddressTxt5
			 END

		IF (@empOtherCompanyChk IS NULL)
			BEGIN
				SET @empCompNit = NULL
				SET	@empCompSubNit = NULL
				SET	@empCompName = NULL
				SET	@empCompMonthHour = NULL
				SET	@empCompBasicSalary = NULL
				SET	@empCompSaleCommission = NULL
			END


		IF(@partnerInput IS NULL)
			BEGIN
				SET @partnerInput = NULL
				SET	@partnerIdType = NULL
				SET	@partnerIdNum  = NULL
				SET	@partnerLiveTogether = NULL
				SET	@partnerRelationship = NULL
				SET	@partnerFirstSurname = NULL
				SET	@partnerSecondSurname = NULL
				SET	@partnerFirstName = NULL
				SET	@partnerSecondName = NULL
				SET	@partnerBirthDate = NULL
				SET	@partnerAddress = NULL
				SET	@partnerCity = NULL
				SET	@partnerPhoneNumb = NULL
				SET	@partnerOccupation = NULL
				SET	@partnerOccupSubsidy = NULL
				SET	@partnerOccupNit = NULL
				SET	@partnerOccupCompName = NULL
				SET	@partnerOccupBasicSalary = NULL
			END
		
		IF(@partnerOccupation<>''Empleado'')
			BEGIN
				SET	@partnerOccupSubsidy = NULL
				SET	@partnerOccupNit = NULL
				SET	@partnerOccupCompName = NULL
				SET	@partnerOccupBasicSalary = NULL
			END
		
		IF(@parentInput IS NULL)
			BEGIN
				SET @parentIdType = NULL
				SET	@parentIdNum = NULL
				SET	@parentLiveTogether = NULL
				SET	@parentFirstSurname = NULL
				SET	@parentSecondSurname = NULL
				SET	@parentFirstName = NULL
				SET	@parentSecondName = NULL
				SET	@parentBirthDate = NULL
				SET	@parentOccupation = NULL
				SET	@parentAddress = NULL
				SET	@parentCity = NULL
				SET	@parentPhoneNumb = NULL
				SET @parentEmployeeSubsidy = NULL
				SET	@parentEmployeeSonName = NULL
				SET	@parentEmployeeNit = NULL
				SET	@parentEmployeeCompName = NULL
				SET	@parentEmplooyeeBasicSalary = NULL
			END
	
		IF(@parentOccupation <> ''Empleado'')
			BEGIN
				SET @parentEmployeeSubsidy = NULL
				SET	@parentEmployeeSonName = NULL
				SET	@parentEmployeeNit = NULL
				SET	@parentEmployeeCompName = NULL
				SET	@parentEmplooyeeBasicSalary = NULL
			END


		INSERT INTO dbo.tblNovedadesTrabajadores
                (    dateIns
					, compNit
					, compSubNit
					, compName
					, empIdType
					, empIdNum
					, empBranch
					, empFirstSurname
					, empSecondSurname
					, empFirstName
					, empSecondName
					, empMaritalState
					, empBirthDate
					, empGender
					, empJoiningDate
					, empPosition
					, empMonthHour
					, empBasicSalary
					, empSaleCommission
					, empCity
					, empAddress
					, empEMail
					, empPhoneNumb1
					, empPhoneNumb2
					, empOwner
					, empAgricultureW
					, empCompNit
					, empCompSubNit
					, empCompName
					, empCompMonthHour
					, empCompBasicSalary
					, empCompSaleCommission
					, partnerIdType
					, partnerIdNum
					, partnerLiveTogether
					, partnerRelationship
					, partnerFirstSurname
					, partnerSecondSurname
					, partnerFirstName
					, partnerSecondName
					, partnerBirthDate
					, partnerAddress
					, partnerCity
					, partnerPhoneNumb
					, partnerOccupation
					, partnerOccupSubsidy
					, partnerOccupNit
					, partnerOccupCompanyName
					, partnerOccupBasicSalary
					, parentIdType
					, parentIdNum
					, parentLiveTogether
					, parentFirstSurname
					, parentSecondSurname
					, parentFirstName
					, parentSecondName
					, parentBirthDate
					, parentOccupation
					, parentAddress
					, parentCity
					, parentPhoneNumb
					, parentEmployeeSubsidy
					, parentEmployeeSonName
					, parentEmployeeNit
					, parentEmployeeCompName
					, parentEmployeeBasicSalary
				)
        VALUES
                (	GetDate()
					, @compNit
					, @compSubNit
					, @compName
					, @empIdType
					, @empIdNum
					, @empBranch
					, @empFirstSurname
					, @empSecondSurname
					, @empFirstName
					, @empSecondName
					, @empMaritalState
					, @empBirthDate
					, @empGender
					, @empJoiningDate
					, @empPosition
					, @empMonthHour
					, @empBasicSalary
					, @empSaleCommission
					, @empCity
					, @empAddress
					, @empEMail
					, @empPhoneNumb1
					, @empPhoneNumb2
					, @empOwner
					, @empAgricultureW
					, @empCompNit
					, @empCompSubNit
					, @empCompName
					, @empCompMonthHour
					, @empCompBasicSalary
					, @empCompSaleCommission
					, @partnerIdType
					, @partnerIdNum
					, @partnerLiveTogether
					, @partnerRelationship
					, @partnerFirstSurname
					, @partnerSecondSurname
					, @partnerFirstName
					, @partnerSecondName
					, @partnerBirthDate
					, @partnerAddress
					, @partnerCity
					, @partnerPhoneNumb
					, @partnerOccupation
					, @partnerOccupSubsidy
					, @partnerOccupNit
					, @partnerOccupCompName
					, @partnerOccupBasicSalary
					, @parentIdType
					, @parentIdNum
					, @parentLiveTogether
					, @parentFirstSurname
					, @parentSecondSurname
					, @parentFirstName
					, @parentSecondName
					, @parentBirthDate
					, @parentOccupation
					, @parentAddress
					, @parentCity
					, @parentPhoneNumb
					, @parentEmployeeSubsidy
					, @parentEmployeeSonName
					, @parentEmployeeNit
					, @parentEmployeeCompName
					, @parentEmplooyeeBasicSalary
				)

        SET @Id = @@IDENTITY

        RETURN @Id
END
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspFormNovedadesDetalle_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[uspFormNovedadesDetalle_Insert]
(
        @ID_NOVEDAD int,
		@dependInput VARCHAR(100),
        @dependIdType VARCHAR(100)= NULL,
        @dependIdNum VARCHAR(100)= NULL,
        @dependParentIdType VARCHAR(100)= NULL,
        @dependParentIdNum VARCHAR(100)= NULL,
        @dependParentGender VARCHAR(100)= NULL,
        @dependBirthDate VARCHAR(100)= NULL,
        @dependFirstSurename VARCHAR(100)= NULL,
        @dependSecondSurename VARCHAR(100)= NULL,
        @dependFirstName VARCHAR(100)= NULL,
        @dependSecondName VARCHAR(100)= NULL,
        @dependKindship VARCHAR(100)= NULL,
        @dependHandicapp VARCHAR(100)= NULL
)
AS
BEGIN
        IF(@dependInput IS NULL)
			BEGIN
				SET	@dependIdType = NULL
				SET	@dependIdNum = NULL
				SET	@dependParentIdType = NULL
				SET	@dependParentIdNum = NULL
				SET	@dependParentGender = NULL
				SET	@dependBirthDate = NULL
				SET	@dependFirstSurename = NULL
				SET	@dependSecondSurename = NULL
				SET	@dependFirstName = NULL
				SET	@dependSecondName = NULL
				SET	@dependKindship = NULL
				SET	@dependHandicapp = NULL
			END

        INSERT INTO dbo.tblNovedadesDetalle
                (	ID_Novedad
					, dependIdType
					, dependIdNum
					, dependParentIdType
					, dependParentIdNum
					, dependParentGender
					, dependBirthDate
					, dependFirstSurename
					, dependSecondSurename
					, dependFirstName
					, dependSecondName
					, dependKindship
					, dependHandicapp
				)
        VALUES
                (	@ID_NOVEDAD
					, @dependIdType
					, @dependIdNum
					, @dependParentIdType
					, @dependParentIdNum
					, @dependParentGender
					, @dependBirthDate
					, @dependFirstSurename
					, @dependSecondSurename
					, @dependFirstName
					, @dependSecondName
					, @dependKindship
					, @dependHandicapp
				)
END
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblNovedadesDetalleInsert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[tblNovedadesDetalleInsert] (
	@ID_Novedad int,
	@DEPENDIDTYPE varchar(100),
	@DEPENDIDNUM varchar(100),
	@DEPENDPARENTIDTYPE varchar(100),
	@DEPENDPARENTIDNUM varchar(100),
	@DEPENDPARENTGENDER varchar(100),
	@DEPENDBIRTHDATE datetime,
	@DEPENDFIRSTSURENAME varchar(100),
	@DEPENDSECONDSURENAME varchar(100),
	@DEPENDFIRSTNAME varchar(100),
	@DEPENDSECONDNAME varchar(100),
	@DEPENDKINDSHIP varchar(100),
	@DEPENDHANDICAPP varchar(100)
)

AS

SET NOCOUNT ON

INSERT INTO [tblNovedadesDetalle] (
	[ID_Novedad],
	[DEPENDIDTYPE],
	[DEPENDIDNUM],
	[DEPENDPARENTIDTYPE],
	[DEPENDPARENTIDNUM],
	[DEPENDPARENTGENDER],
	[DEPENDBIRTHDATE],
	[DEPENDFIRSTSURENAME],
	[DEPENDSECONDSURENAME],
	[DEPENDFIRSTNAME],
	[DEPENDSECONDNAME],
	[DEPENDKINDSHIP],
	[DEPENDHANDICAPP]
) VALUES (
	@ID_Novedad,
	@DEPENDIDTYPE,
	@DEPENDIDNUM,
	@DEPENDPARENTIDTYPE,
	@DEPENDPARENTIDNUM,
	@DEPENDPARENTGENDER,
	@DEPENDBIRTHDATE,
	@DEPENDFIRSTSURENAME,
	@DEPENDSECONDSURENAME,
	@DEPENDFIRSTNAME,
	@DEPENDSECONDNAME,
	@DEPENDKINDSHIP,
	@DEPENDHANDICAPP
)

SET NOCOUNT OFF

select cast ( @@identity as int )
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspFormSuspensionTrabajadoresDetalle_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[uspFormSuspensionTrabajadoresDetalle_Insert]
(
        @IDSusp int,
        @IdType VARCHAR(100),
        @IdNumber VARCHAR(100),
        @FirstName VARCHAR(100),
        @SecondName VARCHAR(100) = null,
        @FirstSurname VARCHAR(100),
        @SecondSurname VARCHAR(100) = null,
        @SuspentionStart VARCHAR(100),
        @SuspentionStop VARCHAR(100)
)
AS
BEGIN
        DECLARE @AddressOther AS VARCHAR(500)
        INSERT INTO dbo.tblFormSuspensionTrabajadoresDetalle
                ( IDSusp
                , IdType
                , IdNumber
                , FirstName
                , SecondName
                , FirstSurname
                , SecondSurname
                , SuspentionStart
                , SuspentionStop)
        VALUES
                ( @IDSusp
                , @IdType
                , @IdNumber
                , @FirstName
                , @SecondName
                , @FirstSurname
                , @SecondSurname
                , @SuspentionStart
                , @SuspentionStop)
END
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspFormSuspensionTrabajadores_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:                Martin De Sa Granja
-- Create date: 03/27/09
-- Description:        Insert Worker Suspention
-- =============================================
CREATE PROCEDURE [dbo].[uspFormSuspensionTrabajadores_Insert]
(
        @CurrentUser VARCHAR(100),
        @NIT VARCHAR(50),
        @SUBNIT VARCHAR(50),
        @RAZONSOCIAL VARCHAR(100),
        @Id int OUTPUT
)
AS
BEGIN
        DECLARE @AddressOther AS VARCHAR(500)
        INSERT INTO dbo.tblFormSuspensionTrabajadores
                ( CurrentUser, DateIns, NIT, SUBNIT, RAZONSOCIAL)
        VALUES
                ( @CurrentUser, GetDate(), @NIT, @SUBNIT, @RAZONSOCIAL)

        SET @Id = @@IDENTITY

        RETURN
END
/*----------------------------------------------------------------------------*/
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspFormSubsidioViviendaDetalle_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[uspFormSubsidioViviendaDetalle_Insert]

       (
		@IDSubsidio int
		,@MHApellidos varchar (100)
       ,@MHNombres varchar (100)
       ,@MHFechaDeNacimiento varchar (100)
       ,@MHTipoDeDocumento varchar (100)
       ,@MHNumeroDeDocumento varchar (100)
       ,@MHParentesco varchar (100)
       ,@MHCondicionEspecial varchar (100)
       ,@MHTipoDePostulante varchar (100)
       ,@MHEstadoCivil varchar (100)
       ,@MHSexo varchar (100)
       ,@MHOcupacion varchar (100)
       ,@MHIngresosMensualesPesos varchar (100))
AS
BEGIN
	INSERT INTO [CAFAM_DB].[dbo].[tblFormSubsidioViviendaDetalle]
           (IDSubsidio,
[MHApellidos]
           ,[MHNombres]
           ,[MHFechaDeNacimiento]
           ,[MHTipoDeDocumento]
           ,[MHNumeroDeDocumento]
           ,[MHParentesco]
           ,[MHCondicionEspecial]
           ,[MHTipoDePostulante]
           ,[MHEstadoCivil]
           ,[MHSexo]
           ,[MHOcupacion]
           ,[MHIngresosMensualesPesos])
     VALUES
           (@IDSubsidio,@MHApellidos
           ,@MHNombres
           ,@MHFechaDeNacimiento
           ,@MHTipoDeDocumento
           ,@MHNumeroDeDocumento
           ,@MHParentesco
           ,@MHCondicionEspecial
           ,@MHTipoDePostulante
           ,@MHEstadoCivil
           ,@MHSexo
           ,@MHOcupacion
           ,@MHIngresosMensualesPesos)
END
' 
END
