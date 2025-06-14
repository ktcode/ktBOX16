//
// ktBOX16
//
//

gap1 = 0.001;
gap2 = 0.002;
th = 2;



base();

module base()
{
Wth = 1.5;
difference()
{
    union()
    {
        translate([-1/2-th, -1/2-th, -5]) cube([86+1+th*2, 50+1+th*2, 1.5+4+Wth+5]);
        translate([-1/2-th, -1/2-th, -5-30]) cube([86+1+th*2, 50+1+th*2, 30]);
        
        translate([  -0.25-4,      -0.25-4,    -5-30]) cube([18, 18, 1.5+4+Wth+5+30]);
        translate([86+0.25-18+4,   -0.25-4,    -5-30]) cube([18, 18, 1.5+4+Wth+5+30]);
        translate([  -0.25-4,    50+0.25-18+4, -5-30]) cube([18, 18, 1.5+4+Wth+5+30]);
        translate([86+0.25-18+4, 50+0.25-18+4, -5-30]) cube([18, 18, 1.5+4+Wth+5+30]);
    }
    translate([0, 0, 0]) baord();
    translate([-1/2, -1/2, -30]) cube([86+1, 50+1, 30]);
    
    translate([150, -20, -5+3]) rotate([10, 180, 0]) cube([200, 100, 50]);
   
}
}



module baord()
{
    BX = 86;
    BY = 50;
    M = 1;
    NX = 4;
    NY = 3;
    DX = 58;
    DY = 43;
    DW = 14;
difference()
{
    union()
    {
        translate([-M/2, -M/2, 0]) cube([BX+M, BY+M, 1.5]);

        translate([9-M/2, -M/2, 1.5]) cube([69+M, BY+M, 4]);

        translate([9-M/2+3,         -M/2+3, 1.5+4]) waku();
        translate([9-M/2+3+DX/NX*1, -M/2+3, 1.5+4]) waku();
        translate([9-M/2+3+DX/NX*2, -M/2+3, 1.5+4]) waku();
        translate([9-M/2+3+DX/NX*3, -M/2+3, 1.5+4]) waku();
        translate([9-M/2+3,         -M/2+3+DY/NY*1, 1.5+4]) waku();
        translate([9-M/2+3+DX/NX*1, -M/2+3+DY/NY*1, 1.5+4]) waku();
        translate([9-M/2+3+DX/NX*2, -M/2+3+DY/NY*1, 1.5+4]) waku();
        translate([9-M/2+3+DX/NX*3, -M/2+3+DY/NY*1, 1.5+4]) waku();
        translate([9-M/2+3,         -M/2+3+DY/NY*2, 1.5+4]) waku();
        translate([9-M/2+3+DX/NX*1, -M/2+3+DY/NY*2, 1.5+4]) waku();
        translate([9-M/2+3+DX/NX*2, -M/2+3+DY/NY*2, 1.5+4]) waku();
        translate([9-M/2+3+DX/NX*3, -M/2+3+DY/NY*2, 1.5+4]) waku();
        
        translate([2.5, 7.5, 1.5]) cube([4, 6, 1]);

        translate([   4,    4, 1.5]) cylinder(h=0.5, r=3.5/2, $fn=100);
        translate([BX-4,    4, 1.5]) cylinder(h=0.5, r=3.5/2, $fn=100);
        translate([   4, BY-4, 1.5]) cylinder(h=0.5, r=3.5/2, $fn=100);
        translate([BX-4, BY-4, 1.5]) cylinder(h=0.5, r=3.5/2, $fn=100);
        translate([   4,    4, 1.5+0.5]) cylinder(h=1.5, r1=3.5/2, r2=6.5/2, $fn=100);
        translate([BX-4,    4, 1.5+0.5]) cylinder(h=1.5, r1=3.5/2, r2=6.5/2, $fn=100);
        translate([   4, BY-4, 1.5+0.5]) cylinder(h=1.5, r1=3.5/2, r2=6.5/2, $fn=100);
        translate([BX-4, BY-4, 1.5+0.5]) cylinder(h=1.5, r1=3.5/2, r2=6.5/2, $fn=100);
        translate([   4,    4, 1.5+0.5+1.5]) cylinder(h=10, r=6.5/2, $fn=100);
        translate([BX-4,    4, 1.5+0.5+1.5]) cylinder(h=10, r=6.5/2, $fn=100);
        translate([   4, BY-4, 1.5+0.5+1.5]) cylinder(h=10, r=6.5/2, $fn=100);
        translate([BX-4, BY-4, 1.5+0.5+1.5]) cylinder(h=10, r=6.5/2, $fn=100);
        translate([   4,    4, 1.5+0.5+1.5+1.8]) cylinder(h=10, r1=6.5/2, r2=(6.5+15)/2, $fn=100);
        translate([BX-4,    4, 1.5+0.5+1.5+1.8]) cylinder(h=10, r1=6.5/2, r2=(6.5+15)/2, $fn=100);
        translate([   4, BY-4, 1.5+0.5+1.5+1.8]) cylinder(h=10, r1=6.5/2, r2=(6.5+15)/2, $fn=100);
        translate([BX-4, BY-4, 1.5+0.5+1.5+1.8]) cylinder(h=10, r1=6.5/2, r2=(6.5+15)/2, $fn=100);
        
        translate([-M/2+BX+M-3, 17.5+1.5+3.5/2, 1.5-5]) cube([3+3, 9-3.5, 3.5]);
        translate([-M/2+BX+M-3, 17.5+1.5+3.5/2, 1.5-5+3.5/2]) rotate([0, 90, 0]) cylinder(h=3+3, r=3.5/2, $fn=100);
        translate([-M/2+BX+M-3, 17.5+1.5+9-3.5/2, 1.5-5+3.5/2]) rotate([0, 90, 0]) cylinder(h=3+3, r=3.5/2, $fn=100);

        translate([-M/2+BX+M+1, 17+7.5/2, 1.5-7]) cube([3+3, 13-7.5, 7.5]);
        translate([-M/2+BX+M+1, 17+7.5/2, 1.5-7+7.5/2]) rotate([0, 90, 0]) cylinder(h=3+3, r=7.5/2, $fn=100);
        translate([-M/2+BX+M+1, 17+13-7.5/2, 1.5-7+7.5/2]) rotate([0, 90, 0]) cylinder(h=3+3, r=7.5/2, $fn=100);
        
        //SD Slot
        //translate([39, -3, -2]) cube([15, 3+3, 2]);
    }
}
}



module waku()
{
    Wth = 1.5;
    NX = 4;
    NY = 3;
    DX = 58;
    DY = 43;
    DT = 2;
    DR = 50;
translate([0, DY/3, Wth])
rotate([180, 0, 0])
difference()
{
    union()
    {
        translate([0, 0, 0]) cube([DX/NX, DY/NY, Wth]);
    }
    translate([0, 0, 0]) rotate([0, -DR, 0]) cube([DX/NX, DY/NY, Wth]);
    translate([DX/NX, DY/NY, 0]) rotate([180, 180+DR, 0]) cube([DX/4, DY/3, Wth]);
    translate([0, 0, 0]) rotate([DR, 0, 0]) cube([DX/NX, DY/NY, Wth]);
    translate([DX/NX, DY/NY, 0]) rotate([DR, 0, 180]) cube([DX/4, DY/3, Wth]);
}
}