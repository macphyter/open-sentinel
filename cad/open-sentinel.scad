// Open Sentinel
// A Raspberry Pi Compute Module based IP Camera

GREEN = [0, 0.5, 0];
BLACK = [0.3, 0.3, 0.3];
WHITE = [0.9, 0.9, 0.9];

module rpi_CM5()
{
  difference() {
    union() {
      // PCB
      color(GREEN) translate([3.5,3.5,0]) cylinder(r=3.5, h=1.25, $fn=36);
      color(GREEN) translate([51.5,3.5,0]) cylinder(r=3.5, h=1.25, $fn=36);
      color(GREEN) translate([3.5,36.5,0]) cylinder(r=3.5, h=1.25, $fn=36);
      color(GREEN) translate([51.5,36.5,0]) cylinder(r=3.5, h=1.25, $fn=36);
      color(GREEN) translate([3.5,0,0]) cube([48, 40, 1.25]);
      color(GREEN) translate([0,3.5,0]) cube([55, 33, 1.25]);
      // CPU
      color(WHITE) translate([23.4,8.5,1.25]) cube([17, 17, 1.6]);
      color(WHITE) translate([23.4,11.25,1.25]) cube([17, 11.5, 2.2]);
      // WIFI module
      color(WHITE) translate([8,22,1.25]) cube([10.75, 14, 1.9]);
      // ICs
      color(BLACK) translate([24.5,26.5,1.25]) cube([14.5, 10, 0.7]);
      color(BLACK) translate([42.5,15.5,1.25]) cube([12, 12, 0.7]);
      color(BLACK) translate([47.5,7,1.25]) cube([7, 7, 0.7]);
      color(BLACK) translate([7,7,1.25]) cube([6, 6, 0.7]);
      color(BLACK) translate([7.5,21,-0.7]) cube([13, 11.5, 0.7]);
      // mezzanine connectors
      translate([14,2,-1.25]) cube([21.5, 2, 1.25]);
      translate([14,36,-1.25]) cube([21.5, 2, 1.25]);
    }
    // Mounting holes
    translate([3.5,3.5,-1]) cylinder(r=1.25, h=10, $fn=36);
    translate([3.5,3.5,1.24]) cylinder(r=2.75, h=0.1, $fn=36);
    translate([51.5,3.5,-1]) cylinder(r=1.25, h=10, $fn=36);
    translate([51.5,3.5,1.24]) cylinder(r=2.75, h=0.1, $fn=36);
    translate([3.5,36.5,-1]) cylinder(r=1.25, h=10, $fn=36);
    translate([3.5,36.5,1.24]) cylinder(r=2.75, h=0.1, $fn=36);
    translate([51.5,36.5,-1]) cylinder(r=1.25, h=10, $fn=36);
    translate([51.5,36.5,1.24]) cylinder(r=2.75, h=0.1, $fn=36);
  }
}

module CM5_carrier()
{
  difference() {
    union() {
      // PCB
      color(GREEN) translate([3.5,3.5,0]) cylinder(r=3.5, h=1.25, $fn=36);
      color(GREEN) translate([63.5,3.5,0]) cylinder(r=3.5, h=1.25, $fn=36);
      color(GREEN) translate([3.5,42.5,0]) cylinder(r=3.5, h=1.25, $fn=36);
      color(GREEN) translate([63.5,42.5,0]) cylinder(r=3.5, h=1.25, $fn=36);
      color(GREEN) translate([3.5,0,0]) cube([61, 46, 1.25]);
      color(GREEN) translate([0,3.5,0]) cube([67, 39, 1.25]);
      // mezzanine connectors
      translate([14,5, 1.25]) cube([21.5, 2, 1.25]);
      translate([14,39, 1.25]) cube([21.5, 2, 1.25]);
    }
    // Mounting holes
    translate([3.5,6.5,-1]) cylinder(r=1.25, h=10, $fn=36);
    translate([3.5,6.5,1.24]) cylinder(r=2.75, h=0.1, $fn=36);
    translate([51.5,6.5,-1]) cylinder(r=1.25, h=10, $fn=36);
    translate([51.5,6.5,1.24]) cylinder(r=2.75, h=0.1, $fn=36);
    translate([3.5,39.5,-1]) cylinder(r=1.25, h=10, $fn=36);
    translate([3.5,39.5,1.24]) cylinder(r=2.75, h=0.1, $fn=36);
    translate([51.5,39.5,-1]) cylinder(r=1.25, h=10, $fn=36);
    translate([51.5,39.5,1.24]) cylinder(r=2.75, h=0.1, $fn=36);
  }
}


module rpi_hq_camera()
{
  difference() {
    union() {
      //color(GREEN) translate([-19,-19,0]) cube([38,38,1.4]);
      color(GREEN) translate([-18,-15.5,0]) cube([36,31,1.4]);
      color(GREEN) translate([-15.5,-18,0]) cube([31,36,1.4]);
      color(GREEN) translate([15.5,15.5,0]) cylinder(r=2.5, h=1.4, $fn = 32);
      color(GREEN) translate([-15.5,15.5,0]) cylinder(r=2.5, h=1.4, $fn = 32);
      color(GREEN) translate([15.5,-15.5,0]) cylinder(r=2.5, h=1.4, $fn = 32);
      color(GREEN) translate([-15.5,-15.5,0]) cylinder(r=2.5, h=1.4, $fn = 32);

      // Lense
      color(BLACK) translate([0,0, 1.4]) cylinder(r=17.5, h=11.5, $fn=32);
      color(BLACK) translate([0,0, 1.4]) cylinder(r=14, h=40, $fn=32);
      color(BLACK) translate([0,0,13.9]) cylinder(r=15, h=8, $fn=32);
      color(BLACK) translate([0,0, 22.9]) cylinder(r=15, h=11, $fn=32);
      color(BLACK) translate([0,0, 34.9]) cylinder(r=15, h=9, $fn=32);
 
      // bracket
      color(BLACK) translate([-7,-30.0,1.4]) cube([14, 14, 11.5]);
      color(BLACK) translate([-5, 16,6.9]) cube([10, 5, 5]);

      // FPC connector
      translate([-10,-18,-2.3]) cube([20, 5.7, 2.3]);
      color(WHITE) translate([-8,-27.7,-1]) cube([16,10,0.1]);
      color(WHITE) translate([-8,-27.7,-26]) cube([16,0.1,25]);
    }
    translate([15,15,-1]) cylinder(r=1.3, h=4, $fn = 32);
    translate([-15,15,-1]) cylinder(r=1.3, h=4, $fn = 32);
    translate([15,-15,-1]) cylinder(r=1.3, h=4, $fn = 32);
    translate([-15,-15,-1]) cylinder(r=1.3, h=4, $fn = 32);
    //translate([0,9.5, 6.8]) cylinder(r=3.3, h=1, $fn=32);

    // mounting screw
    translate([0,-24, 7]) rotate([90,0,0]) cylinder(r=2.5, h=10, $fn=32);
   
  }
}

module enclosure(FILLED)
{
  difference() {
    union() {
      translate([-12,75,12]) rotate([90,0,0]) cylinder(r=12, h=75);
      translate([12,75,12]) rotate([90,0,0]) cylinder(r=12, h=75);
      translate([12,75,-12]) rotate([90,0,0]) cylinder(r=12, h=75);
      translate([-12,75,-12]) rotate([90,0,0]) cylinder(r=12, h=75);

      translate([-12,0,0]) cube([24,75,24]);
      translate([-24,0,-12]) cube([24,75,24]);
      translate([0,0,-12]) cube([24,75,24]);
      //translate([-1.065,0,-18.685]) rotate([0,45,0]) cube([16,75,16]);
      //translate([-21.565,0,-18.685]) rotate([0,45,0]) cube([16,75,16]);
      //translate([-10.25,0,-30]) cube([20.5,75,12]);

      //translate([-15,75,15]) rotate([90,0,0]) cylinder(r=3.6, h=75, $fn=36);
      //translate([15,75,15]) rotate([90,0,0]) cylinder(r=3.6, h=75, $fn=36);
      //translate([15,75,-15]) rotate([90,0,0]) cylinder(r=3.6, h=75, $fn=36);
      //translate([-15,75,-15]) rotate([90,0,0]) cylinder(r=3.6, h=75, $fn=36);

      // bottom rail
      translate([-14.5,0,-30]) cube([29,75,12]);
    }
    translate([-11.4,-1,-28]) cube([22.8,80,30]);

    if (FILLED == 0) {
      translate([-10,80,10]) rotate([90,0,0]) cylinder(r=10, h=81);
      translate([10,80,10]) rotate([90,0,0]) cylinder(r=10, h=81);
      translate([12,80,-12]) rotate([90,0,0]) cylinder(r=8, h=81);
      translate([-12,80,-12]) rotate([90,0,0]) cylinder(r=8, h=81);

      translate([-20,-1,-12]) cube([40,80,22]);
      translate([-10,-1,0]) cube([20,80,20]);
      //translate([7.315,-1,-16.685]) rotate([0,35,0]) translate([-8,0,-8]) cube([16,80,16]);
      //translate([-8.315,-1,-16.685]) rotate([0,55,0]) translate([-8,0,-8]) cube([16,80,16]);

      //translate([-2.315,-1,-16.685]) rotate([0,45,0]) cube([16,80,16]);
      //translate([-20.315,-1,-16.685]) rotate([0,45,0]) cube([16,80,16]);

    } 
  }
  // main screw bosses
  translate([-15,73,15]) rotate([90,270,0]) camera_mount_boss(75);
  translate([15,73,15]) rotate([90,0,0]) camera_mount_boss(75);
  translate([15,73,-15]) rotate([90,90,0]) camera_mount_boss(75);
  translate([-15,73,-15]) rotate([90,180,0]) camera_mount_boss(75);
}

module camera_mount_boss(boss_height)
{
  difference() {
    union() {
      translate([0,0,-2]) cylinder(r=3.6, h=boss_height, $fn=36);
      translate([-3.6,0,-2]) cube([3.6,5.6,boss_height]);
      translate([0,-3.6,-2]) cube([5.6,3.6,boss_height]);
    }
    translate([0,0,-4]) cylinder(r=1.5, h=boss_height + 4, $fn=36);
  }
}

module hq_camera_mount()
{
  difference() {
    enclosure(1);

    translate([-32,4,-32]) cube([64,100,64]);
    translate([-18.5,-4,-15]) cube([37,10,30]);
    translate([-15,-4,-18.5]) cube([30,10,37]);
    translate([15,2,15]) rotate([90,0,0]) cylinder(r=3.5, h=6, $fn=36);
    translate([-15,2,15]) rotate([90,0,0]) cylinder(r=3.5, h=6, $fn=36);
    translate([15,2,-15]) rotate([90,0,0]) cylinder(r=3.5, h=6, $fn=36);
    translate([-15,2,-15]) rotate([90,0,0]) cylinder(r=3.5, h=6, $fn=36);

    translate([15,6,15]) rotate([90,0,0]) cylinder(r=1.5, h=12, $fn=36);
    translate([-15,6,15]) rotate([90,0,0]) cylinder(r=1.5, h=12, $fn=36);
    translate([15,6,-15]) rotate([90,0,0]) cylinder(r=1.5, h=12, $fn=36);
    translate([-15,6,-15]) rotate([90,0,0]) cylinder(r=1.5, h=12, $fn=36);
  }
  // camera mount bosses
  translate([15,2,15]) rotate([90,0,0]) camera_mount_boss(4);
  translate([-15,2,15]) rotate([90,270,0]) camera_mount_boss(4);
  translate([15,2,-15]) rotate([90,90,0]) camera_mount_boss(4);
  translate([-15,2,-15]) rotate([90,180,0]) camera_mount_boss(4);

  translate([-12,0,-28]) cube([24,0.4,9.8]);
}

module back_panel()
{
  difference() {
    union() {
      enclosure(1);
      translate([-12,0,-29]) cube([24,2,32]);
    }
    translate([-32,2,-32]) cube([64,100,64]);

    // screw holes
    translate([15,3,15]) rotate([90,0,0]) cylinder(r=1.5, h=6, $fn=36);
    translate([15,3,-15]) rotate([90,0,0]) cylinder(r=1.5, h=6, $fn=36);
    translate([-15,3,15]) rotate([90,0,0]) cylinder(r=1.5, h=6, $fn=36);
    translate([-15,3,-15]) rotate([90,0,0]) cylinder(r=1.5, h=6, $fn=36);

  }
}

// For editing
//rpi_hq_camera();
//rpi_CM5();
//CM5_carrier();

// For modeling

// horizontal boards
//translate([20,10,2]) rotate([0,0,90]) rpi_CM5();
//translate([23,10,-2]) rotate([0,0,90]) CM5_carrier();
// vertical boards
translate([2,8,-24]) rotate([90,0,90]) rpi_CM5();
translate([-2,8,-27]) rotate([90,0,90]) CM5_carrier();

translate([0,-5.01,0]) rotate([90,0,0]) rpi_hq_camera();
translate([0,-5,0]) hq_camera_mount();

enclosure(0);

translate([0,76,0]) back_panel();


// For Printing
//translate([0,0,0]) enclosure();
//translate([0,-32,8.5]) rotate([0,180,0]) lid();
