# plot a ROC curve for a single prediction run
# and color the curve according to cutoff.
library(ROCR)

data(ROCR.simple)

pred <- prediction(ROCR.simple$predictions, ROCR.simple$labels)

perf <- performance(pred,"tpr","fpr")

plot(perf,colorize=TRUE)