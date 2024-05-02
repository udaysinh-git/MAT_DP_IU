x = 10;
result = fibonaccii(x);
disp(result)


function fibsequence = fibonaccii(x)
    fibsequence = zeros(1,x);

    fibsequence(1) = 0;
    fibsequence(2) = 1;

    for i = 3:x
        fibsequence(i) = fibsequence(i-1) + fibsequence(i-2);
    end
end