$fn = 20;     // Team.Mu.Captain@gmail.com

// which comb do you want.
// Only select one.

// Two Comb
points=[[0,15.5],[21.12,9.4],[37,9.8],[35.44,12.7],[62,2.5],[48.33,0],[12,0]];




difference(){
union(){
difference(){
// the teeth.
for(i = [ [0,1, 0],
          [0,7, 0],
          [0,13,0],
          [0,19,0],
          [0,25,0],
          [0,31,0],
          [0,37,0],
          [0,43,0]]){
translate(i)
rotate([90,0,0])
linear_extrude(height = 2, center = true, convexity = 10, twist = 0)
polygon(points);}

// clear room for the rivet
translate([5,22,10])
rotate([0,16,0])
cube([13,14,20], center=true);}


// the back plate
difference(){
translate([0,0,13])
rotate([0,16,0])
cube([24,44,2.5], 0);
    
translate([5,22,10])
rotate([0,16,0])
// the rivit hole's recessed.
cylinder(h=5, r1=10, r2=2, center=true);
translate([5,22,10])
rotate([0,16,0])
// the rivit hole
cylinder(h=15, r1=2, r2=2, center=true);
}

// first spring path main
hull(){
translate([3,7,11])
sphere(r=3.5);
translate([21,7,6.5])
sphere(r=3.5);}
// second spring path main
hull(){
translate([3,37,11])
sphere(r=3.5);
translate([21,37,6.5])
sphere(r=3.5);}

// first blade slide rail.
translate([13,1,12])
rotate([0,106,0])
cylinder(h=25, r1=1, r2=1, center=true);
// second blade slide rail.
translate([13,43,12])
rotate([0,106,0])
cylinder(h=25, r1=1, r2=1, center=true);


// first arm
union(){
difference(){
translate([7,0,13])
rotate([0,106,0])
cylinder(h=8, r1=4, r2=4, center=true);
translate([5,2,19])
rotate([0,16,0])
cube([20,10,10], center=true);
}
hull(){
translate([5,-5,15])
rotate([0,16,0])
cylinder(h=7.5, r1=2, r2=2, center=true);
translate([10,-5,15])
rotate([0,16,0])
cylinder(h=7.5, r1=2, r2=2, center=true);
}}


// second arm
union(){
difference(){
translate([7,44,13])
rotate([0,106,0])
cylinder(h=8, r1=4, r2=4, center=true);
translate([5,42,19])
rotate([0,16,0])
cube([20,10,10], center=true);
}
hull(){
translate([5,49,15])
rotate([0,16,0])
cylinder(h=7.5, r1=2, r2=2, center=true);
translate([10,49,15])
rotate([0,16,0])
cylinder(h=7.5, r1=2, r2=2, center=true);
}}

}// begins differencing the main object.

// first spring track
hull(){
translate([12,7,10])
rotate([0,106,0])
cylinder(h=21, r1=2.5, r2=2.5, center=true);
translate([12,7,20])
rotate([0,106,0])
cylinder(h=21, r1=2.5, r2=2.5, center=true);
}
// second spring track
hull(){
translate([12,37,10])
rotate([0,106,0])
cylinder(h=21, r1=2.5, r2=2.5, center=true);
translate([12,37,20])
rotate([0,106,0])
cylinder(h=21, r1=2.5, r2=2.5, center=true);
}
// the back plate clean up.
translate([-2,0,13])
rotate([0,16,0])
cube([2,44,4], 0);
}
    