
function electricfield_6_3Dhh

g=0;
V0=3;
field(41,41)=g;
field(11:14,1:17)=V0;
field(20:23,1:13)=V0;
field(29:32,1:17)=V0;
field(11:14,25:41)=V0;
field(20:23,29:41)=V0;
field(29:32,25:41)=V0;

[Xp,Yp]=meshgrid(-20*10^(-8):10^(-8):20*10^(-8));

for a=1:1:20
    for h=10:-1:2
        for v=2:40
            if (field(h,v) ~= V0)
                field(h,v)=(field(h-1,v)+field(h+1,v)+field(h,v-1)+field(h,v+1))/4;
            end
            if (h == 10)
              field(h,v) = field(h,v) + V0;
            end
        end
    end
    for h=15:1:28
        for v=2:40
            if (field(h,v) ~= V0)
                field(h,v)=(field(h-1,v)+field(h+1,v)+field(h,v-1)+field(h,v+1))/4;
            end
            
             if (h == 20)
              field(h,v) = field(h,v) + V0;
            end
        end
    end
    for h=28:-1:15
        for v=2:40
            if (field(h,v) ~= V0)
                field(h,v)=(field(h-1,v)+field(h+1,v)+field(h,v-1)+field(h,v+1))/4;
            end 
             if (h == 25)
              field(h,v) = field(h,v) + V0;
            end
        end
    end
    for h=33:1:40
        for v=2:40
            if (field(h,v) ~= V0)
                field(h,v)=(field(h-1,v)+field(h+1,v)+field(h,v-1)+field(h,v+1))/4;
            end
            
             if (h == 35)
              field(h,v) = field(h,v) + V0;
            end
        end
    end
    for h=2:1:40
        for v=2:40
            if (field(h,v) ~= V0)
                field(h,v)=(field(h-1,v)+field(h+1,v)+field(h,v-1)+field(h,v+1))/4;
            end
            
             if (h == 20)
              field(h,v) = field(h,v) + V0;
            end
        end
        for v=40:-1:2
            if (field(h,v) ~= V0)
                field(h,v)=(field(h-1,v)+field(h+1,v)+field(h,v-1)+field(h,v+1))/4;
            end 
            
             if (h == 20)
              field(h,v) = field(h,v) + V0;
            end
        end
    end
end
contour(Xp,Yp,field,30)
surf(field)
