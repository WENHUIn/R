presidents <- c("Bill Clinton", "George Bush", "Ronald Reagan", "Jimmy Carter", "Gerald Ford")
president.list <- strsplit(presidents, " ")
president <- unlist(president.list)
president.first <- president[seq(1,length(president),2)]


bill <- "Bill Clinton"
others.first <- c("George", "Ronald", "Jimmy", "Gerald")
others.second <- c("Bush", "Reagan", "Carter", "Ford")
others <- paste(others.first, others.second)
grep("al",others,value=TRUE)
replacelastfive <- substr(others,nchar(others)-4,nchar(others))
president <- c(bill,others)
substr(president, 1, 3) <- "abc"
president
