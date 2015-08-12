function [split_cell] = split_codon(input_string)
if mod(length(input_string), 3) ~= 0
    warning('Sequence length not a mulitple of 3.')
    return
end

split_cell = {};
i = 1;
while i < length(input_string)
    split_cell = [split_cell; input_string(i:i+2)];
    i = i + 3;
end