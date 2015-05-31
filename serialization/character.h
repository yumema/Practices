/* 
   Author: Marina Ma
   Description: Header file for Character class
*/

#ifndef _CHARACTER_H_
#define _CHARACTER_H_

#include <cstring>

class Character {
    public:
       char name[50];
       short int hp;
       short int mp;
       short int str;
       short int con;
       short int dex;
       short int intl;
       Character();
       Character(char NAME[], short int HP, short int MP,
                        short int STR, short int CON, short int DEX, 
                        short int INT);
};

//default constructor
Character::Character() {}

//constructor 
Character::Character(char NAME[], short int HP, short int MP,
                        short int STR, short int CON, short int DEX, 
                        short int INT){

        //strcpy(name,NAME);
        //strcpy poses a security risk! potential buffer overflow
        //replaced with strncpy
        strncpy(name, NAME, sizeof(NAME)/sizeof(char));
        hp = HP;
        mp = MP;
        str = STR;
        con = CON;
        dex = DEX;
        intl = INT;
}

#endif
