test_that("*Lines trow an error", {
    expect_error(readLines(), "Use read_lines!")
    expect_error(writeLines(), "Use write_lines!")
})
