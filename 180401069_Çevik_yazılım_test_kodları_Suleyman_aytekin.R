
library(testthat)

test_that("Dosya okuma testi", {
  filename <- "2022-2023 Football Player Stats.csv"
  
  # Verilen dosya var mı yok mu kontrolü
  expect_true(file.exists(filename))
  
  # Dosyayı başarıyla okuma testi
  expect_s3_class(read.csv(filename, sep = ";"), "data.frame")
})

#test2_paket_kontrolu

library(testthat)

# hexbin paketi kontrolü
test_that("hexbin Paketi Kontrolü", {
  expect_true(require(hexbin), 
              info = "hexbin paketi yüklü olmalı.")
})

# dplyr paketi kontrolü
test_that("dplyr Paketi Kontrolü", {
  expect_true(require(dplyr), 
              info = "dplyr paketi yüklü olmalı.")
})



test_that("ggplot2 yüklü mü kontrolü", {
  # ggplot2 paketi yüklü mü kontrolü
  expect_true("ggplot2" %in% installed.packages()[,"Package"])
})
#-------------------------ÖNEMLİ NOT----------------------------------------------------#
#AŞAĞIDA ki TESTLER sadece rmd de çalışır!!!! R.scriptte hata verir ve testi geçemez!!!!!!

library(testthat)

test_that("Sütun varlık kontrolü", {
  # İlgili sütün var mı yok mu kontrolü
  expect_true("Pos" %in% colnames(myDF), info = "Pos sütunu bulunamadı.")
  expect_true("Starts" %in% colnames(myDF), info = "Starts sütunu bulunamadı.")
  expect_true("Min" %in% colnames(myDF), info = "Min sütunu bulunamadı.")
  expect_true("PasTotCmp." %in% colnames(myDF), info = "PasTotCmp. sütunu bulunamadı.")
  expect_true("PasLonCmp." %in% colnames(myDF), info = "PasLonCmp. sütunu bulunamadı.")
  expect_true("PasTotAtt" %in% colnames(myDF), info = "PasTotAtt sütunu bulunamadı.")
  expect_true("Age" %in% colnames(myDF), info = "Age sütunu bulunamadı.")
  expect_true("MP" %in% colnames(myDF), info = "MP sütunu bulunamadı.")
  expect_true("ToSuc." %in% colnames(myDF), info = "ToSuc. sütunu bulunamadı.")
})

# TEST


library(testthat)
library(ggplot2)

# Yoğunluk grafiği testi
test_that("Yoğunluk Grafiği Çizimi", {
  expect_true(!is.null(ggplot2::last_plot()), info = "Yoğunluk grafiği çizilemedi.")
})

# Histogram ve Standart Sapma Çizgisi testi
test_that("Histogram ve Standart Sapma Çizgisi Çizimi", {
  expect_true(!is.null(histogram), info = "Histogram çizilemedi.")
  expect_true(!is.null(standart_sapma_cizgisi), info = "Standart sapma çizgisi eklenemedi.")
})

# Pasta grafiği testi
test_that("Pasta Grafiği Çizimi", {
  expect_true(!is.null(ggplot2::last_plot()), info = "Pasta grafiği çizilemedi.")
})

# Kutu grafiği testi
test_that("Kutu Grafiği Çizimi", {
  expect_true(!is.null(ggplot2::last_plot()), info = "Kutu grafiği çizilemedi.")
})

# Scatter plot testi
test_that("Scatter Plot Çizimi", {
  expect_true(!is.null(ggplot2::last_plot()), info = "Scatter plot çizilemedi.")
})

# Hexbin plot testi
test_that("Hexbin Plot Çizimi", {
  expect_true(!is.null(hb), info = "Hexbin plot çizilemedi.")
})
test_that("Bar Grafiği Çizimi", {
  # Bar grafiği çizimi
  bar_plot <- ggplot(myDF, aes(x = Pos)) +
    geom_bar(stat = "count", width = 1) +
    coord_polar(theta = "y") +
    labs(title = "Pozisyon Dağılımı", x = NULL, y = NULL) +
    theme_minimal()
  
  expect_true(!is.null(bar_plot), info = "Bar grafiği çizilemedi.")
})





