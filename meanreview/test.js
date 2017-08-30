class Circle{
    constructor(x, y, radius){
        this.x = x;
        this.y = y;
        this.radius = radius;
    }
    get diameter(){
        return this.radius * 2;
    }
}
let circle1 = new Circle(1, 2, 5);
console.log(circle1.diameter);
