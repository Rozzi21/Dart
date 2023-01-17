void main() {
  // tryListString();
  // trySpreadOperator();
  // trySet();
  // tryUnionAndIntersection();
  tryMap();
}

void tryListString() {
  List<int> DaftarAngka = [1, 2, 3, 4];

  var listAngka = [1, 2, 3, 4, 5];
  var listString = ['pudidi', 'jhon mac tavish', 'raider', 'pak rt'];
  var listDinamis = [1, 213.232, 'pak rw'];

  print(listAngka[4]);

  // take list data use for

  for (int i = 0; i < listDinamis.length; i++) {
    print(listDinamis[i]);
  }

  // take list data use forEach

  listString.forEach((data) => print(data));

  // add data using .add

  listDinamis.add('sambalado');

  // add data but we can set the order

  listDinamis.insert(3, 'asolole');

  // change value on list

  listDinamis[0] = 123;

  //remove value on list

  listDinamis.remove('pak rw');

  //remove list with index

  listDinamis.removeAt(2);

  //remove list but last

  listDinamis.removeLast();

  //remove list with range

  listDinamis.removeRange(0, 3);
}

void trySpreadOperator() {
  var anjime = ["roger sumatra", "ilham god", "tiger kalimantan"];
  var ngeng = ["icikiwir", "asolole", "icikasolole"];
  var kosong;

// tanda ? digunakan untuk null aware mengatasi list yang bisa bernilai null
  var mix = [...anjime, ...ngeng, ...?kosong];
  print(mix);
}

// to deal with duplicate data
void trySet() {
  Set<int> gakbolehdobel = new Set.from(
      [1, 1, 1, 1, 1, 12, 2, 2, 2, 2, 1, 1, 3, 3, 3, 4, 5, 5, 5, 6, 66, 7]);
  print(gakbolehdobel);

  // add data into set

  gakbolehdobel.add(1293);

  //add data no just one into set

  gakbolehdobel.addAll({123, 2134, 1351, 1351, 135, 1321});

  //delete objects in the desired set.

  gakbolehdobel.remove(3);
}

void tryUnionAndIntersection() {
  var datA = {1, 2, 3, 4, 5, 6, 8, 9, 9, 10};
  var datB = {
    1,
    7,
    23,
    4,
    6,
    34,
  };

  print(datA.union(datB));
  print(datA.intersection(datB));
}

void tryMap() {
  var keyValue = {
    'Indonesia': 'jakarta',
    'Jerman': 'berlin',
    'Rusia': 'moscow',
  };

  print(keyValue['Rusia']);
  print(keyValue.keys);
  print(keyValue.values);

  // add new keyvalue

  keyValue['Malaysia'] = 'kuala lumpur';

  print(keyValue);
}
