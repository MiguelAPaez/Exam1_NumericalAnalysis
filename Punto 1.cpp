#include <iostream>
#include <ctime>

using namespace std;

int main()
{
  int matriz[10][10];                   //Punto 1a
  int ressum=0;
  int n=10;
  unsigned t,t1;
  t=clock();
  for(int i=0; i<n; i++){
    for(int j=0; j<n; j++){
      matriz[i][j]=3;
    }
  }
  for(int i=0; i<n; i++){               //Punto 1b
    for(int j=0; j<n; j++){
      ressum+=matriz[i][j];
    }
  }
  cout<<"Suma Valores de la Matriz: "<<ressum<< endl;;
  t1 = clock();
  double tiempo = double(t1-t);
  cout << "Tiempo Total de Ejecucion: " << tiempo <<" s"<<endl;
}


/*
Punto 1c: La complejidad del algoritmo es igual a O(n^2) por la cantidad de ciclos for que se utilizan
*/

