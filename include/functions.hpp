#include <iostream>
#include <string>
#include <sstream>
#include <list>
#include <stack>

using namespace std;

//GERAIS
void sayHello();
void Assert(bool x, string text);
char* checkLineArguments(int argc, char **argv, int x);
int neg(int x, int tamNat);

//CLASSES
class Follower{
    public:
        //Construtor
        Follower();
        Follower(string line);
        //Propostas aceitas
        int x1;
        int x2;
        //Propostas recusadas
        int y1;
        int y2;

        //Methods
        void print();
};

class Graph{
    public:
        //Número Vértices
        int V;
        //Vetor com as listas de adjascencia
        list<int> *adj;
        
        //Construtor que recebe o número de vértices, pois já sabemos quantos serão.
        Graph(int V);

        //Adiciona uma aresta entre o vértice v1 e v2
        void addEdge(int v1, int v2);
    
        //Faz DFS em busca de um vértice v.
        bool dfs(int v, int y);
};