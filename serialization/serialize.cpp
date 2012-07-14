/* 
   Author: Marina Ma
   Description: serializes character object
*/

#include <iostream>
#include <fstream>
#include "character.h"

using namespace std;

int main(){

    Character Zack("Zack Fair", 400, 250, 10, 10, 10, 10);
    ofstream objFile("zack.dat", ios::binary);
    objFile.write( (char *)&Zack, sizeof(Zack) );
    objFile.close();

    return 0;
}
