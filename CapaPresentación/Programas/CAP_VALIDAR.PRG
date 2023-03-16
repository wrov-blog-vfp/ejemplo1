*---------------------------------------------------------------------------------------------------------------------------------
* Nombre del programa: CAP_VALIDAR.PRG
* Tarea realizada    : Realiza validaciones que no necesitan acceso a la Base de Datos
*---------------------------------------------------------------------------------------------------------------------------------

PROCEDURE CAP_VALIDAR_FECHA
LPARAMETERS toForm, tuNombreCampo, tdFecha, tnNumLinea, tcMensajeError
LOCAL lcPrograma
  
  lcPrograma = toForm.cPrograma     && El nombre del programa que llamó a esta rutina de validación
  
  DO CASE
    CASE lcPrograma == "ABM_ASISTENCIAS"
      toForm.lblNombreDia.Caption = CAP_DIA_DE_LA_SEMANA(tdFecha)
    CASE lcPrograma == "ABM_FERIADOS"
      tcMensajeError = IIF(YEAR(tdFecha) < 2022            , "El año no puede ser anterior a 2022"   , tcMensajeError)
      tcMensajeError = IIF(YEAR(tdFecha) > YEAR(DATE()) + 1, "La fecha no puede estar tan adelantada", tcMensajeError)
  ENDCASE
  
ENDPROC
*
*
