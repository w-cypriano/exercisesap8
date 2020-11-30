//solução1: Usando o filter para selecionar numeros os pares e depois reduce para somar o numeros pares
const numbers = [18, 19, 23, 53, 4, 5, 76, 23, 54];
const filterArray = numbers.filter(number => number % 2 === 0)
const final = filterArray.reduce((result, number) => result + number)
console.log(final);

//solução 2: forma reduzida
const filterArray1 = numbers.filter(number => number % 2 === 0).reduce((result, number) => result + number)

console.log(filterArray1);

//solução 3; com reduce somente

const sumPair = (currentValue, number) => (
  (number % 2 === 0) ? currentValue + number : currentValue); // duvidas

const sumNumbers = (array) => array.reduce(sumPair, 0);

console.log(sumNumbers(numbers)); // 152