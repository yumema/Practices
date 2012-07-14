/* 
   Author: Marina Ma
   Description: deserializes character object
*/

#include <iostream>
#include <fstream>
#include "character.h"

using namespace std;

int main(){

    Character Zack;
    ifstream dataFile("zack.dat", ios::binary);
    dataFile.read( (char *)&Zack, sizeof(Zack) );
    dataFile.close();

    cout << "Name:\t" << Zack.name << endl;
    cout << "HP:\t" << Zack.hp << endl;
    cout << "MP:\t" << Zack.mp << endl;
    cout << "STR:\t" << Zack.str << endl;
    cout << "CON:\t" << Zack.con << endl;
    cout << "DEX:\t" << Zack.dex << endl;
    cout << "INT:\t" << Zack.intl << endl;
    cout << endl;

    return 0;
}
