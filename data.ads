--Written by Michael Janovy
package data is
   type Collection_Type is array(Natural range <>) of Integer;
      A : data.Collection_Type := (378,408,317,200,94,126,148,8,383,406,350,407,216,
                                456,178,132,117,161,325,18,118,47,282,312,377,
                                195,279,34,465,381,46,339,89,447,45,241,257,415,
                                251,63,88,408,160,23,173,496,453,196,493,309,83,
                                127,76,388,444,366,488,287,357,267,129,9,290,434,
                                83,170,421,149,119,140,315,313,402,487,193,165,174,
                                313,247,476,381,86,48,161,460,176,65,118,57,71,
                                97,305,486,222,185,409,20,7,317,103,428,22,422,
                                120,96,102,311,172,344,409,38,238,67,30,156,246,
                                418,115,131,363,26,350,112,109,237,62,438,243,491,
                                495,485,242,460,188,321,300,413,193,146,448,277,53,
                                413,52,150,214,148,499,427,180,322,316,83,489,68,
                                61,479,377,104,126,262,142,286,456,188,457,79,247,
                                439,4,238,293,20,412,449,237,480,421,2,461,238,169,
                                179,101,412,3,205,162,77,348,473,338,250,142,2,184,
                                145,426,412,242,12,62,106,402,385,409,95,14,211,
                                62,18,74,400,44,50,181,373,429,76,426,297,78,116,
                                465,291,335,136,265,77,463,144,264,354,461,146,
                                185,426,271,176,42,164,459,256,204,144,412,396,
                                388,96,10,29,24,410,495,328,34,347,198,151,300,
                                165,295,173,195,45,182,68,496,374,465,176,228,
                                195,466,386,328,387,396,27,261,100,160,159,60,66,
                                272,152,131,180,446,298,395,197,204,364,286,160,
                                396,350,11,460,332,252,442,98,223,15,284,35,198,
                                133,288,59,100,426,105,152,411,49,382,105,44,170,
                                438,308,443,490,300,111,313,211,335,145,339,428,
                                208,405,241,490,473,101,484,315,252,6,147,32,81,
                                486,52,54,289,500,91,306,137,319,251,86,447,56,48,
                                103,372,109,378,15,381,251,93,419,80,412,25,175,265,261,
                                56,305,166,305,177,386,460,264,351,336,297,95,
                                439,467,18,23,109,198,252,324,140,71,380,53,119,
                                86,318,391,138,234,152,42,301,72,454,60,229,157,
                                353,276,389,175,374,209,19,270,172,485,121,150,
                                408,67,476,467,153,402,494,89,318,309,200,302,347,
                                488,410,236,207,434,500,117,484,186,165,495,385,
                                43,265,362,224,474,34,25,96,310,283,101,482,366,
                                406,439,72,19,389,19,256,422,324,400,400,343,21,
                                160,326,415,27,113,333,355,410,61,436,428,394,425,
                                212,105,318,459,73,195,180,389,459,494,266,43,
                                327,88,179,273,87,399,69,333,207,279,178,331,20,
                                371,237,5,228,338,5,180,76,401,109,129,456,126,41,
                                126,279,472,492,121,290,261,454,232,160,30,182,274,
                                43,222,115,225,347,136,260,131,202,205,263,357,
                                413,151,300,330,202,170,71,242,245,128,422,126,22,
                                442,329,295,318,286,105,29,485,240,321,305,240,80,
                                361,102,365,371,15,384,325,474,367,470,307,362,
                                405,272,171,306,482,39,50,268,23,492,103,415,168,
                                195,378,472,218,173,154,67,364,130,50,234,309,191,
                                316,414,241,297,480,221,383,182,27,82,438,115,435,84,
                                120,104,57,462,378,26,286,476,245,453,457,211,202,21,
                                435,431,426,149,67,156,311,179,343,375,79,62,331,190,
                                189,303,348,311,326,312,36,108,72,42,303,345,352,
                                489,419,335,11,302,366,242,67,391,22,336,92,5,48,
                                318,410,132,34,328,464,210,137,305,379,7,268,111,
                                76,170,208,17,291,311,103,258,283,277,323,329,3,100,
                                214,25,8,406,434,263,215,138,114,347,288,253,269,
                                352,103,323,437,26,101,308,85,465,375,13,62,263,
                                418,219,32,413,120,138,67,116,124,110,298,277,211,
                                58,430,104,86,309,100,358,51,164,462,148,462,94,272,
                                100,376,142,192,203,245,497,413,224,256,467,483,50,
                                273,438,371,463,496,331,342,134,188,45,125,315,68,
                                411,184,58,170,330,393,386,368,197,317,190,57,363,
                                4,276,298,237,338,349,52,424,390,252,341,439,49,432,
                                186,341,456,43,181,22,51,220,385,230,303,249,10,298,
                                168,409,222,49,41,350,166,322,424,490,58,159,220,331,
                                3,43,103,145,189,419,205,13,419,414,224,405,248,76,
                                238,345,175,2,84,408,49,44,395,172,431,347,118,216,
                                426,302,440,176,500,50,401,291,361,181,67,346,
                                412,6,48,140,327,195,233,403,13,355,349,136,239,
                                138,320,451,290,22,66,28,492,193,453,412,393,418,
                                163,418,334,320,212,61,484,221,324,9,305,375,337,
                                116,418,444,334,183,398,9,10,62,105,448,138,462,
                                370,62,1,308,445,104,386,231,128,422,196,277,282,
                                438,153,337,98,189,169,283,115,379,182,43,205,182,
                                196,41,7,26,267,103,45,80,205,399,255,87,105,111,
                                27,73,488,156,23,445,184,286,3,461,105,496,425,
                                266,86,252,402,240,30);
end data;
