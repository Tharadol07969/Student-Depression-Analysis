let
    Source = Csv.Document(File.Contents("D:\งาน\Datacamp\Learn\Power BI\My Work\Student Depression Analysis\data\student_depression_dataset_raw.csv"),[Delimiter=",", Columns=18, Encoding=1252, QuoteStyle=QuoteStyle.None]),
    #"Promoted Headers" = Table.PromoteHeaders(Source, [PromoteAllScalars=true]),
    #"Changed Type" = Table.TransformColumnTypes(#"Promoted Headers",{{"id", Int64.Type}, {"Gender", type text}, {"Age", Int64.Type}, {"City", type text}, {"Profession", type text}, {"Academic Pressure", Int64.Type}, {"Work Pressure", Int64.Type}, {"CGPA", type number}, {"Study Satisfaction", Int64.Type}, {"Job Satisfaction", Int64.Type}, {"Sleep Duration", type text}, {"Dietary Habits", type text}, {"Degree", type text}, {"Have you ever had suicidal thoughts ?", type text}, {"Work/Study Hours", Int64.Type}, {"Financial Stress", Int64.Type}, {"Family History of Mental Illness", type text}, {"Depression", Int64.Type}}),
    #"Removed Errors" = Table.RemoveRowsWithErrors(#"Changed Type", {"Financial Stress"}),
    #"Replaced Value" = Table.ReplaceValue(#"Removed Errors","'Class 12'","Class 12",Replacer.ReplaceText,{"Degree"}),
    #"Replaced Value1" = Table.ReplaceValue(#"Replaced Value","'Less than 5 hours'","0-5 hours",Replacer.ReplaceText,{"Sleep Duration"}),
    #"Replaced Value2" = Table.ReplaceValue(#"Replaced Value1","'5-6 hours'","5-6 hours",Replacer.ReplaceText,{"Sleep Duration"}),
    #"Replaced Value3" = Table.ReplaceValue(#"Replaced Value2","'7-8 hours'","7-8 hours",Replacer.ReplaceText,{"Sleep Duration"}),
    #"Replaced Value4" = Table.ReplaceValue(#"Replaced Value3","'More than 8 hours'","More than 8 hours",Replacer.ReplaceText,{"Sleep Duration"}),
    #"Replaced Value5" = Table.ReplaceValue(#"Replaced Value4","'Less Delhi'","Delhi",Replacer.ReplaceText,{"City"}),
    #"Replaced Value6" = Table.ReplaceValue(#"Replaced Value5","'Less than 5 Kalyan'","Kalyan",Replacer.ReplaceText,{"City"}),
    #"Filtered Rows" = Table.SelectRows(#"Replaced Value6", each ([City] <> "3.0" and [City] <> "Bhavna" and [City] <> "City" and [City] <> "Gaurav" and [City] <> "Harsh" and [City] <> "Harsha" and [City] <> "Khaziabad" and [City] <> "Kibara" and [City] <> "M.Com" and [City] <> "M.Tech" and [City] <> "ME" and [City] <> "Mihir" and [City] <> "Mira" and [City] <> "Nalini" and [City] <> "Nalyan" and [City] <> "Nandini" and [City] <> "Rashi" and [City] <> "Reyansh" and [City] <> "Saanvi" and [City] <> "Vaanya") and ([Sleep Duration] <> "Others") and ([Dietary Habits] <> "Others"))
in
    #"Filtered Rows"
