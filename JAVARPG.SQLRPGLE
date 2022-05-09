**free
ctl-opt  OPTION(*SRCSTMT:*NODEBUGIO)
           DFTACTGRP(*No) DECEDIT('0,') DATEDIT(*DMY.) ALWNULL(*USRCTL);


// Author: Etienne Papegnies 

/include UTIL04PS

dcl-f JAVARPGGSE workstn;

dcl-s l like(newList);
dcl-s al like(newArrayList);
dcl-s s like(newString);
dcl-s m like(newHashMap);
dcl-s chars varchar(255);
dcl-s al2 like(al);

dou *IN03 = *on;

  // Utilisation du type String en Java
  s = newString('Ceci est la chaîne de Bob. Bob a un beau chapeau.');
  WOSEF1 = getBytes(s);
  WOSEF2 = tern(startsWith(s: newString('Ceci')): 'Oui': 'Non');

  WOSEF3 = getBytes(replaceAll(s: newString('Bob'): newString('Alice')));

  // Utilisation du type LinkedList en Java
  l = newList();
  push(l: newString('Bob'));
  push(l: newString('Alice'));
  push(l: newString('Magali'));
  push(l: newString('Marc'));
  push(l: newString('Virginie'));
  WOSEF4 = getBytes(listToString(l));
  WOSEF5 = getBytes(pop(l));
  WOSEF6 = getBytes(listToString(l));

  // Utilisation du type ArrayList en java
  al = newArrayList();
  add(al: newString('Test lol'));
  add(al: newString('Test 2 lol'));
  add(al: newString('Test 3 lol'));
  WOSEF7 = getBytes(arrayListToString(al));
  addI(al: 1: newString('INTRUS'));
  addI(al: 1: newInt(6));  // On peut mixer les types
  WOSEF8 = getBytes(arrayListToString(al));
  al2 = newArrayList();
  add(al2: newInt(1));
  add(al2: newInt(2));
  addI(al: 1: al2);  // On peut faire des trucs à plusieurs dimensions
  WOSEF9 = getBytes(arrayListToString(al));

  // Utilisation de HashMap en Java
  m = newHashMap();
  mapPut(m: newInt(4): al2);
  mapPut(m: newInt(8): newString('Truc'));
  WOSEF10 = getBytes(hashMapToString(m));
  WOSEF11 = tern(mapContainsKey(m: newInt(4)): 'Oui': 'Non');
  WOSEF12 = tern(mapContainsKey(m: newInt(6)): 'Oui': 'Non');
  WOSEF13 = getBytes(arrayListToString(mapGet(m: newInt(4))));

  exfmt A1;
enddo;

*inlr = *on;


// This procedure is basically a ternary operator
// implementation to be able to produce short
// statements that should not require an if else
// block such as: var = boolean and "Yes" or "No"
dcl-proc tern;
  dcl-pi *N varchar(255);
    c ind const;
    t_str varchar(255) const;
    f_str varchar(255) const;
  end-pi;
  if c;
    return t_str;
  endif;
  return f_str;
end-proc;





 