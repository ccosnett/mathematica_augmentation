Get["mindExtension`"];
Get["abilities`"];
Get["mmaEdin`"];
Get["t`"];
Get["cephalon`"];
Get["cel`"];
Get["hyperGraph`"];



$Messages = {}

(*** User Mathematica initialization file **)

AppendTo[$Path, "/home/conor/face"];
AppendTo[$Path, "/home/conor/face/cross"];

AppendTo[$Path, "/home/conor/t_temporary"];
AppendTo[$Path, "/home/conor/t"];

AppendTo[$Path, "/home/conor/el"];
AppendTo[$Path, "/home/conor/Dropbox/05_PROGRAMS/onion/"];
AppendTo[$Path, "/home/conor/Dropbox/05_PROGRAMS/04_Ritchey_Chretien/"];
AppendTo[$Path, "/home/conor/Dropbox/05_PROGRAMS/000_hyper_graph/"];
AppendTo[$Path, "/home/conor/Dropbox/05_PROGRAMS/02_000PYTHONICA/"];
AppendTo[$Path, "/home/conor/Dropbox/05_PROGRAMS/03_PARSER/"];
AppendTo[$Path, "/home/conor/Dropbox/05_PROGRAMS/07_Logic_Functions/"];
AppendTo[$Path, "/home/conor/Dropbox/05_PROGRAMS/000_hyper_graph/"];
AppendTo[$Path, "/home/conor/Dropbox/05_PROGRAMS/04_mathematica_simulation_of_neural_networks_playground/"];
AppendTo[$Path, "/home/conor/Dropbox/05_PROGRAMS/05_back_propagation/"];
AppendTo[$Path, "/home/conor/Dropbox/04_pedro_stuff/15_Lectures_on_Youtube"];
AppendTo[$Path, "/home/conor/Dropbox/05_PROGRAMS/07_Logic_Functions/"];
AppendTo[$Path, "/home/conor/Dropbox/05_PROGRAMS/19_brain_computer_interface/01_MIND_EXTENSION/mindExtension/"];
AppendTo[$Path, "/home/conor/Dropbox/05_PROGRAMS/19_brain_computer_interface/02_SHORTCUT_LIST/shortcutList/"];

(****************************************************************)
(****************************************************************)
AppendTo[$Path, "~/Dropbox/05_PROGRAMS/000_hyper_graph/"];
AppendTo[$Path, "~/Dropbox/05_PROGRAMS/000_hyper_graph/mmaEdinburgh/"];


AppendTo[$Path, "~/Dropbox/05_PROGRAMS/19_brain_computer_interface/02_SHORTCUT_LIST/shortcutList/"];
AppendTo[$Path, "~/Dropbox/05_PROGRAMS/02_000PYTHONICA/"];
AppendTo[$Path, "~/Dropbox/05_PROGRAMS/03_PARSER/"];
AppendTo[$Path, "~/Dropbox/05_PROGRAMS/04_mathematica_simulation_of_neural_networks_playground/"];
AppendTo[$Path, "~/Dropbox/05_PROGRAMS/06_Linear_Algebra_Functions/"];
AppendTo[$Path, "~/Dropbox/05_PROGRAMS/07_Logic_Functions/"];
AppendTo[$Path, "~/Dropbox/05_PROGRAMS/12_statistical_functions/"];
AppendTo[$Path, "~/Dropbox/05_PROGRAMS/14_vector_calculus_functions/"];
AppendTo[$Path, "~/Dropbox/05_PROGRAMS/13_images"];
AppendTo[$Path, "~/Dropbox/05_PROGRAMS/17_steno"];
AppendTo[$Path, "~/Dropbox/05_PROGRAMS/19_brain_computer_interface/"];
AppendTo[$Path, "~/Dropbox/05_PROGRAMS/19_brain_computer_interface/01_MIND_EXTENSION/mindExtension/"];
AppendTo[$Path, "~/Dropbox/05_PROGRAMS/19_brain_computer_interface/03_DECK_OF_JOKERS/"];
(****************************************************************)
(****************************************************************)


Get["ctrl_cmd_n_.m"];




Get["abilities`"]
Get["mindExtension`"]
Get["cephalon`"];
 Get["neuralNetExplorations`"];
 Get["truthtabler`"];
Get["cel`"]
Get["parser`"];
Get["cel`"];
Get["hyperGraph`"];
 Get["ipevoFunctions`"];
Get["linearModel`"];










 Get["backprop1`"];

 Get["toy2D`"];
 Get["conv`"];
 Get["tTemporary`"];

 Get["t`"];
 Get["cubeCoords`"];
 Get["cross`"];
 Get["onion`"];
 Get["rit`"]
 Get["linearModel`"];
 Get["mnist`"];


With[
  { nb := SelectedNotebook[]
  , c := EvaluationCell[]
  }
, With[
    { cv := CurrentValue[nb, {"TaggingRules", "LastCursorPosition"}]
    , pos := FrontEndExecute@FrontEnd`UndocumentedGetSelectionPacket[nb]
    }
  , With[
      { savePosition := (
          cv = If[MemberQ[pos, "CharacterRange" -> _], Last["CharacterRange" /. pos], False]
        )
      }
    , SetOptions[nb
      , CellEventActions :> {
          {"MenuCommand", "HandleShiftReturn"} :> savePosition
        , {"MenuCommand", "EvaluateCells"} :> savePosition
        , PassEventsDown -> True
        }
      , CellEpilog :>  If[
          IntegerQ[cv]
        , SelectionMove[c, Before, CellContents]
        ; SelectionMove[nb, Next, Character, cv]
        ; cv = False
        ]
      ]
    ]
  ]
]
