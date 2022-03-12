(* Content-type: application/vnd.wolfram.mathematica *)

(*** Wolfram Notebook File ***)
(* http://www.wolfram.com/nb *)

(* CreatedBy='Mathematica 11.3' *)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       158,          7]
NotebookDataLength[      2539,         83]
NotebookOptionsPosition[      2097,         68]
NotebookOutlinePosition[      2396,         82]
CellTagsIndexPosition[      2353,         79]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[RawData["Cell[StyleData[StyleDefinitions -> \"Default.nb\"]]"]]

},
FrontEndVersion->"11.3 for Mac OS X x86 (32-bit, 64-bit Kernel) (March 5, \
2018)",
StyleDefinitions->"PrivateStylesheetFormatting.nb",

    With[{cv := CurrentValue[EvaluationCell[], {TaggingRules, "LastCursorPosition"}]},
    SetOptions[EvaluationNotebook[],
        StyleDefinitions -> Notebook[
            {
            Cell[StyleData[StyleDefinitions->"Default.nb"]],
            Cell[StyleData["Input"],
                CellEventActions -> {
                    {"MenuCommand","HandleShiftReturn"} :> Set[
                        cv,
                        Replace[
                            Lookup[
                                Developer`CellInformation @ EvaluationCell[],
                                "CursorPosition"
                            ],
                            {
                                {_, i_} -> i,
                                _ -> False
                            }
                        ]
                    ],
                    PassEventsDown->True
                },
                CellEpilog :> Replace[cv,
                    i_Integer :> (
                        SelectionMove[EvaluationCell[], Before, CellContents];
                        SelectionMove[EvaluationNotebook[], Next, Character, i];
                        cv = False
                    )
                ],
                TaggingRules -> {}
            ]
            },
            StyleDefinitions->"PrivateStylesheetFormatting.nb"
        ]
    ]
]

]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[558, 20, 68, 0, 79,ExpressionUUID->"13679cb5-6ba0-4759-ae9b-676c2929c9cb"],
Cell[629, 22, 106, 4, 112,ExpressionUUID->"c77bd847-8ac4-4628-b5df-b907863564fb",
 MenuSortingValue->10000],
Cell[738, 28, 1355, 38, 924, "Input",ExpressionUUID->"1eefbd5e-09b1-4d86-a4e2-fdf3d97aba06"]
}
]
*)

(* End of internal cache information *)

