// Print all of the students and their cohort.
// Your console should look like the following:
//
// Name: Remy, Cohort: Jan
// Name: Genevieve, Cohort: March
// Name: Chuck, Cohort: Jan
// Name: Osmund, Cohort: June
// Name: Nikki, Cohort: June
// Name: Boris, Cohort: June
let students = [
    {name: 'Remy', cohort: 'Jan'},
    {name: 'Genevieve', cohort: 'March'},
    {name: 'Chuck', cohort: 'Jan'},
    {name: 'Osmund', cohort: 'June'},
    {name: 'Nikki', cohort: 'June'},
    {name: 'Boris', cohort: 'June'}
];
for(var i=0;i<students.length;i++){
  console.log("Name: "+students[i].name+", cohort: "+students[i].cohort)
}
for(var student in students){

  console.log("name: "+ students[student].name +", cohort: " + students[student].cohort)
}
for(let student in students){
            console.log(`name: ${students[student].name}, cohort: ${students[student].cohort}`)
        };

// Challenge 2
// Print out the below object to match the example.
// Your console should look like the following:
// EMPLOYEES
// 1 - JONES, MIGUEL - 11
// 2 - BERTSON, ERNIE - 12
// 3 - LU, NORA - 6
// 4 - BARKYOUMB, SALLY - 14
// MANAGERS
// 1 - CHAMBERS, LILLIAN - 15
// 2 - POE, GORDON - 9

let users = {
    employees: [
        {'first_name':  'Miguel', 'last_name' : 'Jones'},
        {'first_name' : 'Ernie', 'last_name' : 'Bertson'},
        {'first_name' : 'Nora', 'last_name' : 'Lu'},
        {'first_name' : 'Sally', 'last_name' : 'Barkyoumb'}
    ],
    managers: [
       {'first_name' : 'Lillian', 'last_name' : 'Chambers'},
       {'first_name' : 'Gordon', 'last_name' : 'Poe'}
    ]
 };
 for(var key in users){
   console.log(key.toUpperCase())
   for(var i=0;i<users[key].length;i++){
     console.log(i+1 + " - " + users[key][i].first_name + ", " + users[key][i].last_name + " - " + (users[key][i].first_name.length + users[key][i].last_name.length))
   }
 }
