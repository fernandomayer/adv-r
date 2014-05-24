library(plyr)

desc <- dir("descriptions", recursive = T, full = T)
fields <- function(x) colnames(read.dcf(x))

all_fields <- unlist(lapply(desc, fields))
counts <- arrange(count(all_fields), desc(freq))
counts$percent <- round(counts$freq / length(desc) * 100)

#                               x freq percent
# 1                        Author 2582     100
# 2                   Description 2582     100
# 3                       License 2582     100
# 4                    Maintainer 2582     100
# 5                       Package 2582     100
# 6                         Title 2582     100
# 7                       Version 2582     100
# 8                      Packaged 2541      98
# 9                          Date 2319      90
# 10             Date/Publication 2194      85
# 11                   Repository 2194      85
# 12                      Depends 2101      81
# 13                         Type 1090      42
# 14                          URL 1089      42
# 15                     LazyLoad  893      35
# 16                     Suggests  734      28
# 17                     LazyData  309      12
# 18                      Imports  265      10
# 19                     Encoding  181       7
# 20   Repository/R-Forge/Project  179       7
# 21  Repository/R-Forge/Revision  179       7
# 22           SystemRequirements  134       5
# 23                      Collate   89       3
# 24                     Enhances   62       2
# 25                      ZipData   56       2
# 26                    biocViews   32       1
# 27                     Revision   32       1
# 28                    Copyright   31       1
# 29                      OS_type   31       1
# 30                         NOTE   24       1
# 31                   BugReports   20       1
# 32              LastChangedDate   18       1
# 33          LastChangedRevision   18       1
# 34                    LinkingTo   17       1
# 35                     Priority   17       1
# 36           Classification/ACM   14       1
# 37           Classification/MSC   11       0
# 38                       Models   10       0
# 39                 DependsSplus    9       0
# 40                     Lazyload    9       0
# 41                     Requires    9       0
# 42                         Note    6       0
# 43                    Namespace    5       0
# 44                      Address    4       0
# 45                      Extends    4       0
# 46                         http    4       0
# 47               Log-Exceptions    4       0
# 48                     PatchURL    4       0
# 49                   Recommends    4       0
# 50              Acknowledgement    3       0
# 51             Acknowledgements    3       0
# 52                       Adress    3       0
# 53                     DevelURL    3       0
# 54                      Dialect    3       0
# 55                     Lazydata    3       0
# 56               LicenseDetails    3       0
# 57                     Author@R    2       0
# 58                    ChangeLog    2       0
# 59                     Citation    2       0
# 60                         date    2       0
# 61                     DateNote    2       0
# 62                     Keywords    2       0
# 63                      Suggest    2       0
# 64                     #Imports    1       0
# 65                          ate    1       0
# 66                  BorkSummary    1       0
# 67                        Check    1       0
# 68                         Cite    1       0
# 69               Classification    1       0
# 70                   ContribURL    1       0
# 71                 Contributors    1       0
# 72                 Dependencies    1       0
# 73                     Enhanves    1       0
# 74                     Headshot    1       0
# 75                      Keyword    1       0
# 76                  LastChanged    1       0
# 77                 LazyDataNote    1       0
# 78                     lazyload    1       0
# 79                  Limitations    1       0
# 80                   LinkingdTo    1       0
# 81                   Literature    1       0
# 82                  MailingList    1       0
# 83              MaintainerSplus    1       0
# 84       MinimumLibProtoVersion    1       0
# 85                MinimumSvnRev    1       0
# 86                  NoNamespace    1       0
# 87                notyetImports    1       0
# 88                      OS_Type    1       0
# 89             Publication/Date    1       0
# 90                    Reference    1       0
# 91                      Require    1       0
# 92   RequiredLauncherGeneration    1       0
# 93                   Scientists    1       0
# 94                     SUGGESTS    1       0
# 95                 SVN-Revision    1       0
# 96            SystemRequirement    1       0
# 97                          Url    1       0
# 98                         URLs    1       0
# 99                 VersionSplus    1       0
# 100                     Webpage    1       0