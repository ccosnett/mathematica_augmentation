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
