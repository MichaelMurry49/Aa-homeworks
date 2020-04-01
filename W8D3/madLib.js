
function madLib(verb, adjective, noun) {
    return ('we shall ' + verb + ' the ' + adjective + ' ' + noun);
}

function isSubstring(searchString, subString) {
    let i = 0;
    let j = subString.length;
    for(let i = 0; i < searchString.length - 0; i+=1){
        // console.log(searchString.substring(i, j));
        // console.log(subString);
        if(searchString.substring(i, j) === subString){
            return true;
        }
        j+=1
    }
    return false;
}

function fizzBuzz(array) {
    let new_arr = new Array
    for(let i = 0; i < array.length; i+=1){
        if ((array[i] % 5 === 0 || array[i] % 3 === 0) && !((array[i] % 5 === 0 && array[i] % 3 === 0))){
            new_arr.push(array[i])
        }
    }
    new_arr
}

function isPrime(num) {
    if(num < 2){
        return false;
    }
    for(let i = 2; i < num; i++){
        console.log(i)
        if(num % i === 0){
            console.log(i)
            return false
        }
    }
    return true;
}

function sumOfNPrimes(n) {
    var sum = 0;
    var count = 0;
    var i = 0
    while(count < n){
        if(isPrime(i)){
            sum += i;
            count += 1;
        }
        i++;
    }
    return sum;
}

console.log(madLib('walk', 'green', 'tree'));
console.log(isSubstring('walk', 'green'));
console.log(isSubstring('heel', 'eel'));
console.log(fizzBuzz([1,2,15,3,25]));
console.log(isPrime(5));
console.log(isPrime(9));
console.log(sumOfNPrimes(5));



