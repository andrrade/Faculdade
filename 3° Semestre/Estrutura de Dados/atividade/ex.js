// Bubble Sort
function bubbleSort(vetor) {
  for (i = 0; i < vetor.length; i++) {
    var aux;

    for (j = 0; j < vetor.length; j++) {
      if (vetor[j] > vetor[j + 1]) {
        aux = vetor[j];
        vetor[j] = vetor[j + 1];
        vetor[j + 1] = aux;
      }
    }
  }
}

// Seleção Direta
function selectionSort(vetor) {
  for (var i = 0; i < vetor.length; i++) {
    var menor = i;

    for (var j = i + 1; j < vetor.length; j++) {
      if (vetor[j] < vetor[menor]) {
        menor = j;
      }
    }

    if (menor !== i) {
      [vetor[i], vetor[menor]] = [vetor[menor], vetor[i]];
    }
  }
}

// Inserção Direta
function inserctionSort(vetor) {
  for (var i = 1; i < vetor.length; i++) {
    var atual = vetor[i];
    var j = i - 1;

    while (j >= 0 && vetor[j] > atual) {
      vetor[j + 1] = vetor[j];
      j--;
    }
    vetor[j + 1] = atual;
  }
}

let nums = [77, 44, 22, 33, 99, 55, 88, 0, 66, 11];

console.log(nums);
bubblesort(nums);
console.log(nums);
