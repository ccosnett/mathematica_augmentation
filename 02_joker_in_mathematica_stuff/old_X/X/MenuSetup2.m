Menu["Menu for the X Front End",
{
	Menu["&File", 
	{
		Menu["&New",
		{
			MenuItem["&Notebook (.nb)", "New", MenuKey["n", Modifiers->{"Control"}]],
			MenuItem["St&yled Notebook...", FrontEndExecute[{FrontEnd`NotebookOpen[FrontEnd`FindFileOnPath["StylesheetChooser.nb", "PalettePath"]]}]],
			MenuItem["Pre&senter Notebook...", FrontEndExecute[{FrontEnd`NotebookOpen[FrontEnd`FindFileOnPath["PresenterNotebookChooser.nb", "PalettePath"]]}]],
			Delimiter,
			MenuItem["Te&mplate Notebook", KernelExecute[NotebookTemplating`CreateTemplateNotebook[]], MenuEvaluator->"System", Method -> "Queued"],
			MenuItem["Testing Notebook", KernelExecute[Block[{$ContextPath}, Needs["MUnit`"]; MUnit`PaletteNewTestNotebook[]]], MenuEvaluator->"System"],
			MenuItem["Data &Resource", KernelExecute[CreateNotebook["DataResource"]], MenuEvaluator -> Automatic, Method -> "Queued"],
			MenuItem["&Demonstration", KernelExecute[FrontEnd`Private`PutDemonstrationsTemplate[]], MenuEvaluator -> "System"],
			Delimiter,
			MenuItem["&Package (.wl)", "NewPackage"],
			MenuItem["S&cript (.wls)", "NewScript"],
			MenuItem["&Text File (.txt)", "NewText"],
			MenuItem["C&hat", "NewChat"]
		}],
		MenuItem["Open", "MenuListOpenItems", MenuAnchor->True],
		MenuItem["&Close", "Close", MenuKey["w", Modifiers->{"Control"}]],
		MenuItem["Save", "MenuListSaveItems", MenuAnchor->True],
		MenuItem["Save Se&lection As...", "SelectionSaveSpecial", RemoveMask->{"NoLocalFileAccess"}],
		MenuItem["Re&vert...", "Revert"],
		Delimiter,
		MenuItem["CD&F Preview", "CDFPreview", RemoveMask->{"NoLocalFileAccess"}],
		Delimiter,
		MenuItem["&Install...", FrontEndExecute[{FrontEnd`NotebookOpen[
			FrontEnd`FindFileOnPath["InstallDialog.nb", "PrivatePathsSystemResources"]]}], RemoveMask->{"NoLocalFileAccess"}],
		Delimiter,
		Menu["Printin&g Settings",
		{
			MenuItem["Page &Setup...", "SystemPrintOptionsDialog"],
			MenuItem["Printing &Options...", "PrintOptionsDialog"],
			MenuItem["&Headers and Footers...", KernelExecute[FE`headersFootersDialog[]], MenuEvaluator -> "System"],
			ToggleMenuItem["Show Page &Breaks", ShowPageBreaks ->Toggle, Scope->NotebookDefault],
			Delimiter,
			Menu["&Printing Environment",
			{
				MenuItem["Styles", "MenuListPrintingStyleEnvironments", MenuAnchor->True]
			}]
		}],
		MenuItem["&Print...", "PrintDialog", MenuKey["p", Modifiers->{"Control"}]],
		MenuItem["Print Previe&w...", "PrintPreviewDialog"],
		MenuItem["P&rint Selection...", "PrintSelectionDialog", MenuKey["P", Modifiers->{"Control", "Shift"}]],
		Delimiter,
		MenuItem["First Favorite File", "MenuListNotebooksMenu", MenuAnchor->True],
		Delimiter,
		MenuItem["&Quit", "FrontEndQuit", MenuKey["q", Modifiers->{"Control"}]]
	}],
	Menu["&Edit", 
	{
		MenuItem["&Undo", "Undo", MenuKey["z", Modifiers->{"Control"}]],
		MenuItem["Re&do", "Redo", MenuKey["z", Modifiers->{"Control", "Shift"}]],
		Delimiter,
		MenuItem["Cu&t", "Cut", MenuKey["x", Modifiers->{"Control"}]],
		MenuItem["&Copy", "Copy", MenuKey["c", Modifiers->{"Control"}]],
		Menu["Cop&y As",
		{
			MenuItem["Plain &Text", FrontEnd`CopySpecial["PlainText"], MenuKey["C", Modifiers->{"Control", "Shift"}]],
			MenuItem["&Input Text", FrontEnd`CopySpecial["InputText"]],
			MenuItem["&LaTeX",
				KernelExecute[ToExpression["FrontEnd`CopyAsTeX[]"]],
				MenuEvaluator -> "System"],
			MenuItem["M&athML", 
				KernelExecute[ToExpression["FrontEnd`CopyAsMathML[]"]],
				MenuEvaluator -> "System"],
			Delimiter,
			MenuItem["Cell &Object", FrontEnd`CopySpecial["CellObject"]],
			MenuItem["&Cell Expression", FrontEnd`CopySpecial["CellExpression"]],
			MenuItem["&Notebook Expression", FrontEnd`CopySpecial["NotebookExpression"]],
			MenuItem["Notebook Ob&ject", FrontEnd`CopySpecial["NotebookObject"]],
			Delimiter,
			MenuItem["EPS", FrontEnd`CopySpecial["EPS"]]
		}],
		MenuItem["&Paste", FrontEnd`Paste[Automatic], MenuKey["v", Modifiers->{"Control"}]],
		MenuItem["Clea&r\tDelete", "Clear"],
		Delimiter,
		MenuItem["E&xtend Selection", "ExpandSelection", MenuKey[".", Modifiers->{"Control"}]],
		MenuItem["Select &All", "SelectAll", MenuKey["a", Modifiers->{"Control"}]],
		MenuItem["Check &Balance", "Balance", MenuKey["B", Modifiers->{"Control", "Shift"}]],
		MenuItem["Un/C&omment Selection", KernelExecute[FE`toggleComment[]], MenuKey["/", Modifiers->{"Command"}], MenuEvaluator -> "System", Method -> "Queued"],
		Delimiter,
		MenuItem["Complete Se&lection", FrontEnd`CompleteSelection[True], MenuKey["k", Modifiers->{"Control"}]],
		MenuItem["&Make Template", "TemplateSelection", MenuKey["K", Modifiers->{"Control", "Shift"}]],
		MenuItem["Chec&k Spelling...", "FindNextMisspelling", MenuKey[";", Modifiers->{"Command"}]],
		Delimiter,
		MenuItem["&Find...", KernelExecute[If[CurrentValue["PluginEnabled"], FrontEndTokenExecute[InputNotebook[], "FindExpression"], FrontEndTokenExecute["SelectionSetFindEx"];FrontEnd`DialogOpen["Find.nb", True]]], MenuEvaluator -> "System", MenuKey["f", Modifiers->{"Control"}]],
		MenuItem["&Enter Selection", "SelectionSetFind", MenuKey["e", Modifiers->{"Control"}]],
		MenuItem["Find &Next", "FindNextMatch", MenuKey["F3", Modifiers->{}]],
		MenuItem["Find Pre&vious", "FindPreviousMatch", MenuKey["F3", Modifiers->{"Shift"}]],
(*		MenuItem["Find Next Re&d", "FindNextWarningColor"],*)
		Delimiter,
		MenuItem["Preference&s...", "PreferencesDialog"]
	}],
	Menu["&Insert",
	{
		MenuItem["&Input from Above", FrontEnd`DuplicatePreviousInput[After], MenuKey["l", Modifiers->{"Control"}]],
		MenuItem["&Output from Above", FrontEnd`DuplicatePreviousOutput[After], MenuKey["L", Modifiers->{"Control", "Shift"}]],
		Delimiter,
		MenuItem["Cell with Same St&yle", "SimilarCellBelow",  MenuKey["Return", Modifiers->{"Command"}]],
		Delimiter,
		MenuItem["Inline Free-form Input",
			KernelExecute[AlphaIntegration`LinguisticAssistant[InputNotebook[]]], 
			MenuKey["=", Modifiers->{"Control"}], MenuEvaluator -> "Local"],
		Delimiter,
		MenuItem["&Special Character...", FrontEndExecute[{FrontEnd`NotebookOpen["SpecialCharacters.nb"]}]],
		MenuItem["&Color...", "ColorSelectorDialog"],
		Menu["Citatio&n",
		{
			MenuItem["Bibliographical &Note...", "InsertBibNote"],
			MenuItem["Dele&te Bibliographical Note", "DeleteBibReference"],
			MenuItem["&Edit Bibliographical Note...", "EditBibNote"],
			Delimiter,
			MenuItem["Set / Change Note S&tyle...", "SetBibNoteStyle"],
			MenuItem["Re&build Notes", "RebuildBibAndNotes"]
		}],
		Menu["&Typesetting", 
		{
			MenuItem["&End Subexpression", "MoveExpressionEnd", MenuKey[" ", Modifiers->{"Control"}]],
			Delimiter,
			MenuItem["&Superscript", "Superscript", MenuKey["6", Modifiers->{"Control"}]],
			MenuItem["Subs&cript", "Subscript", MenuKey["-", Modifiers->{"Control"}]],
			MenuItem["&Above", "Above", MenuKey["7", Modifiers->{"Control"}]],
			MenuItem["&Below", "Below", MenuKey["4", Modifiers->{"Control"}]],
			MenuItem["&Opposite Position", "Otherscript", MenuKey["5", Modifiers->{"Control"}]],
			Delimiter,
			MenuItem["Matching []", "InsertMatchingBrackets", MenuKey["]", Modifiers->{"Command"}]],
			MenuItem["Matching {}", "InsertMatchingBraces", MenuKey["}", Modifiers->{"Command"}]],
			MenuItem["Matching ()", "InsertMatchingParentheses", MenuKey[")", Modifiers->{"Command"}]],
			Delimiter,
			MenuItem["&Fraction", "Fraction", MenuKey["/", Modifiers->{"Control"}]],
			MenuItem["&Radical", "Radical", MenuKey["2", Modifiers->{"Control"}]],
			Delimiter,
			MenuItem["S&tart Inline Cell", "CreateInlineCell", MenuKey["9", Modifiers->{"Control"}]],
			MenuItem["End &Inline Cell", "MoveNextCell", MenuKey["0", Modifiers->{"Control"}]],
			MenuItem["Add Fra&me", FrontEndExecute[{
				FrontEnd`NotebookApply[FrontEnd`InputNotebook[],
						BoxData[FrameBox["\[SelectionPlaceholder]"]]]}]],
			Delimiter,
			MenuItem["Nudge &Left\tAlt+Left", "NudgeLeft"],
			MenuItem["Nudge Ri&ght\tAlt+Right", "NudgeRight"],
			MenuItem["Nudge &Down", "NudgeDown", MenuKey["Down", Modifiers->{"Command"}]],
			MenuItem["Nudge &Up", "NudgeUp", MenuKey["Up", Modifiers->{"Command"}]],
			MenuItem["Remove Ad&justments", "RemoveAdjustments"]
		}],
		Menu["Table/Matrix",
		{
			MenuItem["&New...", "CreateGridBoxDialog"],
			Delimiter,
			MenuItem["Add &Row", "NewRow", MenuKey["Return", Modifiers->{"Control"}]],
			MenuItem["Add &Column", "NewColumn", MenuKey[",", Modifiers->{"Control"}]],
			Delimiter,
			MenuItem["&Make Spanning", "MakeSelectionSpan"],
			MenuItem["&Split Spanning", "MakeSelectionNotSpan"]
		}],
		Menu["Ho&rizontal Line",
		{
			MenuItem["N&one", CellFrame->Inherited, Scope->SelectionCell],
			Delimiter,
			MenuItem["&Thin Line Above", CellFrame->{{0,0},{0,0.5}}, Scope->SelectionCell],
			MenuItem["&Medium Line Above", CellFrame->{{0,0},{0,2}}, Scope->SelectionCell],
			MenuItem["T&hick Line Above", CellFrame->{{0,0},{0,3}}, Scope->SelectionCell],
			Delimiter,
			MenuItem["Th&in Line Below", CellFrame->{{0,0},{0.5,0}}, Scope->SelectionCell],
			MenuItem["Me&dium Line Below", CellFrame->{{0,0},{2,0}}, Scope->SelectionCell],
			MenuItem["Thi&ck Line Below", CellFrame->{{0,0},{3,0}}, Scope->SelectionCell],
			Delimiter,
			MenuItem["Paste Thi&n Line Object", FrontEndExecute[{
					FrontEnd`NotebookWrite[FrontEnd`InputNotebook[], 
						Cell["", "Text", 
							Editable->False,
							Selectable->False,
							CellElementSpacings->{"CellMinHeight"->1},
							ShowCellBracket->False,
							CellMargins->{{0, 0}, {1, 1}},
							CellSize->{Inherited, 3},
							CellFrame->{{0,0},{0,0.5}},
							CellFrameMargins->0,
							CellFrameColor->RGBColor[0, 0, 1]], 
						After]
				}]],
			MenuItem["&Paste Medium Line Object", FrontEndExecute[{
					FrontEnd`NotebookWrite[FrontEnd`InputNotebook[], 
						Cell["", "Text", 
							Editable->False,
							Selectable->False,
							CellElementSpacings->{"CellMinHeight"->1},
							ShowCellBracket->False,
							CellMargins->{{0, 0}, {1, 1}},
							CellSize->{Inherited, 4},
							CellFrame->{{0,0},{0,2}},
							CellFrameMargins->0,
							CellFrameColor->RGBColor[0, 0, 1]], After]
				}]],
			MenuItem["Paste Thic&k Line Object", FrontEndExecute[{
					FrontEnd`NotebookWrite[FrontEnd`InputNotebook[], 
						Cell["", "Text", 
							Editable->False,
							Selectable->False,
							CellElementSpacings->{"CellMinHeight"->1},
							ShowCellBracket->False,
							CellMargins->{{0, 0}, {1, 1}},
							CellSize->{Inherited, 5},
							CellFrame->{{0,0},{0,3}},
							CellFrameMargins->0,
							CellFrameColor->RGBColor[0, 0, 1]], After]
				}]]
		}],
		MenuItem["&File Path...", "FileNameDialog", RemoveMask->{"NoLocalFileAccess"}],
		Delimiter,
		Menu["&Picture",
		{
			MenuItem["From &File...", "ImportPictures"],
			MenuItem["New &Graphic", "InsertNewGraphic", MenuKey["1", Modifiers->{"Control"}]]
		}],
		MenuItem["Fi&le...", "Import", RemoveMask->{"NoLocalFileAccess"}],
		Delimiter,
		MenuItem["&Hyperlink...", "CreateHyperlinkDialog", MenuKey["H", Modifiers->{"Control", "Shift"}]],
		MenuItem["&Automatic Numbering...", "CreateCounterBoxDialog"],
		Delimiter,
     		MenuItem["Page &Break", "InsertSplitBreak"]
	}],
	Menu["Fo&rmat",
	{
		Menu["&Style",
		{
			LinkedItems[{
				MenuItem["Start Cell Style Names", "MenuListStyles", MenuAnchor->True]
			}],
			Delimiter,
			MenuItem["&Other...", "StyleOther", MenuKey["0", Modifiers->{"Command"}]]
		}],
		MenuItem["Clear Fo&rmatting", "ClearCellOptions", MenuKey[" ", Modifiers->{"Control", "Shift"}]],
		Delimiter,
		Menu["St&ylesheet", 
		{
			LinkedItems[{
				MenuItem["Styles", "MenuListStyleDefinitions", MenuAnchor->True]
			}]
		}],
		Menu["Screen &Environment",
		{
			LinkedItems[{
				MenuItem["Styles", "MenuListScreenStyleEnvironments", MenuAnchor->True]
			}]
		}],
		MenuItem["Edit Sty&lesheet...", "EditStyleDefinitions"],
		Delimiter,
		MenuItem["Option &Inspector...", "OptionsDialog", Scope->Selection, MenuKey["O", Modifiers->{"Control", "Shift"}]],
		Delimiter,
		MenuItem["&Font...", "FontPanel"],
		Menu["Fa&ce",
		{
			MenuItem["&Plain", "PlainFont"],
			ToggleMenuItem["&Bold", FontWeight->Toggle, MenuKey["b", Modifiers->{"Control"}]],
			ToggleMenuItem["&Italic", FontSlant->Toggle, MenuKey["i", Modifiers->{"Control"}]],
			ToggleMenuItem["&Underline", FrontEnd`FontVariationsUnderline->Toggle, MenuKey["u", Modifiers->{"Control"}]]
		}],
		Menu["Si&ze",
		{
			MenuItem["&Larger", FontSize->Larger, MenuKey["=", Modifiers->{"Command"}]],
			MenuItem["&Smaller", FontSize->Smaller, MenuKey["-", Modifiers->{"Command"}]],
			Delimiter,
			LinkedItems[{
				MenuItem["&9 Point", FontSize->9],
				MenuItem["1&0 Point", FontSize->10],
				MenuItem["&12 Point", FontSize->12],
				MenuItem["1&4 Point", FontSize->14],
				MenuItem["1&6 Point", FontSize->16],
				MenuItem["1&8 Point", FontSize->18],
				MenuItem["&24 Point", FontSize->24],
				MenuItem["&36 Point", FontSize->36],
				MenuItem["&72 Point", FontSize->72]
			}],
			Delimiter,
			MenuItem["&Other...", "FontSizeDialog"]
		}],
		Menu["Te&xt Color", 
		{
			MenuItem["Palette...", "FontColorDialog"],
			Delimiter,
			LinkedItems[{
				MenuItem["Black",	FontColor->GrayLevel[0]],
				MenuItem["Gray",	FontColor->GrayLevel[0.5]],
				MenuItem["White",	FontColor->GrayLevel[1]],
				Delimiter,
				MenuItem["Blue",	FontColor->RGBColor[0, 0, 1]],
				MenuItem["Brown",	FontColor->RGBColor[0.6, 0.4, 0.2]],
				MenuItem["Cyan",	FontColor->RGBColor[0, 1, 1]],
				MenuItem["Green",	FontColor->RGBColor[0, 1, 0]],
				MenuItem["Magenta",	FontColor->RGBColor[1, 0, 1]],
				MenuItem["Orange",	FontColor->RGBColor[1, 0.5, 0]],
				MenuItem["Pink",	FontColor->RGBColor[1, 0.5, 0.5]],
				MenuItem["Purple",	FontColor->RGBColor[0.5, 0, 0.5]],
				MenuItem["Red",		FontColor->RGBColor[1, 0, 0]],
				MenuItem["Yellow",	FontColor->RGBColor[1, 1, 0]]
			}]
		}],
		Menu["Back&ground Color", 
		{
			MenuItem["Palette...", "BackgroundDialog"],
			Delimiter,
			LinkedItems[{
				MenuItem["None",		Background->None],
				Delimiter,
				MenuItem["Black",		Background->GrayLevel[0]],
				MenuItem["Gray",		Background->GrayLevel[0.5]],
				MenuItem["Light Gray",	Background->GrayLevel[0.85]],
				MenuItem["White",		Background->GrayLevel[1]],
				Delimiter,
				MenuItem["Light Blue",	Background->RGBColor[0.87, 0.94, 1]],
				MenuItem["Light Brown",	Background->RGBColor[0.94, 0.91, 0.88]],
				MenuItem["Light Cyan",	Background->RGBColor[0.9, 1, 1]],
				MenuItem["Light Green",	Background->RGBColor[0.88, 1, 0.88]],
				MenuItem["Light Magenta",Background->RGBColor[1, 0.9, 1]],
				MenuItem["Light Orange",Background->RGBColor[1, 0.9, 0.8]],
				MenuItem["Light Pink",	Background->RGBColor[1, 0.925, 0.925]],
				MenuItem["Light Purple",Background->RGBColor[0.94, 0.88, 0.94]],
				MenuItem["Light Red",	Background->RGBColor[1, 0.85, 0.85]],
				MenuItem["Light Yellow",Background->RGBColor[1, 1, 0.85]],
				Delimiter,
				MenuItem["Orange",		Background->RGBColor[1, 0.5, 0]],
				MenuItem["Pink",		Background->RGBColor[1, 0.5, 0.5]],
				MenuItem["Yellow",		Background->RGBColor[1, 1, 0]]
			}]
		}],
		Menu["Cell &Dingbat",
		{
			LinkedItems[{
				MenuItem["None", CellDingbat->None, Scope->SelectionCell],
				Delimiter,
				MenuItem["Filled Square",		CellDingbat->"\[FilledSquare]",			Scope->SelectionCell],
				MenuItem["Gray Square",			CellDingbat->"\[GraySquare]",			Scope->SelectionCell],
				MenuItem["Empty Square",		CellDingbat->"\[EmptySquare]",			Scope->SelectionCell],
				MenuItem["Dotted Square",		CellDingbat->"\[DottedSquare]",			Scope->SelectionCell],
				MenuItem["Filled Small Square",	CellDingbat->"\[FilledSmallSquare]",	Scope->SelectionCell],
				MenuItem["Empty Small Square",	CellDingbat->"\[EmptySmallSquare]",		Scope->SelectionCell],
				Delimiter,
				MenuItem["Filled Circle",		CellDingbat->"\[FilledCircle]",			Scope->SelectionCell],
				MenuItem["Gray Circle",			CellDingbat->"\[GrayCircle]",			Scope->SelectionCell],
				MenuItem["Empty Circle",		CellDingbat->"\[EmptyCircle]",			Scope->SelectionCell],
				MenuItem["Filled Small Circle",	CellDingbat->"\[FilledSmallCircle]",	Scope->SelectionCell],
				MenuItem["Empty Small Circle",	CellDingbat->"\[EmptySmallCircle]",		Scope->SelectionCell],
				Delimiter,
				MenuItem["Filled Diamond",		CellDingbat->"\[FilledDiamond]",		Scope->SelectionCell],
				MenuItem["Empty Diamond",		CellDingbat->"\[EmptyDiamond]",			Scope->SelectionCell],
				MenuItem["Filled Up Triangle",	CellDingbat->"\[FilledUpTriangle]",		Scope->SelectionCell],
				MenuItem["Empty Up Triangle",	CellDingbat->"\[EmptyUpTriangle]",		Scope->SelectionCell],
				MenuItem["Filled Down Triangle",CellDingbat->"\[FilledDownTriangle]",	Scope->SelectionCell],
				MenuItem["Empty Down Triangle",	CellDingbat->"\[EmptyDownTriangle]",	Scope->SelectionCell],
				Delimiter,
				MenuItem["Watch",				CellDingbat->"\[WatchIcon]",			Scope->SelectionCell],
				MenuItem["Filled Star",			CellDingbat->"\[FivePointedStar]",		Scope->SelectionCell],
				MenuItem["Happy Smiley",		CellDingbat->"\[HappySmiley]",			Scope->SelectionCell],
				MenuItem["Neutral Smiley",		CellDingbat->"\[NeutralSmiley]",		Scope->SelectionCell],
				MenuItem["Sad Smiley",			CellDingbat->"\[SadSmiley]",			Scope->SelectionCell],
				MenuItem["Light Bulb",			CellDingbat->"\[LightBulb]",			Scope->SelectionCell],
				MenuItem["Wolf",				CellDingbat->"\[Wolf]",					Scope->SelectionCell],
				Delimiter,
				MenuItem["Club Suit",			CellDingbat->"\[ClubSuit]",				Scope->SelectionCell],
				MenuItem["Diamond Suit",		CellDingbat->"\[DiamondSuit]",			Scope->SelectionCell],
				MenuItem["Heart Suit",			CellDingbat->"\[HeartSuit]",			Scope->SelectionCell],
				MenuItem["Spade Suit",			CellDingbat->"\[SpadeSuit]",			Scope->SelectionCell]
			}]
		}],
		Delimiter,
		Menu["Text &Alignment",
		{
			LinkedItems[{
			MenuItem["Align &Left", TextAlignment->Left, Scope->SelectionCell],
			MenuItem["Align at &25%", TextAlignment->-0.5, Scope->SelectionCell],
			MenuItem["Align &Center", TextAlignment->Center, Scope->SelectionCell],
			MenuItem["Align at &75%", TextAlignment->0.5, Scope->SelectionCell],
			MenuItem["Align &Right", TextAlignment->Right, Scope->SelectionCell],
			MenuItem["On &AlignmentMarker", TextAlignment->AlignmentMarker, Scope->SelectionCell]
			}]
		}],
		Menu["Text &Justification",
		{
			LinkedItems[{
			MenuItem["&None", TextJustification->0.0, Scope->SelectionCell],
			MenuItem["&25%", TextJustification->0.25, Scope->SelectionCell],
			MenuItem["&50%", TextJustification->0.5, Scope->SelectionCell],
			MenuItem["&75%", TextJustification->0.75, Scope->SelectionCell],
			MenuItem["&Full", TextJustification->1.0, Scope->SelectionCell]
			}]
		}],
		Menu["&Word Wrapping",
		{
			LinkedItems[{
			MenuItem["&Don't Word Wrap", PageWidth ->Infinity, Scope->SelectionCell],
			MenuItem["&Wrap at Paper Width", PageWidth ->PaperWidth, Scope->SelectionCell],
			MenuItem["W&rap at Window Width", PageWidth ->WindowWidth, Scope->SelectionCell]
			}]
		}]
	}],
	Menu["&Cell",
	{
		Menu["&Convert To",
		{
			MenuItem["&InputForm", "SelectionConvert"->InputForm, MenuKey["I", Modifiers->{"Control", "Shift"}]],
			MenuItem["&Raw InputForm", "SelectionConvert"->RawInputForm, MenuKey["R", Modifiers->{"Control", "Shift"}]],
			MenuItem["&OutputForm", "SelectionConvert"->OutputForm],
			MenuItem["First Convert to BoxForm", "MenuListConvertFormatTypes", MenuAnchor->True],
			Delimiter,
			MenuItem["&Bitmap", "SelectionConvert"->"Bitmap"],
			Delimiter,
			MenuItem["&Text Display", "SelectionDisplayAs"->TextForm],
			MenuItem["I&nputForm Display", "SelectionDisplayAs"->InputForm],
			MenuItem["First Display As BoxForm", "MenuListDisplayAsFormatTypes", MenuAnchor->True]
		}],
		Delimiter,
		Menu["Cell &Properties",
		{
			ToggleMenuItem["&Open", CellOpen->Toggle, Scope->SelectionCell],
			ToggleMenuItem["&Editable", Editable->Toggle, Scope->SelectionCell],
			ToggleMenuItem["E&valuatable", Evaluatable->Toggle, Scope->SelectionCell],
			ToggleMenuItem["&Deployed", Deployed->Toggle, Scope->SelectionCell],
			Delimiter,
			ToggleMenuItem["&Initialization Cell", InitializationCell->Toggle, Scope->SelectionCell, MenuKey["8", Modifiers->{"Control"}]],
			ToggleMenuItem["Initialization Group", FrontEnd`InitializationGroup->Toggle, Scope->SelectionCell]
		}],
		Menu["Cell &Tags",
		{
			MenuItem["&Add/Remove Cell Tags...", "CellTagsEditDialog", MenuKey["j", Modifiers->{"Control"}]],
			Menu["&Find Cell Tag",
			{
				MenuItem["Start Cell Tags Listing", "MenuListCellTags", MenuAnchor->True]
			}],
			ToggleMenuItem["&Show Cell Tags", ShowCellTags->Toggle, Scope->NotebookDefault],
			MenuItem["Cell Tags from &In/Out Names", "CellLabelsToTags"]
		}],
		Menu["&Grouping",
		{
			MenuItem["&Group Cells/Group Together", "CellGroup", MenuKey["G", Modifiers->{"Control", "Shift"}]],
			MenuItem["&Ungroup Cells/Group Normally", "CellUngroup", MenuKey["U", Modifiers->{"Control", "Shift"}]],
			Delimiter,
			LinkedItems[{
				MenuItem["&Manual Grouping", CellGrouping->Manual, Scope->NotebookDefault],
				MenuItem["&Automatic Grouping", CellGrouping->Automatic, Scope->NotebookDefault]
			}],
			Delimiter,
			MenuItem["&Open All Subgroups", "SelectionOpenAllGroups", MenuKey["{", Modifiers->{"Control"}]],
			MenuItem["&Close All Subgroups", "SelectionCloseAllGroups", MenuKey["}", Modifiers->{"Control"}]],
			MenuItem["Close U&nselected Cells", "SelectionCloseUnselectedCells"],
			MenuItem["O&pen/Close Group", "OpenCloseGroup", MenuKey["'", Modifiers->{"Control"}]]
		}],
		Delimiter,
		MenuItem["Di&vide Cell", "CellSplit", MenuKey["D", Modifiers->{"Control", "Shift"}]],
		MenuItem["&Merge Cells", "CellMerge", MenuKey["M", Modifiers->{"Control", "Shift"}]],
		Delimiter,
		MenuItem["&Notebook History...",
				FrontEndExecute[{FrontEnd`NotebookOpen[
					FrontEnd`FindFileOnPath["HistoryOverview.nb", "PrivatePathsSystemResources"]]}]],
		Delimiter,
		MenuItem["De&lete All Output",  "DeleteGeneratedCells"],
		Delimiter,
		ToggleMenuItem["S&how Expression", "ToggleShowExpression", MenuKey["E", Modifiers->{"Control", "Shift"}]]
	}],
	Menu["&Graphics",
	{
		MenuItem["&New Graphic", "InsertNewGraphic", MenuKey["1", Modifiers->{"Control"}]],
		MenuItem["&Drawing Tools",
				FrontEndExecute[{FrontEnd`NotebookOpen[
					FrontEnd`FindFileOnPath["DrawingTools.nb", "PrivatePathsSystemResources"]]}],
				MenuKey["d", Modifiers->{"Control"}]],
		Delimiter,
		MenuItem["Alignment &Guides Enabled", AlignmentGuidesEnabled->Toggle, Scope->GlobalPreferences],
		Delimiter,
		MenuItem["Group", "Group"],
		MenuItem["Ungroup", "Ungroup"],
		Delimiter,
		MenuItem["Move to Front", "MoveToFront"],
		MenuItem["Move to Back",  "MoveToBack"],
		MenuItem["Move Forward", "MoveForward"],
		MenuItem["Move Backward",  "MoveBackward"],
		Delimiter,
		MenuItem["Align Left Sides", "AlignLeftSides"],
		MenuItem["Align Centers Vertically", "AlignCentersVertically"],
		MenuItem["Align Right Sides", "AlignRightSides"],
		Delimiter,
		MenuItem["Align Bottoms", "AlignBottoms"],
		MenuItem["Align Centers Horizontally", "AlignCentersHorizontally"],
		MenuItem["Align Tops", "AlignTops"],
		Delimiter,
		MenuItem["Distribute Left Sides", "DistributeLeftSides"],
		MenuItem["Distribute Centers Horizontally", "DistributeCentersHorizontally"],
		MenuItem["Distribute Right Sides", "DistributeRightSides"],
		MenuItem["Distribute Space Horizontally", "DistributeSpaceHorizontally"],
		Delimiter,
		MenuItem["Distribute Tops", "DistributeTops"],
		MenuItem["Distribute Centers Vertically", "DistributeCentersVertically"],
		MenuItem["Distribute Bottoms", "DistributeBottoms"],
		MenuItem["Distribute Space Vertically", "DistributeSpaceVertically"]
	}],
	Menu["E&valuation",
	{
		MenuItem["&Evaluate Cells", "HandleShiftReturn", MenuKey["Return", Modifiers->{"Shift"}]],
		MenuItem["Evaluate in &Place", FrontEnd`Evaluate[All], MenuKey["Return", Modifiers->{"Control", "Shift"}]],
		MenuItem["E&valuate in Subsession", "SubsessionEvaluateCells", MenuKey["F7", Modifiers->{}]],
		Delimiter,
		MenuItem["Evaluate N&otebook", "EvaluateNotebook"],
		MenuItem["Evaluate Initiali&zation Cells", "EvaluateInitialization"],
		Delimiter,
		MenuItem["Dynamic &Updating Enabled", "ToggleDynamicUpdating"],
		MenuItem["Convert Dynamic to &Literal", 
			FrontEndExecute[{FrontEnd`NotebookDynamicToLiteral[
				FrontEnd`NotebookSelection[FrontEnd`InputNotebook[]]]}]],
		Delimiter,
		MenuItem["&Debugger", FrontEnd`DebuggerSettingsDebuggerEnabled->Toggle, Scope->GlobalPreferences],
		Menu["De&bugger Controls", 
		{
			MenuItem["&Halt", "EvaluatorHalt", MenuKey["Break", Modifiers->{"Control"}]],
			MenuItem["&Continue", "DebuggerContinue", MenuKey["F5", Modifiers->{}]],
			MenuItem["&Step", "DebuggerStep", MenuKey["F10", Modifiers->{}]],
			MenuItem["Step &In", "DebuggerStepIn", MenuKey["F11", Modifiers->{}]],
			MenuItem["Step &Out", "DebuggerStepOut", MenuKey["F11", Modifiers->{"Shift"}]],
			MenuItem["&Finish", "DebuggerFinish", MenuKey["F", Modifiers->{"Control", "Shift"}]],
			Delimiter,
			MenuItem["Toggle &Breakpoint", "DebuggerToggleBreakpoint", MenuKey["F9", Modifiers->{}]],
			Delimiter,
			MenuItem["Show &Debugger Tools Window", FrontEnd`DebuggerSettingsShowTools->Toggle, Scope->GlobalPreferences],
			MenuItem["Show Stac&k Window", FrontEnd`DebuggerSettingsShowStack->Toggle, Scope->GlobalPreferences],
			MenuItem["Show Breakpoi&nts Window", FrontEnd`DebuggerSettingsShowBreakpoints->Toggle, Scope->GlobalPreferences]
		}],
		Delimiter,
		MenuItem["&Abort Evaluation", FrontEnd`EvaluatorAbort[Automatic], MenuKey[".", Modifiers->{"Command"}]],
		MenuItem["&Remove from Evaluation Queue", "RemoveFromEvaluationQueue", MenuKey[".", Modifiers->{"Command", "Shift"}]],
		MenuItem["Find Currentl&y Evaluating Cell", "FindEvaluatingCell"],
		Delimiter,
		MenuItem["Kernel Con&figuration Options...", "ModifyEvaluatorNames", RemoveMask->{"NoLocalFileAccess"}],
		MenuItem["Parallel Kernel Confi&guration...", FrontEndExecute[{
			FrontEnd`SetOptions[FrontEnd`$FrontEnd, FrontEnd`PreferencesSettings -> {"Page" -> "Parallel"}], 
			FrontEnd`FrontEndToken["PreferencesDialog"]}]],
		MenuItem["Parallel &Kernel Status...", KernelExecute[Parallel`Palette`menuStatus[]], MenuEvaluator -> Automatic],
		Delimiter,
		Menu["Defaul&t Kernel",
		{
			MenuItem["First Default Kernel", "MenuListGlobalEvaluators", MenuAnchor->True]
		}, RemoveMask->{"NoLocalFileAccess"}],
		Menu["&Notebook's Kernel",
		{
			MenuItem["First Notebook's Kernel", "MenuListNotebookEvaluators", MenuAnchor->True]
		}, RemoveMask->{"NoLocalFileAccess"}],
		Menu["Notebook's Default &Context", 
		{
			MenuItem["&Global`", CellContext->"Global`", Scope->NotebookDefault],
			MenuItem["&Other...", "CellContextDialog"],
			Delimiter,
			MenuItem["Unique to This &Notebook", CellContext->Notebook, Scope->NotebookDefault],
			MenuItem["Unique to Each &Cell Group", CellContext->CellGroup, Scope->NotebookDefault]
		}],
		Delimiter,
		Menu["&Start Kernel", 
		{
			MenuItem["First Start Kernel", "MenuListStartEvaluators", MenuAnchor->True]
		}],
		Menu["&Quit Kernel", 
		{
			MenuItem["First Quit Kernel", "MenuListQuitEvaluators", MenuAnchor->True]
		}]
	}],
	Menu["&Palettes",
	{
		MenuItem["First Favorite Palette", "MenuListPalettesMenu", MenuAnchor->True]
	}],

	Menu["&Window",
	{
		Menu["&Magnification", 
		{
			MenuItem["&50%", Magnification->0.50, Scope->NotebookDefault],
			MenuItem["&75%", Magnification->0.75, Scope->NotebookDefault],
			MenuItem["&100%", Magnification->1.00, Scope->NotebookDefault],
			MenuItem["1&25%", Magnification->1.25, Scope->NotebookDefault],
			MenuItem["15&0%", Magnification->1.50, Scope->NotebookDefault],
			MenuItem["200&%", Magnification->2.00, Scope->NotebookDefault],
			MenuItem["&300%", Magnification->3.00, Scope->NotebookDefault]
		}],
		Menu["&Toolbar", 
		{
			MenuItem["&Ruler", ToggleOptionListElement[{"WindowToolbars", "RulerBar"}], Scope->NotebookDefault],
			MenuItem["F&ormatting", ToggleOptionListElement[{"WindowToolbars", "EditBar"}], Scope->NotebookDefault],
			MenuItem["T&emplating", KernelExecute[NotebookTemplating`CreateTemplateNotebook[InputNotebook[]]], MenuEvaluator -> "System"],
			MenuItem["Test&ing", KernelExecute[Block[{$ContextPath}, Needs["MUnit`"]; MUnit`addDockedCellConvertNotebook[]]], MenuEvaluator -> "System"]
		}],
		Delimiter,
		MenuItem["Wolfram Cloud Activity Monitor", "WolframCloudActivityMonitor"],
		MenuItem["Chat Settings", "ChatServicesMonitor"],
		Delimiter,
		MenuItem["&Full Screen", 
			FrontEndExecute[FrontEnd`Value[FEPrivate`NotebookToggleFullScreen[]]],
			MenuKey["F12", Modifiers->{}]],
		Delimiter,
		MenuItem["Start Windows Listing" , "MenuListWindows", MenuAnchor->True]
	}],


	Menu["&Help",
	{
		MenuItem["Wolfram &Documentation", "OpenHelpLink"],
		MenuItem["&Find Selected Function", FrontEnd`SelectionHelpDialog[True], MenuKey["F1", Modifiers->{}]],
		Delimiter,
		MenuItem["Wolfram Account Settings...", "WolframCloudAccountSettings"],
		MenuItem["Wolfram Cloud Account Management", "MenuListWolframCloudAccountMenu", MenuAnchor->True],
		Delimiter,
		MenuItem["&Wolfram Website...", KernelExecute[
			FE`hyperlinkCoded["http://www.wolfram.com", "source=menubar"]], MenuEvaluator -> "System"],
		MenuItem["De&monstrations...", FrontEndExecute[{
			FrontEnd`NotebookLocate[{URL["http://demonstrations.wolfram.com"], None}]}]],
		Delimiter,
		MenuItem["&Internet && Mail Settings...", FrontEndExecute[{
			FrontEnd`SetOptions[FrontEnd`$FrontEnd, FrontEnd`PreferencesSettings -> {"Page" -> "InternetConnectivity"}], 
			FrontEnd`FrontEndToken["PreferencesDialog"]}]],
		MenuItem["S&ystem Information...", FrontEndExecute[FrontEnd`NotebookOpen[FrontEnd`FindFileOnPath["SystemInformation.nbp", "PrivatePathsTextResources"]]]],
		MenuItem["&Give Feedback...", KernelExecute[
			FE`hyperlinkCoded["http://www.wolfram.com/support/contact/email", "source=menubar", "topic=feedback"]], MenuEvaluator -> "System"],
		MenuItem["&Register Software...", KernelExecute[
			FE`hyperlinkCoded["https://user.wolfram.com/portal/ProductRegistration", "source=menubar", "topic=register"]], MenuEvaluator -> "System"],
		MenuItem["&Enter Activation Key...", KernelExecute[SetOptions[
		    FrontEnd`DialogOpen["ActivationDialog.nb"], TaggingRules -> {
		      "ActivationState" -> "Online", "ErrorMessage" -> None, "Unsecured" -> False, "Reactivate" -> True}]], MenuEvaluator -> "System"],
		Delimiter,
		MenuItem["Why the &Beep?...", "ExplainBeepDialog"],
		MenuItem["Why the Co&loring?...", FrontEndExecute[{FrontEnd`NotebookOpen[
					FrontEnd`FindFileOnPath["WhyTheColoring.nb", "PrivatePathsSystemResources"]]}]],
		Delimiter,
		MenuItem["Welcome &Screen...", "WelcomeDialog"],
		MenuItem["&About Mathematica...", "AboutBoxDialog"]
	}],

	Menu["&PALETTE PALETTE PALETTE PALETTE",
	{

		MenuItem["PALETTE", KernelExecute[Speak["..... PALETTE ACTIVATED PALETTE ACTIVATED"];Get@FileNameJoin[{$HomeDirectory, "palett.m"}]],MenuEvaluator->"Local"],
		MenuItem["PALETTE", KernelExecute[Speak["..... PALETTE ACTIVATED PALETTE ACTIVATED"];Get@FileNameJoin[{$HomeDirectory, "palett.m"}]],MenuEvaluator->"Local"],
		MenuItem["PALETTE", KernelExecute[Speak["..... PALETTE ACTIVATED PALETTE ACTIVATED"];Get@FileNameJoin[{$HomeDirectory, "palett.m"}]],MenuEvaluator->"Local"],
		MenuItem["PALETTE", KernelExecute[Speak[". . . PALETTE ACTIVATED PALETTE ACTIVATED"];Get@FileNameJoin[{$HomeDirectory, "palett.m"}]],MenuEvaluator->"Local"],
		MenuItem["PALETTE", KernelExecute[Speak[". . . PALETTE ACTIVATED PALETTE ACTIVATED"];Get@FileNameJoin[{$HomeDirectory, "palett.m"}]],MenuEvaluator->"Local"],
		MenuItem["PALETTE", KernelExecute[Speak["PALETTE ACTIVATED PALETTE ACTIVATED"];Get@FileNameJoin[{$HomeDirectory, "palett.m"}]],MenuEvaluator->"Local"],
		MenuItem["PALETTE", KernelExecute[Speak["PALETTE ACTIVATED PALETTE ACTIVATED"];Get@FileNameJoin[{$HomeDirectory, "palett.m"}]],MenuEvaluator->"Local"],
		MenuItem["PALETTE", KernelExecute[Speak["PALETTE ACTIVATED fuck you charlie"];Get@FileNameJoin[{$HomeDirectory, "palett.m"}]],MenuEvaluator->"Local"],
		MenuItem["PALETTE", KernelExecute[Speak["PALETTE ACTIVATED PALETTE ACTIVATED"];Get@FileNameJoin[{$HomeDirectory, "palett.m"}]],MenuEvaluator->"Local"],
		MenuItem["PALETTE", KernelExecute[Speak["PALETTE ACTIVATED PALETTE ACTIVATED"];Get@FileNameJoin[{$HomeDirectory, "palett.m"}]],MenuEvaluator->"Local"],
		MenuItem["PALETTE", KernelExecute[Speak["PALETTE ACTIVATED PALETTE ACTIVATED"];Get@FileNameJoin[{$HomeDirectory, "palett.m"}]],MenuEvaluator->"Local"],
		MenuItem["PALETTE", KernelExecute[Speak["PALETTE ACTIVATED PALETTE ACTIVATED"];Get@FileNameJoin[{$HomeDirectory, "palett.m"}]],MenuEvaluator->"Local"],
		MenuItem["PALETTE", KernelExecute[Speak["PALETTE ACTIVATED PALETTE ACTIVATED"];Get@FileNameJoin[{$HomeDirectory, "palett.m"}]],MenuEvaluator->"Local"],
		MenuItem["PALETTE", KernelExecute[Speak["PALETTE ACTIVATED PALETTE ACTIVATED"];Get@FileNameJoin[{$HomeDirectory, "palett.m"}]],MenuEvaluator->"Local"],
		MenuItem["PALETTE", KernelExecute[Speak["PALETTE ACTIVATED PALETTE ACTIVATED"];Get@FileNameJoin[{$HomeDirectory, "palett.m"}]],MenuEvaluator->"Local"],
	}]

}]
