progs="~/Dropbox/05_PROGRAMS";

dirs = {
      "/000_hyper_graph/"
    , "/03_PARSER/"
    , "/06_Linear_Algebra_Functions/"
    , "/07_Logic_Functions/"
    , "/12_statistical_functions/"
    , "/14_vector_calculus_functions/"
    , "/17_steno/steno/"
    , "/19_brain_computer_interface/"
    , "/19_brain_computer_interface/01_MIND_EXTENSION/mindExtension/"
    , "/19_brain_computer_interface/02_SHORTCUT_LIST/shortcutList/"
    , "/19_brain_computer_interface/03_DECK_OF_JOKERS/"
    , "/27_Russian/"
};
append = AppendTo[$Path, progs<>#]&;
append /@ dirs;


$do=FrontEndTokenExecute;
do=FrontEndTokenExecute;
(*$Messages = {};*)


Get["mindExtension`"];
Get["abilities`"];
Get["hyperGraph`"];
Get["cephalon`"];
Get["cel`"];



(*Get["limitOfTheRatio`"];*)
Get["RussianTools`"];


(*Get["lin`"];*)
(*Get["stenoLinux`"];*)

(*Get["logical`"];*)


(*Get["truthtree1`"];*)
(*Get["stenotypy`"]*)


(*Get["parser`"]*)







(****************************************************************)
(****************************************************************)

(****************************************************************)
(****************************************************************)
(*$Messages = {};*)
















