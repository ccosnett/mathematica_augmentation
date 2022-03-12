(* ::Package:: *)

   (* Define your own shortcut definitions here, without restarting the front end.
      The action defined here is executed by Ctrl T (Windows / Linux)  or Ctrl D (MacOSX)
   *)

   (* uncomment an example below or add your own definitions, save this file without renaming it and use it directly *)

   (* Example 1: copy the selection as LaTeX. Evaluating sel pastes the clipboard *)

   (*
     FrontEnd`CopyToClipboard[FrontEnd`CopyAsTeX[]];
     (* and also function assignments: *)
     sel := Paste[];
   *)

   (* Example 2:  wrap selection in [ ] *)

   
NotebookApply[SelectedNotebook[], RowBox[{"[", "\[SelectionPlaceholder]", "]"}], Before];
Print[AbsoluteTime[Print["asdf"]]];

NotebookApply[SelectedNotebook[], RowBox[{"[", "\[SelectionPlaceholder]", "]"}], Before];

N[Pi,200]//Print;
(*Speak["We can now execute what ever is in this file using a shortcut; How about a whole deck of these modifiable files, one for each possible shortcut"]*)
   


   
