(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 8.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc.                                               *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       835,         17]
NotebookDataLength[     81026,       1571]
NotebookOptionsPosition[     81318,       1563]
NotebookOutlinePosition[     81683,       1579]
CellTagsIndexPosition[     81640,       1576]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[{
 ButtonBox[
  RowBox[{
   RowBox[{
    RowBox[{"http", ":"}], "//", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"mathematica", ".", "stackexchange", ".", "com"}], "/", 
        "questions"}], "/", "13906"}], "/", "given"}], "-", "a", "-", "table",
      "-", "of", "-", "plots", "-", "with", "-", "some", "-", "parameter", 
     "-", "how", "-", "would", "-", "i", "-", "mark", "-", "each", "-", "of", 
     "-", "the", "-", "plots", "-", "w"}]}], "\[IndentingNewLine]"}],
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["http://mathematica.stackexchange.com/questions/13906/given-a-table-\
of-plots-with-some-parameter-how-would-i-mark-each-of-the-plots-w"], None},
  ButtonNote->
   "http://mathematica.stackexchange.com/questions/13906/given-a-table-of-\
plots-with-some-parameter-how-would-i-mark-each-of-the-plots-w"], "\
\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"(*", "\[IndentingNewLine]", 
   RowBox[{"NotebookPut", "@", 
    RowBox[{"ImportString", "[", 
     RowBox[{
      RowBox[{"Uncompress", "@", 
       RowBox[{"FromCharacterCode", "@", 
        RowBox[{"Flatten", "@", 
         RowBox[{"ImageData", "[", 
          RowBox[{
           RowBox[{
           "Import", "@", "\"\<http://i.stack.imgur.com/qwyrM.png\>\""}], 
           ",", "\"\<Byte\>\""}], "]"}]}]}]}], ",", "\"\<NB\>\""}], "]"}]}], 
   "*)"}]}]}], "Input",
 CellChangeTimes->{{3.5612016835527987`*^9, 3.5612017378979073`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"ClearAll", "[", "lblPlot", "]"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"Options", "[", "lblPlot", "]"}], "=", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"maxArrowedLbls", "\[Rule]", "5"}], ",", 
     RowBox[{"maxNonArrowedLbls", "\[Rule]", "5"}]}], "}"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"lblPlot", "[", 
    RowBox[{"s_Graphics", ",", 
     RowBox[{"myStyle_List:", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"FontFamily", "\[Rule]", "\"\<Times\>\""}], ",", "16"}], 
       "}"}]}], ",", 
     RowBox[{"OptionsPattern", "[", "]"}]}], "]"}], ":=", 
   "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
     RowBox[{"Thanks", " ", 
      RowBox[{"to", " ", "@", "WReach"}]}], ",", " ", 
     RowBox[{
      RowBox[{"@", "jVincent"}], " ", 
      RowBox[{"and", " ", "@", "chris"}], " ", "for", " ", "their", " ", 
      "useful", " ", "help", " ", "and", " ", "code"}]}], " ", "*)"}], 
   "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{"Errors", ",", " ", 
     RowBox[{
     "bugs", " ", "and", " ", "bad", " ", "coding", " ", "due", " ", "to", 
      " ", "belisarius"}]}], "*)"}], "\[IndentingNewLine]", 
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "myLabel", ",", "copyToNewNB", ",", "exportLbls", ",", "printLbls", ",",
        "u", ",", "plotRsrv", ",", 
       RowBox[{"safeGuard", "=", 
        RowBox[{"{", "\"\<FeboAsoma\>\"", "}"}]}]}], "}"}], ",", 
     "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{
       RowBox[{"myLabel", "[", 
        RowBox[{"{", 
         RowBox[{"str_", ",", 
          RowBox[{"{", 
           RowBox[{"p1_", ",", "p2_", ",", "p3_"}], "}"}]}], "}"}], "]"}], ":=",
        "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{"Thick", ",", 
         RowBox[{"Arrow", "@", 
          RowBox[{"BezierCurve", "[", 
           RowBox[{"{", 
            RowBox[{"p3", ",", "p2", ",", "p1"}], "}"}], "]"}]}], ",", 
         RowBox[{"Inset", "[", 
          RowBox[{
           RowBox[{"Style", "[", 
            RowBox[{"str", ",", "myStyle"}], "]"}], ",", "p3", ",", 
           RowBox[{"Background", "->", "White"}]}], "]"}]}], "}"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"myLabel", "[", 
        RowBox[{"{", 
         RowBox[{"str_", ",", 
          RowBox[{"p1", ":", 
           RowBox[{"{", 
            RowBox[{"_", ",", "_"}], "}"}]}]}], "}"}], "]"}], ":=", 
       "\[IndentingNewLine]", 
       RowBox[{"{", 
        RowBox[{"Thick", ",", 
         RowBox[{"Inset", "[", 
          RowBox[{
           RowBox[{"Style", "[", 
            RowBox[{"str", ",", "myStyle"}], "]"}], ",", "p1", ",", 
           RowBox[{"Background", "->", "White"}]}], "]"}]}], "}"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"copyToNewNB", "[", 
        RowBox[{"plot_", ",", "list_"}], "]"}], ":=", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", "nb", "}"}], ",", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"nb", "=", 
           RowBox[{"NotebookCreate", "[", "]"}]}], ";", "\[IndentingNewLine]", 
          RowBox[{"NotebookWrite", "[", 
           RowBox[{"nb", ",", 
            RowBox[{"Cell", "[", 
             RowBox[{
              RowBox[{"BoxData", "@", 
               RowBox[{"ToBoxes", "@", "plot"}]}], ",", "\"\<Output\>\""}], 
             "]"}]}], "]"}], ";", "\[IndentingNewLine]", 
          RowBox[{"printLbls", "[", 
           RowBox[{"nb", ",", "list"}], "]"}], ";"}]}], "\[IndentingNewLine]",
         "]"}]}], ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"exportLbls", "[", "list_", "]"}], ":=", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", "nb", "}"}], ",", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"nb", "=", 
           RowBox[{"NotebookCreate", "[", "]"}]}], ";", "\[IndentingNewLine]", 
          RowBox[{"printLbls", "[", 
           RowBox[{"nb", ",", "list"}], "]"}], ";"}]}], "\[IndentingNewLine]",
         "]"}]}], ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"printLbls", "[", 
        RowBox[{"nb_", ",", "list_"}], "]"}], ":=", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"NotebookWrite", "[", 
          RowBox[{"nb", ",", 
           RowBox[{"Cell", "[", 
            RowBox[{
            "\"\<Reserve the following expression in your Notebook to restore \
your Labels and Arrows the next time you need to include them in the \
Plot\>\"", ",", "\"\<Subsection\>\"", ",", 
             RowBox[{"CellMargins", "\[Rule]", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{"{", 
                 RowBox[{"50", ",", "50"}], "}"}], ",", "Inherited"}], 
               "}"}]}]}], "]"}]}], "]"}], ";", "\[IndentingNewLine]", 
         RowBox[{"NotebookWrite", "[", 
          RowBox[{"nb", ",", 
           RowBox[{"Cell", "[", 
            RowBox[{
             RowBox[{"BoxData", "@", 
              RowBox[{"ToBoxes", "@", 
               RowBox[{"Join", "[", 
                RowBox[{"safeGuard", ",", "list", ",", "safeGuard"}], 
                "]"}]}]}], ",", "\"\<Output\>\""}], "]"}]}], "]"}], ";"}], 
        ")"}]}], ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"u", "=", 
       RowBox[{"Array", "[", 
        RowBox[{
         RowBox[{
          RowBox[{
           RowBox[{
            RowBox[{"(", 
             RowBox[{"PlotRange", "/.", " ", 
              RowBox[{"Options", "[", 
               RowBox[{"s", ",", "PlotRange"}], "]"}]}], ")"}], "[", 
            RowBox[{"[", 
             RowBox[{"All", ",", "1"}], "]"}], "]"}], " ", "+", 
           "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"Flatten", "[", 
             RowBox[{
              RowBox[{"Differences", "/@", 
               RowBox[{"(", 
                RowBox[{"PlotRange", "/.", " ", 
                 RowBox[{"Options", "[", 
                  RowBox[{"s", ",", "PlotRange"}], "]"}]}], ")"}]}], "/", 
              "4"}], "]"}], " ", "#"}]}], "&"}], ",", "3"}], "]"}]}], ";", 
      "\[IndentingNewLine]", "\[IndentingNewLine]", "\[IndentingNewLine]", 
      RowBox[{"Panel", "@", 
       RowBox[{"DynamicModule", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"pts1", "=", 
            RowBox[{"{", "}"}]}], ",", 
           RowBox[{"pts2", "=", 
            RowBox[{"{", "}"}]}], ",", 
           RowBox[{"lbl1", "=", 
            RowBox[{"{", "}"}]}], ",", 
           RowBox[{"lbl2", "=", 
            RowBox[{"{", "}"}]}], ",", 
           RowBox[{"varRsrv", "=", "\"\<Label Import Area\>\""}]}], "}"}], 
         ",", "\[IndentingNewLine]", 
         RowBox[{"Column", "[", "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Dynamic", "@", "\[IndentingNewLine]", 
             RowBox[{"Show", "[", "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{"plotRsrv", "=", 
                RowBox[{"Show", "[", 
                 RowBox[{"s", ",", 
                  RowBox[{"Epilog", "\[Rule]", 
                   RowBox[{"myLabel", "/@", 
                    RowBox[{"Join", "@@", "\[IndentingNewLine]", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"MapIndexed", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"lbl1", "[", 
                    RowBox[{"[", 
                    RowBox[{"#2", "[", 
                    RowBox[{"[", "1", "]"}], "]"}], "]"}], "]"}], ",", "#1"}],
                     "}"}], "&"}], ",", 
                    RowBox[{"Partition", "[", 
                    RowBox[{"pts1", ",", "3"}], "]"}]}], "]"}], ",", 
                    "\[IndentingNewLine]", 
                    RowBox[{"MapIndexed", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"lbl2", "[", 
                    RowBox[{"[", 
                    RowBox[{"#2", "[", 
                    RowBox[{"[", "1", "]"}], "]"}], "]"}], "]"}], ",", "#1"}],
                     "}"}], "&"}], ",", "pts2"}], "]"}]}], "}"}]}]}]}], ",", 
                  RowBox[{"ImageSize", "\[Rule]", "500"}]}], "]"}]}], ",", 
               "\[IndentingNewLine]", 
               RowBox[{"Graphics", "[", 
                RowBox[{
                 RowBox[{"{", "\[IndentingNewLine]", 
                  RowBox[{
                   RowBox[{"Dynamic", "@", 
                    RowBox[{"MapIndexed", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"With", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"i", "=", 
                    RowBox[{"#2", "[", 
                    RowBox[{"[", "1", "]"}], "]"}]}], "}"}], ",", 
                    RowBox[{"Locator", "[", 
                    RowBox[{"Dynamic", "[", 
                    RowBox[{"pts1", "[", 
                    RowBox[{"[", "i", "]"}], "]"}], "]"}], "]"}]}], "]"}], 
                    "&"}], ",", "pts1"}], "]"}]}], ",", "\[IndentingNewLine]", 
                   RowBox[{"Dynamic", "@", 
                    RowBox[{"MapIndexed", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"With", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"i", "=", 
                    RowBox[{"#2", "[", 
                    RowBox[{"[", "1", "]"}], "]"}]}], "}"}], ",", 
                    RowBox[{"Locator", "[", 
                    RowBox[{"Dynamic", "[", 
                    RowBox[{"pts2", "[", 
                    RowBox[{"[", "i", "]"}], "]"}], "]"}], "]"}]}], "]"}], 
                    "&"}], ",", "pts2"}], "]"}]}]}], "}"}], ",", 
                 "\[IndentingNewLine]", 
                 RowBox[{"PlotRange", "\[Rule]", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"{", 
                    RowBox[{"0", ",", "1"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", "1"}], "}"}]}], "}"}]}]}], "]"}]}], 
              "]"}]}], ",", "\[IndentingNewLine]", "\[IndentingNewLine]", 
            RowBox[{"InputField", "[", 
             RowBox[{
              RowBox[{"Dynamic", "@", "varRsrv"}], ",", 
              RowBox[{"FieldSize", "\[Rule]", "55"}], ",", 
              RowBox[{"FieldHint", "\[Rule]", "\"\<Label Import Area\>\""}]}],
              "]"}], ",", "\[IndentingNewLine]", "\[IndentingNewLine]", 
            RowBox[{"Row", "[", 
             RowBox[{"{", "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{"Button", "[", 
                RowBox[{"\"\<Add Labeled Arrow\>\"", ",", 
                 RowBox[{"If", "[", 
                  RowBox[{
                   RowBox[{
                    RowBox[{"Length", "@", "pts1"}], "<", 
                    RowBox[{"3", " ", 
                    RowBox[{"OptionValue", "[", "maxArrowedLbls", "]"}]}]}], 
                   ",", 
                   RowBox[{
                    RowBox[{"AppendTo", "[", 
                    RowBox[{"lbl1", ",", "\"\<Arrow\>\""}], "]"}], ";", 
                    RowBox[{"pts1", "=", 
                    RowBox[{"pts1", "~", "Join", "~", 
                    RowBox[{"(", "u", ")"}]}]}]}]}], "]"}]}], "]"}], ",", 
               "\[IndentingNewLine]", 
               RowBox[{"Button", "[", 
                RowBox[{"\"\<Add Label\>\"", ",", 
                 RowBox[{"If", "[", 
                  RowBox[{
                   RowBox[{
                    RowBox[{"Length", "@", "pts2"}], "<", " ", 
                    RowBox[{"OptionValue", "[", "maxNonArrowedLbls", "]"}]}], 
                   ",", 
                   RowBox[{"(", 
                    RowBox[{
                    RowBox[{"AppendTo", "[", 
                    RowBox[{"lbl2", ",", "\"\<Label\>\""}], "]"}], ";", 
                    RowBox[{"AppendTo", "[", 
                    RowBox[{"pts2", ",", 
                    RowBox[{"u", "[", 
                    RowBox[{"[", "2", "]"}], "]"}]}], "]"}]}], ")"}]}], 
                  "]"}]}], "]"}], ",", "\[IndentingNewLine]", 
               RowBox[{"Button", "[", 
                RowBox[{"\"\<Copy to new .nb\>\"", ",", 
                 RowBox[{"copyToNewNB", "[", 
                  RowBox[{"plotRsrv", ",", 
                   RowBox[{"{", 
                    RowBox[{
                    "pts1", ",", "pts2", ",", " ", "lbl1", ",", "lbl2"}], 
                    "}"}]}], "]"}]}], "]"}], ",", "\[IndentingNewLine]", 
               RowBox[{"Button", "[", 
                RowBox[{"\"\<Export Labels\>\"", ",", 
                 RowBox[{"exportLbls", "[", 
                  RowBox[{"{", 
                   RowBox[{
                   "pts1", ",", "pts2", ",", " ", "lbl1", ",", "lbl2"}], 
                   "}"}], "]"}]}], "]"}], ",", "\[IndentingNewLine]", 
               RowBox[{"Button", "[", 
                RowBox[{"\"\<Import Labels\>\"", ",", "\[IndentingNewLine]", 
                 RowBox[{"(*", 
                  RowBox[{
                   RowBox[{
                   "validate", " ", "the", " ", "labels", " ", "set"}], ",", 
                   " ", 
                   RowBox[{"then", " ", "import"}]}], " ", "*)"}], 
                 "\[IndentingNewLine]", 
                 RowBox[{
                  RowBox[{"If", "[", 
                   RowBox[{
                    RowBox[{
                    RowBox[{
                    RowBox[{"Head", "[", "varRsrv", "]"}], "\[Equal]", 
                    "List"}], "&&", 
                    RowBox[{
                    RowBox[{"Length", "@", "varRsrv"}], "\[Equal]", "6"}], "&&", 
                    RowBox[{
                    RowBox[{"varRsrv", "[", 
                    RowBox[{"[", "1", "]"}], "]"}], "==", 
                    RowBox[{"varRsrv", "[", 
                    RowBox[{"[", 
                    RowBox[{"-", "1"}], "]"}], "]"}], "\[Equal]", 
                    RowBox[{"safeGuard", "[", 
                    RowBox[{"[", "1", "]"}], "]"}]}]}], ",", 
                    "\[IndentingNewLine]", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"pts1", "=", 
                    RowBox[{"varRsrv", "[", 
                    RowBox[{"[", "2", "]"}], "]"}]}], ",", 
                    RowBox[{"pts2", "=", 
                    RowBox[{"varRsrv", "[", 
                    RowBox[{"[", "3", "]"}], "]"}]}], ",", " ", 
                    RowBox[{"lbl1", "=", 
                    RowBox[{"varRsrv", "[", 
                    RowBox[{"[", "4", "]"}], "]"}]}], ",", 
                    RowBox[{"lbl2", "=", 
                    RowBox[{"varRsrv", "[", 
                    RowBox[{"[", "5", "]"}], "]"}]}]}], "}"}], ",", 
                    RowBox[{
                    "MessageDialog", "[", 
                    "\"\<You're trying to Import a label set not created by \
\\\"Export Labels\\\"\>\"", "]"}], ",", "\[IndentingNewLine]", 
                    RowBox[{"MessageDialog", "[", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"Head", "[", "varRsrv", "]"}], ",", 
                    RowBox[{
                    RowBox[{"varRsrv", "[", 
                    RowBox[{"[", "1", "]"}], "]"}], "==", 
                    RowBox[{"varRsrv", "[", 
                    RowBox[{"[", 
                    RowBox[{"-", "1"}], "]"}], "]"}], "\[Equal]", 
                    "safeGuard"}]}], "}"}], "]"}]}], "]"}], 
                  "\[IndentingNewLine]", ";"}]}], "]"}]}], "}"}], "]"}], ",", 
            "\[IndentingNewLine]", "\[IndentingNewLine]", 
            RowBox[{"Dynamic", "@", 
             RowBox[{"Grid", "[", 
              RowBox[{
               RowBox[{"Transpose", "[", 
                RowBox[{"{", "\[IndentingNewLine]", 
                 RowBox[{"(*", "arrows", "*)"}], "\[IndentingNewLine]", 
                 RowBox[{
                  RowBox[{
                   RowBox[{"{", "\"\<\>\"", "}"}], "~", "Join", "~", 
                   RowBox[{"PadRight", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{
                    RowBox[{"Row", "[", 
                    RowBox[{"{", 
                    RowBox[{"#", ",", "\[IndentingNewLine]", 
                    RowBox[{"InputField", "[", 
                    RowBox[{
                    RowBox[{"Dynamic", "[", 
                    RowBox[{"lbl1", "[", 
                    RowBox[{"[", "#", "]"}], "]"}], "]"}], ",", "String"}], 
                    "]"}], ",", "\[IndentingNewLine]", 
                    RowBox[{"Button", "[", 
                    RowBox[{
                    RowBox[{"\"\<Delete\>\"", "<>", 
                    RowBox[{"ToString", "@", "#"}]}], ",", 
                    "\[IndentingNewLine]", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"lbl1", "=", 
                    RowBox[{"Drop", "[", 
                    RowBox[{"lbl1", ",", 
                    RowBox[{"{", 
                    RowBox[{"#", ",", "#"}], "}"}]}], "]"}]}], ";", 
                    "\[IndentingNewLine]", 
                    RowBox[{"pts1", "=", 
                    RowBox[{"Drop", "[", 
                    RowBox[{"pts1", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"3", "#"}], "-", "2"}], ",", 
                    RowBox[{"3", "#"}]}], "}"}]}], "]"}]}]}], ")"}]}], 
                    "]"}]}], "}"}], "]"}], "&"}], "/@", 
                    RowBox[{"Range", "@", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"Length", "@", "pts1"}], "/", "3"}], ")"}]}]}], 
                    ",", 
                    RowBox[{"Max", "[", 
                    RowBox[{
                    RowBox[{"Length", "@", "lbl1"}], ",", 
                    RowBox[{"Length", "@", "lbl2"}]}], "]"}], ",", 
                    "\"\<\>\""}], "]"}]}], ",", "\[IndentingNewLine]", 
                  RowBox[{"(*", 
                   RowBox[{"non", "-", " ", "arrows"}], "*)"}], 
                  "\[IndentingNewLine]", 
                  RowBox[{
                   RowBox[{"{", "\"\<\>\"", "}"}], "~", "Join", "~", 
                   RowBox[{"PadRight", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{
                    RowBox[{"Row", "[", 
                    RowBox[{"{", 
                    RowBox[{"#", ",", "\[IndentingNewLine]", 
                    RowBox[{"InputField", "[", 
                    RowBox[{
                    RowBox[{"Dynamic", "[", 
                    RowBox[{"lbl2", "[", 
                    RowBox[{"[", "#", "]"}], "]"}], "]"}], ",", "String"}], 
                    "]"}], ",", "\[IndentingNewLine]", 
                    RowBox[{"Button", "[", 
                    RowBox[{
                    RowBox[{"\"\<Delete\>\"", "<>", 
                    RowBox[{"ToString", "@", "#"}]}], ",", 
                    "\[IndentingNewLine]", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"lbl2", "=", 
                    RowBox[{"Drop", "[", 
                    RowBox[{"lbl2", ",", 
                    RowBox[{"{", 
                    RowBox[{"#", ",", "#"}], "}"}]}], "]"}]}], ";", 
                    "\[IndentingNewLine]", 
                    RowBox[{"pts2", "=", 
                    RowBox[{"Drop", "[", 
                    RowBox[{"pts2", ",", 
                    RowBox[{"{", "#", "}"}]}], "]"}]}]}], ")"}]}], "]"}]}], 
                    "}"}], "]"}], "&"}], "/@", 
                    RowBox[{"Range", "@", 
                    RowBox[{"(", 
                    RowBox[{"Length", "@", "pts2"}], ")"}]}]}], ",", 
                    RowBox[{"Max", "[", 
                    RowBox[{
                    RowBox[{"Length", "@", "lbl1"}], ",", 
                    RowBox[{"Length", "@", "lbl2"}]}], "]"}], ",", 
                    "\"\<\>\""}], "]"}]}]}], "\[IndentingNewLine]", "}"}], 
                "]"}], ",", 
               RowBox[{"ItemSize", "\[Rule]", "30"}]}], "]"}]}]}], "}"}], 
          "]"}]}], "]"}]}]}]}], "\[IndentingNewLine]", "]"}]}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{"Clear", "[", 
  RowBox[{"f", ",", "r"}], "]"}], "\n", 
 RowBox[{
  RowBox[{"f", "[", "r_", "]"}], ":=", 
  RowBox[{"4", " ", 
   RowBox[{"r", "/", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{"1", "-", "r"}], ")"}], "^", "2"}]}]}]}], "\n", 
 RowBox[{
  RowBox[{"i", "[", 
   RowBox[{"r_", ",", "delta_"}], "]"}], ":=", 
  RowBox[{"1", "/", 
   RowBox[{"(", 
    RowBox[{"1", "+", 
     RowBox[{
      RowBox[{"f", "[", "r", "]"}], " ", 
      RowBox[{
       RowBox[{"Sin", "[", 
        RowBox[{"delta", "/", "2"}], "]"}], "^", "2"}]}]}], ")"}]}]}], "\n", 
 RowBox[{
  RowBox[{"s", "=", 
   RowBox[{"Plot", "[", 
    RowBox[{
     RowBox[{"Evaluate", "@", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"i", "[", 
         RowBox[{"r", ",", "delta"}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"r", ",", 
          RowBox[{"{", 
           RowBox[{"0.1", ",", "0.3", ",", "0.6", ",", "0.97"}], "}"}]}], 
         "}"}]}], "]"}]}], ",", 
     RowBox[{"{", 
      RowBox[{"delta", ",", "0", ",", 
       RowBox[{"2", " ", "Pi"}]}], "}"}], ",", 
     RowBox[{"PlotRange", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"0", ",", "1"}], "}"}]}]}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{"lblPlot", "[", 
  RowBox[{"s", ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"FontFamily", "\[Rule]", "\"\<xkcd\>\""}], ",", "16"}], "}"}]}], 
  "]"}]}], "Input",
 CellChangeTimes->{{3.56105320096875*^9, 3.561053228875*^9}, {
   3.56105365390625*^9, 3.56105367109375*^9}, {3.56105383253125*^9, 
   3.5610538535625*^9}, {3.56105389228125*^9, 3.561053898390625*^9}, {
   3.56105410190625*^9, 3.56105410209375*^9}, {3.561054318375*^9, 
   3.561054347890625*^9}, {3.561054387125*^9, 3.56105443046875*^9}, {
   3.561054835140625*^9, 3.561054891234375*^9}, {3.5610549894375*^9, 
   3.56105503221875*^9}, {3.561055084671875*^9, 3.561055091546875*^9}, 
   3.561057106953125*^9, 3.5610605804375*^9, {3.561060666546875*^9, 
   3.5610608273125*^9}, {3.5610610090625*^9, 3.561061015046875*^9}, {
   3.561061062265625*^9, 3.56106110065625*^9}, {3.561061134453125*^9, 
   3.561061134828125*^9}, {3.56106116690625*^9, 3.5610611885*^9}, {
   3.561061464578125*^9, 3.561061483984375*^9}, {3.561061632390625*^9, 
   3.561061644828125*^9}, {3.561061678546875*^9, 3.561061678984375*^9}, {
   3.5610617261875*^9, 3.561061734171875*^9}, {3.561067125578125*^9, 
   3.5610671574375*^9}, {3.5610672411875*^9, 3.56106726940625*^9}, {
   3.561067315546875*^9, 3.561067327546875*^9}, {3.561072008921875*^9, 
   3.561072015625*^9}, {3.56107207534375*^9, 3.56107207546875*^9}, {
   3.561072204359375*^9, 3.561072241171875*^9}, {3.56107267365625*^9, 
   3.561072676203125*^9}, {3.561104201796875*^9, 3.561104250953125*^9}, {
   3.56110439384375*^9, 3.56110440459375*^9}, {3.5611044423125*^9, 
   3.5611044474375*^9}, {3.561104484921875*^9, 3.561104511359375*^9}, {
   3.5611046686875*^9, 3.561104790046875*^9}, {3.56110482678125*^9, 
   3.56110493390625*^9}, 3.561104987421875*^9, {3.561105028046875*^9, 
   3.561105089078125*^9}, {3.561105209734375*^9, 3.56110521534375*^9}, {
   3.5611052468125*^9, 3.561105246984375*^9}, {3.561105281171875*^9, 
   3.561105428375*^9}, {3.5611055181875*^9, 3.561105521078125*^9}, {
   3.561105591671875*^9, 3.561105677109375*^9}, {3.561105720328125*^9, 
   3.56110572140625*^9}, {3.561105763625*^9, 3.5611058504375*^9}, {
   3.56110786559375*^9, 3.561107944875*^9}, {3.561107981984375*^9, 
   3.561107983109375*^9}, {3.561108021765625*^9, 3.56110803353125*^9}, {
   3.561108063984375*^9, 3.561108067375*^9}, {3.561108547765625*^9, 
   3.5611085614375*^9}, {3.5611086025625*^9, 3.56110865909375*^9}, {
   3.56111111971875*^9, 3.561111122671875*^9}, {3.5611113255625*^9, 
   3.561111391359375*^9}, 3.561112305109375*^9, {3.56111309196875*^9, 
   3.56111310184375*^9}, {3.561113398765625*^9, 3.561113406578125*^9}, {
   3.561113665546875*^9, 3.5611137835625*^9}, {3.561114068*^9, 
   3.561114165703125*^9}, 3.56111421334375*^9, {3.561114298265625*^9, 
   3.561114316859375*^9}, {3.56111436575*^9, 3.56111436634375*^9}, {
   3.5611145041875*^9, 3.561114507234375*^9}, {3.5611145633125*^9, 
   3.56111469753125*^9}, {3.561115582265625*^9, 3.561115608859375*^9}, {
   3.56111584565625*^9, 3.561115854515625*^9}, {3.561116376828125*^9, 
   3.56111640540625*^9}, {3.56111704715625*^9, 3.561117048875*^9}, {
   3.56111714596875*^9, 3.56111714734375*^9}, {3.56111722453125*^9, 
   3.5611172616875*^9}, {3.561117310609375*^9, 3.5611173459375*^9}, {
   3.56111743609375*^9, 3.56111748865625*^9}, {3.561118253484375*^9, 
   3.56111826684375*^9}, {3.561201389575984*^9, 3.5612013896519885`*^9}}],

Cell[BoxData[
 PanelBox[
  DynamicModuleBox[{$CellContext`pts1$$ = {}, $CellContext`pts2$$ = {{
   6.0637270504367855`, 0.22417362196338253`}, {5.532429887373693, 
   0.417908816060538}, {4.961285437080878, 0.5788075365818408}, {
   4.164339692486242, 
   0.7397062571032749}}, $CellContext`lbl1$$ = {}, $CellContext`lbl2$$ = {
   "R = 0.1", "R = 0.3", "R = 0.6", "R = 0.97"}, $CellContext`varRsrv$$ = 
   "Label Import Area"}, 
   TagBox[GridBox[{
      {
       DynamicBox[ToBoxes[
         Show[$CellContext`plotRsrv$2927 = Show[
            Graphics[{{{}, {}, {
                Hue[0.67, 0.6, 0.6], 
                Line[CompressedData["
1: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

                 "]]}, {
                Hue[0.9060679774997897, 0.6, 0.6], 
                Line[CompressedData["
1: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
2BTxSuNsq2kNNv7/+5v/A2/TWqI=
                 "]]}, {
                Hue[0.1421359549995791, 0.6, 0.6], 
                Line[CompressedData["
1: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
msWEUbLzc9dhzMeVc/Q2xIXR//+f7P8Ah/TPdA==
                 "]]}, {
                Hue[0.37820393249936934`, 0.6, 0.6], 
                Line[CompressedData["
1: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
cGf+WwVR+WKdP6e40f//P+Z/QlrvKg==
                 "]]}}}, {
             AspectRatio -> GoldenRatio^(-1), Axes -> True, 
              AxesOrigin -> {0, 0}, PlotRange -> {{0, 2 Pi}, {0, 1}}, 
              PlotRangeClipping -> True, PlotRangePadding -> {
                Scaled[0.02], Automatic}}], Epilog -> 
            Map[$CellContext`myLabel$2927, 
              Apply[Join, {
                MapIndexed[{
                  Part[$CellContext`lbl1$$, 
                   Part[#2, 1]], #}& , 
                 Partition[$CellContext`pts1$$, 3]], 
                MapIndexed[{
                  Part[$CellContext`lbl2$$, 
                   Part[#2, 1]], #}& , $CellContext`pts2$$]}]], ImageSize -> 
            500], 
          Graphics[{
            Dynamic[
             MapIndexed[With[{$CellContext`i$ = Part[#2, 1]}, 
               Locator[
                Dynamic[
                 
                 Part[$CellContext`pts1$$, $CellContext`i$]]]]& , \
$CellContext`pts1$$]], 
            Dynamic[
             MapIndexed[With[{$CellContext`i$ = Part[#2, 1]}, 
               Locator[
                Dynamic[
                 
                 Part[$CellContext`pts2$$, $CellContext`i$]]]]& , \
$CellContext`pts2$$]]}, PlotRange -> {{0, 1}, {0, 1}}]], StandardForm],
        ImageSizeCache->{500., {161., 166.}}]},
      {
       InputFieldBox[Dynamic[$CellContext`varRsrv$$],
        FieldHint->"Label Import Area",
        FieldSize->55]},
      {
       TemplateBox[{
        ButtonBox[
         "\"Add Labeled Arrow\"", Appearance -> Automatic, ButtonFunction :> 
          If[Length[$CellContext`pts1$$] < 
            3 OptionValue[$CellContext`lblPlot, {}, \
$CellContext`maxArrowedLbls], 
            AppendTo[$CellContext`lbl1$$, "Arrow"]; $CellContext`pts1$$ = 
             Join[$CellContext`pts1$$, $CellContext`u$2927]], Evaluator -> 
          Automatic, Method -> "Preemptive"],ButtonBox[
         "\"Add Label\"", Appearance -> Automatic, ButtonFunction :> 
          If[Length[$CellContext`pts2$$] < 
            OptionValue[$CellContext`lblPlot, {}, \
$CellContext`maxNonArrowedLbls], AppendTo[$CellContext`lbl2$$, "Label"]; 
            AppendTo[$CellContext`pts2$$, 
              Part[$CellContext`u$2927, 2]]], Evaluator -> Automatic, Method -> 
          "Preemptive"],ButtonBox[
         "\"Copy to new .nb\"", Appearance -> Automatic, 
          ButtonFunction :> \
$CellContext`copyToNewNB$2927[$CellContext`plotRsrv$2927, \
{$CellContext`pts1$$, $CellContext`pts2$$, $CellContext`lbl1$$, \
$CellContext`lbl2$$}], Evaluator -> Automatic, Method -> "Preemptive"],
         ButtonBox[
         "\"Export Labels\"", Appearance -> Automatic, 
          ButtonFunction :> \
$CellContext`exportLbls$2927[{$CellContext`pts1$$, $CellContext`pts2$$, \
$CellContext`lbl1$$, $CellContext`lbl2$$}], Evaluator -> Automatic, Method -> 
          "Preemptive"],ButtonBox[
         "\"Import Labels\"", Appearance -> Automatic, ButtonFunction :> (If[
             And[
             Head[$CellContext`varRsrv$$] == List, 
              Length[$CellContext`varRsrv$$] == 6, 
              Part[$CellContext`varRsrv$$, 1] == 
              Part[$CellContext`varRsrv$$, -1] == 
              Part[$CellContext`safeGuard$2927, 1]], {$CellContext`pts1$$ = 
              Part[$CellContext`varRsrv$$, 2], $CellContext`pts2$$ = 
              Part[$CellContext`varRsrv$$, 3], $CellContext`lbl1$$ = 
              Part[$CellContext`varRsrv$$, 4], $CellContext`lbl2$$ = 
              Part[$CellContext`varRsrv$$, 5]}, 
             MessageDialog[
             "You're trying to Import a label set not created by \"Export \
Labels\""], 
             MessageDialog[{
               Head[$CellContext`varRsrv$$], Part[$CellContext`varRsrv$$, 1] == 
               Part[$CellContext`varRsrv$$, -1] == \
$CellContext`safeGuard$2927}]]; Null), Evaluator -> Automatic, Method -> 
          "Preemptive"]},
        "Row",
        DisplayFunction->(
         RowBox[{#, "\[InvisibleSpace]", #2, "\[InvisibleSpace]", #3, 
           "\[InvisibleSpace]", #4, "\[InvisibleSpace]", #5}]& ),
        InterpretationFunction->(RowBox[{"Row", "[", 
           RowBox[{"{", 
             RowBox[{#, ",", #2, ",", #3, ",", #4, ",", #5}], "}"}], 
           "]"}]& )]},
      {
       DynamicBox[ToBoxes[
         Grid[
          Transpose[{
            Join[{""}, 
             PadRight[
              Map[Row[{#, 
                 InputField[
                  Dynamic[
                   Part[$CellContext`lbl1$$, #]], String], 
                 Button[
                  StringJoin["Delete", 
                   ToString[#]], $CellContext`lbl1$$ = 
                   Drop[$CellContext`lbl1$$, {#, #}]; $CellContext`pts1$$ = 
                   Drop[$CellContext`pts1$$, {3 # - 2, 3 #}]]}]& , 
               Range[Length[$CellContext`pts1$$]/3]], 
              Max[
               Length[$CellContext`lbl1$$], 
               Length[$CellContext`lbl2$$]], ""]], 
            Join[{""}, 
             PadRight[
              Map[Row[{#, 
                 InputField[
                  Dynamic[
                   Part[$CellContext`lbl2$$, #]], String], 
                 Button[
                  StringJoin["Delete", 
                   ToString[#]], $CellContext`lbl2$$ = 
                   Drop[$CellContext`lbl2$$, {#, #}]; $CellContext`pts2$$ = 
                   Drop[$CellContext`pts2$$, {#}]]}]& , 
               Range[
                Length[$CellContext`pts2$$]]], 
              Max[
               Length[$CellContext`lbl1$$], 
               Length[$CellContext`lbl2$$]], ""]]}], ItemSize -> 30], 
         StandardForm],
        ImageSizeCache->{668., {62.5, 69.5}}]}
     },
     GridBoxAlignment->{"Columns" -> {{Left}}},
     GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}],
    "Column"],
   DynamicModuleValues:>{}]]], "Output",
 CellChangeTimes->{3.5612012863900824`*^9, 3.5612013909650636`*^9}]
}, Open  ]]
},
WindowSize->{850, 779},
WindowMargins->{{293, Automatic}, {26, Automatic}},
ShowSelection->True,
FrontEndVersion->"8.0 for Microsoft Windows (64-bit) (October 6, 2011)",
StyleDefinitions->"Default.nb"
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
Cell[1235, 30, 1458, 36, 177, "Input"],
Cell[CellGroupData[{
Cell[2718, 70, 25277, 568, 1792, "Input"],
Cell[27998, 640, 53304, 920, 559, "Output"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature 4xT0vz#Fzus3OC1RkpFsov66 *)
