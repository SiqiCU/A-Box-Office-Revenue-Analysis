metadata=read.csv("movie_metadata.csv")
rating=read.csv("cast_rating.csv")
rating1=rating[rowSums(is.na(rating)) == 2,]
metadata1=metadata[rowSums(is.na(metadata)) == 28,]


grep("director_name", colnames(metadata))
colnames(metadata)[2]="name"
metadata2=merge(x = metadata, y = rating, by = "name", all.x = TRUE)
grep("^rating$", colnames(metadata2))
grep("^name$", colnames(metadata2))
colnames(metadata2)[1]="director_name"
colnames(metadata2)[29]="director_name_rating"

grep("^actor_1_name$", colnames(metadata2))
colnames(metadata2)[11]="name"
metadata3=merge(x = metadata2, y = rating, by = "name", all.x = TRUE)
grep("^rating$", colnames(metadata3))
grep("^name$", colnames(metadata3))
colnames(metadata3)[1]="actor_1_name"
colnames(metadata3)[30]="actor_1_rating"

grep("^actor_2_name$", colnames(metadata3))
colnames(metadata3)[8]="name"
metadata4=merge(x = metadata3, y = rating, by = "name", all.x = TRUE)
grep("^rating$", colnames(metadata4))
grep("^name$", colnames(metadata4))
colnames(metadata4)[1]="actor_2_name"
colnames(metadata4)[31]="actor_2_rating"

grep("^actor_3_name$", colnames(metadata4))
colnames(metadata4)[15]="name"
metadata5=merge(x = metadata4, y = rating, by = "name", all.x = TRUE)
grep("^rating$", colnames(metadata5))
grep("^name$", colnames(metadata5))
colnames(metadata5)[1]="actor_3_name"
colnames(metadata5)[32]="actor_3_rating"

write.csv(metadata5, file = "movie_metadata_w_rating.csv")
