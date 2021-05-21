quick_att <- function(x, ...) {
  augsynth <- x

  ## print att estimates
  tint <- ncol(augsynth$data$X)
  ttotal <- tint + ncol(augsynth$data$y)
  att_post <- predict(augsynth, att = T)[(tint + 1):ttotal]

  mean(att_post)
}
