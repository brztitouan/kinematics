% Functions generates matrix of N number of grashoffs set
function output = grashof(N)
    while 1             %infinete loop
        A=rand(1,4)*5;  % generate row of 4 random numbers from 0 to 5
        sA=sort(A);     % sort the row
        SL=sA(1)+sA(4);   % sum of shortest and largest element in row
        PQ=sA(2)+sA(3);   % sum of remaining element in row
        if(SL<=PQ)      % check grashof's law
            if(exist('output', 'var')) % check if output row exist append new set to output
                output=[output; A];
            else
                output=A; %if output not exist create first set
            end
        end
        if(exist('output', 'var') && size(output,1)>=N)
            break       %exit infinte loop when N number of valid sets are created
        end
    end
end
