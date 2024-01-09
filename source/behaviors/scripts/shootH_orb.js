// Comments are cool
let person = {
    name:'cool',
    age:23
};
// dot notation
person.name = 'john';
// braacket notation
let selection = 'name';
person[selection]='mary';
console.log(person);

let selected_colors = ['red', 'blue'];
selected_colors[2] = 'green';
console.log(selected_colors[0]);
//perform a task
function greet(name, lastName) {
    console.log('hello '+ name + ' ' + lastName);
}

//calculate value
function square(number) {
    return number * number;
}

console.log(square(2));


greet('boy','smith' );
greet('girl','smith');
