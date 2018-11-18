# LAB_ARQUITECTURA
--------------------------------------------------------------
Por:
Camila López -
David Hernández -
Andres Salazar 
--------------------------------------------------------------


Descripcion de los archivos .vhd en la carpeta del laboratorio

Alarma.vhd:
En este programa la alarma solo se enciende si la entrada D y alguna otra entrada estan encendidas, caso contrario la alarma no sonara.

Compare.vhd
En este programa se compararan dos entradas y segun la condicion (<) se asignara un valor a la condicion y se hara la respectiva suma de las mismas. 

Decoder.vhd
En este programa se declaran un par de entradas a y b y la salida del decodificador sera todas las posibles combinaciones de estas dos entradas, al ser 2 entradas, el decodificador tendra (2)^2 salidas con a y b, a y ¬b, ¬a y b y ¬a y ¬b
process(Reset)

ElemFormSM.vhd
En este programa la entidad tendra 2 entradas y una salida. La salida sera sensible al clock y al reset, ya que si reset esta en 1 la salida Q sera "00" y si en el clock hay un flanco de subida, la salida sera Q+1

Cannonical_Boolean_Function.vhd
En este programa se muestra la manera en que se escribe cualquier funcion booleana en Forma Canonica. 

GenParidad.vhd
En este programa la entidad toma como entrada 2 vectores de 8 bits y retorna como resultado un valor unico, en la arquitectura se define una señal de tipo vector que es definido como paridad, su primer valor le es asignado por la operacion xor entre el valor en pos(0) de a y de b, las posiciones 1-7 son calculados por un operador logico xor entre 3 datos tipo vector que serian paridad, a y b. Todos definidos posicionalmente para asignar su valor a paridad. finalmente el ultimo valor del vector es asignado a a la salida result.

Latches.vhd
En este programa se describe el funcionamiento de un latch en el cual se es sencible a 2 entradas que en este caso seria el Temp y el reset y recibe un vector tipo S con los datos y una salida tipo Q que sera la salida del vector. primero como prioridad se dice que si reset es 1 la salida necesariamente del latch Q debe ser "0000" y ¬Q sera necesariamente "1111", a su vez se evalua Temp, si temp es 1 y Reset es 0 el latch arrojara necesariamente el vector S caso contrario arrojara "0000" y si ambos son 1 habra una inconsistencia y no arrojara valores fiables.

LatchesCodAlterno.vhd
En este codigo alternativo al anterior, aqui se declaran 3 entradas y 2 salidas, todas de tipo std_logic, despues sobre la arquitectura que es como la de un flip flop se declaran 2 vectores de 4 bits cada 1 y un dato de tipo std_logic, alli se inicializaran las entradas Q como operacion logica entre Q y nor R, notQ como operacion logica entre S y nor Q y despues OutV como un vector "0000", todo esto su reset esta en 0, alli finaliza la arquitectura, si eso no se cumple el process se ejecuta iniciando asi las asignaciones a todos los valores declarados tanto en la arquitectura como en la entidad, dando a comprender por medio de sus asingnaciones los latch tipo nor.

LogComp.vhd
En este programa se decalara una compuerta logica con 2 entradas 4 salidas, y sus salidas seran asignadas despues de hacerse la operacion logica tipo de tipo or, not, xor y and a sus respectivas salidas zor, znot, zxor y zand 

Multiplexers.vhd
En este programa el multiplexor estara dado por 3 entradas y una salida, en la cual la salida es asignada por la operacion logica entre las entradas de la siguiente manera, D0 and not S or D1 and S

Semaforo.vhd
En este programa se diseñan dos vias donde cada uno consta de un semaforo. Una de las carreteras es considerada principal ya que su semaforo siempre estara en verde si y solo si el sensor de la carretera alterna no detecte un vehiculo. Al momento de detectar un vehiculo el semaforo de la carretera principal se pondra en rojo por un limite de tiempo y se dara paso al vehiculo que se encuentre en la via alterna poniendo su semaforo en verde.
