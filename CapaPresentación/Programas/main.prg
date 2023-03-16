*----------------------------------------------------------------------------------------------------------------------------------------------------------
* Programa   : MAIN.PRG
* Programador: Walter R. Ojeda Valiente
* Fecha      : 07/MAR/2023
* Tarea      : EJEMPLOS DEL USO DE GIT Y GITHUB PARA ARTÍCULOS EN EL BLOG VFPAVANZADO
*----------------------------------------------------------------------------------------------------------------------------------------------------------
  
  CLOSE ALL
  CLEAR ALL
  
  SET CENTURY ON
  SET DATE    DMY
  SET SAFETY  OFF
  SET TALK    OFF
  
  SET PATH TO ..\..\CAPADATOS, ..\..\CAPANEGOCIOS, ..\CLASESVISUALES, ..\GRÁFICOS, ..\INFORMES, ..\PANTALLAS, ..\PROGRAMAS
  
  DO FORM MAIN
  
  READ EVENTS
  
  DO CAP_FINALIZAR
  
RETURN 
*
*
PROCEDURE CAP_FINALIZAR
  
  CLOSE ALL
  CLEAR ALL
  
ENDPROC
*
*
PROCEDURE CAP_INICIALIZAR

ENDPROC
*
*
