# Perfiles de longitud y área de una muestra granular
Tarea 3 - curso de Técnicas de Caracterización\

#Descripción

En este repositorio se encuentra los datos tomados por el programa ImageJ y los respectivos códigos usados para su análisis.\

#Archivos

Los archivos .dat corresponden a los datos medidos:

1. lenght.dat contiene los 24 valores tomados para la longitud de los granos, por el primer método (segmentos) mediante el uso del programa ImageJ.
2. area1.dat contiene la estimación del área correspondiente a 24 granos que tienen un diámetro igual a la longitud recolectada en el archivo anterior.
3. area2.dat tiene los valores de área de 18 granos, medidos directamente con la función oval del programa ImageJ.

Por otro lado, los archivos .m corresponden a los códigos hechos en MATLAB para el respectivo análisis:

4. Histogramalenght.m es el histograma del perfil de longitud de los granos obtenida por el primer método, i.e., directamente con el programa.
5. HistogramaArea1.m es el histograma del perfil de área de los granos, calculado a partir del anterior, i.e., por el primer método.
6. HistogramaArea2.m es el histograma del perfil de área de los granos pero determinado directamente mediante el uso del progra, i.e., el segundo método.
7. HistogramasAreaComparacion.m corresponde a la comparación entre los dos histogramas anteriores, i.e., la comparación entre métodos para determinar el perfil de área de los granos.

