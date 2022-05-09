**free


// Objet Java Integer

dcl-pr newInt object extproc(*JAVA: 'java.lang.Integer': *constructor);
  *N int(10) value;
end-pr;

// Objet Java String
//
//

dcl-pr newString object extproc(*JAVA: 'java.lang.String': *constructor);
  *N varchar(255) const;
end-pr;
dcl-pr getBytes varchar(255) extproc(*JAVA: 'java.lang.String': 'getBytes');
end-pr;
dcl-pr startsWith ind
             extproc(*JAVA: 'java.lang.String': 'startsWith');
  *N object(*JAVA: 'java.lang.String') const;
end-pr;
dcl-pr replaceAll Object(*JAVA: 'java.lang.String')
             extproc(*JAVA: 'java.lang.String': 'replaceAll');
  regex object(*JAVA: 'java.lang.String') const;
  replacement object(*JAVA: 'java.lang.String') const;
end-pr;


// Objet Java LinkedList
//
dcl-pr newList object extproc(*JAVA: 'java.util.LinkedList': *constructor);
end-pr;
dcl-pr push extproc(*JAVA : 'java.util.LinkedList': 'push');
      *N object(*JAVA: 'java.lang.Object') const;
end-pr;
dcl-pr pop object(*JAVA: 'java.lang.Object')
           extproc(*JAVA : 'java.util.LinkedList': 'pop');
end-pr;
dcl-pr listToString object(*JAVA: 'java.lang.String')
           extproc(*JAVA : 'java.util.LinkedList': 'toString');
end-pr;
dcl-pr listEmpty ind extproc(*JAVA : 'java.util.LinkedList': 'isEmpty');
end-pr;  


// Objet Java ArrayList
//
dcl-pr newArrayList object extproc(*JAVA: 'java.util.ArrayList': *constructor);
end-pr;
dcl-pr add ind extproc(*JAVA : 'java.util.ArrayList': 'add');
      *N object(*JAVA: 'java.lang.Object') const;
end-pr;
dcl-pr addI extproc(*JAVA : 'java.util.ArrayList': 'add');
      index int(10) value;
      *N object(*JAVA: 'java.lang.Object') const;
end-pr;
dcl-pr get object(*JAVA: 'java.lang.Object')
           extproc(*JAVA : 'java.util.ArrayList': 'get');
   index int(10) value;
end-pr;
dcl-pr arrayListToString object(*JAVA: 'java.lang.String')
           extproc(*JAVA : 'java.util.ArrayList': 'toString');
end-pr;

// Object Java HashMap
//
dcl-pr newHashMap object extproc(*JAVA: 'java.util.HashMap': *constructor);
end-pr;

dcl-pr mapContainsKey ind extproc(*JAVA : 'java.util.HashMap': 'containsKey');
  k object(*JAVA: 'java.lang.Object') const;
end-pr;


dcl-pr mapPut object(*JAVA: 'java.lang.Object')
              extproc(*JAVA : 'java.util.HashMap': 'put');
  k object(*JAVA: 'java.lang.Object') const;
  v object(*JAVA: 'java.lang.Object') const;
end-pr;



dcl-pr mapGet object(*JAVA: 'java.lang.Object')
              extproc(*JAVA : 'java.util.HashMap': 'get');
  k object(*JAVA: 'java.lang.Object') const;
end-pr;
dcl-pr hashMapToString object(*JAVA: 'java.lang.String')
           extproc(*JAVA : 'java.util.HashMap': 'toString');
end-pr;








 