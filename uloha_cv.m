clc; clear all; close all; echo off;

key = 'matlab';
text = 'AHOJJAJSEMTVUJSUPERPOMOCNIK';

keyNums = double(key);
keySorted = zeros(1, length(key));
[c cisla] = sort(keyNums);

for i = 1:length(c)
    for j = 1:length(c)
        if c(i) == keyNums(j) && keySorted(j) == 0
            keySorted(j) = i;
            break;
        end
    end
end

k = 1;
l = 1;
for i = 1:size(text, 2)
    M(k, l) = text(i);
    l = l + 1;
    if mod(i, 6) == 0
        k = k+1;
        l = 1;
    end
end

for i=1:length(keySorted)
    for j = 1:length(keySorted)
        if i == keySorted(j)
            cipher{i} = M(:,j)';
        end
    end
    
end

strjoin(cipher, '')