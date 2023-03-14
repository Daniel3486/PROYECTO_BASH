Proyecto del primer parcial Como proyecto del primer parcial vamos a realizar una aplicación que nos ayude a aprender acerca de las diferentes metodologías de desarrollo ágil de software.

1. Programe en bash una aplicación que requiera un parámetro al ejecutarse -a (metodologías ágiles) y -t (metodologías tradicionales ) desplegará el siguiente menú en la terminal: 
    *Opción -a Bienvenido a la guía rápida de Agile, para continuar seleccione un tema:

    SCRUM
    X.P. 
    Kanban 
    Crystal

    *Opción -t Bienvenido a la guía rápida de metodologías tradicionales, para continuar seleccione un tema:

    Cascada 
    Espiral 
    Modelo V

2. Una vez seleccionado un tema en especifico deberá de mostrar las siguientes opciones:

    Usted esta en la sección ${nombre de la sección}, seleccione la opción que desea utilizar.

    Agregar información Buscar Eliminar información Leer base de información.

3. La idea de este sub menú es almacenar información en archivos con extensión .inf (uno por cada metodología) el cual tendrá la siguiente estructura:

    [concepto(1)] .- Definición.

    [concepto(2)] .- Definición.

    [concepto(3)] .- Definición.

    .

    .

    .

    [concepto(n)] .- Definición.

    Ejemplo:

    [sprint] .- Es el nombre que va a recibir cada uno de los ciclos o iteraciones que vamos a tener dentro de dentro de un proyecto

    [burndown chart] .- es una representación gráfica del trabajo por hacer en un proyecto en el tiempo.

    [product owner] .- -El P.O. se asegura de que el equipo Scrum trabaje de forma adecuada desde la perspectiva del negocio.

4. Al agregar información se debe solicitar el identificador del concepto y la definición al guardarlo se debe de formatear y anexar al final del archivo.

5. Al ejecutar la opción buscar deberá solicitar el elemento a buscar dentro del archivo (se debe ubicar el identificador utilizando expresiones regulares).

6. Al eliminar información debe solicitarnos el concepto y quitarlo del archivo.

7. Al seleccionar leer la base de información nos debe de imprimir en pantalla el contenido del archivo.

8. Al terminar la ejecución de un comando debe pedirnos una siguiente opción, volver al menú anterior o terminar la ejecución.

9. Empaquete en una imagen de docker su aplicación bash, deberá al ejecutarse un contenedor lanzar inmediatamente su aplicación.

10. Suba a GitHub, gitlab y bitbucket su proyecto, el repositorio deberá contener un archivo readme.md con la plantilla de proyectos vista en la tarea de clase y deberá contener los nombres de cada integrante del equipo, adicionalmente suba la imagen a dockerhub.

##Integrantes 
-Daniel Josue Lozano Porras (348603) 
-Zaid Joel González Mendoza (353254) 
-Axel Ricardo Moncloa Muro (348752)

##Links 
[GITHUB](https://github.com/Daniel3486/PROYECTO_BASH)
[GITLAB](https://gitlab.com/a2912606/proyecto_bash)
[BITBUCKET](https://bitbucket.org/prueba14/proyecto_bash/src/master/)
