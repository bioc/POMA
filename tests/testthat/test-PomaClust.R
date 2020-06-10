context("PomaClust")

test_that("PomaClust works", {
  
  data("st000284")
  data("st000336")
  imp_st000336 <- PomaImpute(st000336, method = "knn")
  
  a <- PomaClust(st000284)
  b <- PomaClust(imp_st000336)
  
  c <- PomaClust(st000284, method = "maximum", k = 5, show_clusters = FALSE, show_labels = TRUE)
  d <- PomaClust(imp_st000336, method = "manhattan", k = 2, show_clusters = FALSE, show_labels = TRUE)
  
  e <- PomaClust(st000284, method = "canberra", k = 6, show_clusters = FALSE, show_labels = TRUE, show_group = TRUE)
  f <- PomaClust(imp_st000336, method = "minkowski", k = 4, show_clusters = TRUE, show_labels = TRUE, show_group = TRUE)
  
  ## table
  
  expect_equal(nrow(a$mds_values), nrow(c$mds_values))
  expect_equal(nrow(b$mds_values), nrow(d$mds_values))
  expect_equal(nrow(e$mds_values), nrow(a$mds_values))
  expect_equal(nrow(f$mds_values), nrow(b$mds_values))
  
  expect_equal(5, ncol(a$mds_values))
  expect_equal(5, ncol(b$mds_values))
  expect_equal(5, ncol(c$mds_values))
  expect_equal(5, ncol(d$mds_values))
  expect_equal(5, ncol(e$mds_values))
  expect_equal(5, ncol(f$mds_values))
  
  ## plot
  
  expect_equal(class(a$mds_plot)[2], "ggplot")
  expect_equal(class(b$mds_plot)[2], "ggplot")
  expect_equal(class(c$mds_plot)[2], "ggplot")
  expect_equal(class(d$mds_plot)[2], "ggplot")
  expect_equal(class(e$mds_plot)[2], "ggplot")
  expect_equal(class(f$mds_plot)[2], "ggplot")
  
  ## errors
  
  expect_error(PomaClust())
  expect_error(PomaClust(iris))
  expect_error(PomaClust(st000284, method =  "euclid"))
  expect_error(PomaClust(st000284, method =  "max"))
  
})
