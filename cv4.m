clc; clear all; close all; echo off;

key = 'matlab';
text = 'AHOJJAJSEMTVUJSUPERPOMOCNIK';

keyNums = double(key);
[c cisla] = sort(keyNums);
text=pad(text,ceil(length(text)/6)*6);
M=reshape(text,6,[]);
M=M(cisla,:);
M=M.';
convertCharsToStrings(M)