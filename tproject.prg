// Programa   : TPROJECT
// Fecha/Hora : 29/08/2020 03:02:28
// Propósito  : Utilización de la Clase TPROJECT():New(), necesaria para Crear Presupuestador de Servicios
// Codigo fuente de la clase TPROJECT https://github.com/AdaptaProERP/kernel_source/blob/main/TPROJECT.prg
// Creado Por : Juan Navas
// Llamado por: METHOD OnError(
// Aplicación :
// Tabla      :

#INCLUDE "DPXBASE.CH"

PROCE MAIN(cNombre)
   LOCAL oPry,oAct,oTar

   DEFAULT cNombre:="TEST"

   // Proyectos
   oPry:=TProject():New("PROJECT")
   oPry:Inspect()

   // Actividades
   oAct:=TACTIVIDAD():New("ACTIVIDAD",oPry)
   oAct:Inspect()

   oTar:=TTAREA():New("TAREA",oAct)
   oTar:Inspect()

   oPry:End()
   oAct:End()
   oTar:End()

RETURN oPry
// EOF

