// tube outside diameter: 158.75mm

TUBE_DIAMETER = 158.75;
COLLAR_LENGTH = 90;
COLLAR_THICKNESS = 10;
BOLT_SHAFT = 3.5;
BOLT_HEAD = 7;

$fn=100;


difference(){
    
    cylinder(r=(TUBE_DIAMETER/2) + COLLAR_THICKNESS, COLLAR_LENGTH);
    
    // tube cut-out
    translate([0,0,-1]){
        cylinder(r=TUBE_DIAMETER/2,h=COLLAR_LENGTH + 3);
    }
    
    // split in half
    translate([-(TUBE_DIAMETER/2)-COLLAR_THICKNESS,0,-1]){
        cube([TUBE_DIAMETER+(COLLAR_THICKNESS*2), (TUBE_DIAMETER/2)+COLLAR_THICKNESS, COLLAR_LENGTH + 3]);
    }
    
    // bolt holes
    // right
    // bottom
    translate([(TUBE_DIAMETER/2)+(COLLAR_THICKNESS/2),0,COLLAR_LENGTH/3]){
        rotate([90,0,0]){
            cylinder(r=BOLT_SHAFT/2,h=50);
        }
    }

    // top
    translate([(TUBE_DIAMETER/2)+(COLLAR_THICKNESS/2),0,(COLLAR_LENGTH/3)*2]){
        rotate([90,0,0]){
            cylinder(r=BOLT_SHAFT/2,h=50);
        }
    }
    
    // bolt head hole
    translate([(TUBE_DIAMETER/2)+(COLLAR_THICKNESS/2),-8,COLLAR_LENGTH/3]){
        rotate([90,0,0]){
            cylinder(r=BOLT_HEAD/2,h=50);
        }
    }
    
    // bottom
    translate([(TUBE_DIAMETER/2)+(COLLAR_THICKNESS/2),-8,(COLLAR_LENGTH/3)*2]){
        rotate([90,0,0]){
            cylinder(r=BOLT_HEAD/2,h=50);
        }
    }
    
    // left
    // bottom
    translate([-(TUBE_DIAMETER/2)-(COLLAR_THICKNESS/2),0,COLLAR_LENGTH/3]){
        rotate([90,0,0]){
            cylinder(r=BOLT_SHAFT/2,h=50);
        }
    }

    // top
    translate([(-TUBE_DIAMETER/2)-(COLLAR_THICKNESS/2),0,(COLLAR_LENGTH/3)*2]){
        rotate([90,0,0]){
            cylinder(r=BOLT_SHAFT/2,h=50);
        }
    }
    
    // bolt head hole
    translate([(-TUBE_DIAMETER/2)-(COLLAR_THICKNESS/2),-8,COLLAR_LENGTH/3]){
        rotate([90,0,0]){
            cylinder(r=BOLT_HEAD/2,h=50);
        }
    }
    
    // bottom
    translate([(-TUBE_DIAMETER/2)-(COLLAR_THICKNESS/2),-8,(COLLAR_LENGTH/3)*2]){
        rotate([90,0,0]){
            cylinder(r=BOLT_HEAD/2,h=50);
        }
    }
}