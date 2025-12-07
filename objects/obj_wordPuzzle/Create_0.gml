
word_list = [
    ["GHTFI", "FIGHT"],
    ["EESACP", "ESCAPE"],
    ["NUR", "RUN"],
    ["DIHE", "HIDE"],
    ["VEOM", "MOVE"]
];

sequence = [];
var used_indices = [];

for (var i = 0; i < 3; i++)
{
    var index = irandom(array_length(word_list) - 1);

 
    while (array_contains(used_indices, index)) {
        index = irandom(array_length(word_list) - 1);
    }

    array_push(used_indices, index);
    array_push(sequence, word_list[index]);
}

current_word = 0;

scrambled = sequence[current_word][0];
solution  = sequence[current_word][1];

player_input = "";
