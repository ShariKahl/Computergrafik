#include "matrix.h"
#include "gtest/gtest.h"

namespace {
	
TEST(MATRIX, ListInitialization2df) {
  SquareMatrix2df matrix = { Vector2df{1.0, 0.0},
                             Vector2df{0.0, 1.0} };
  
  EXPECT_NEAR(1.0, matrix.at(0,0), 0.00001);
  EXPECT_NEAR(0.0, matrix.at(0,1), 0.00001);
  EXPECT_NEAR(0.0, matrix.at(1,0), 0.00001);
  EXPECT_NEAR(1.0, matrix.at(1,1), 0.00001);
}

TEST(MATRIX, ListInitialization3df) {
  SquareMatrix3df matrix = { Vector3df{1.0, 0.0, 0.0},
                             Vector3df{0.0, 1.0, 0.0},
                             Vector3df{0.0, 0.0, 1.0} };
                               
  EXPECT_NEAR(1.0, matrix[0][0], 0.00001);
  EXPECT_NEAR(0.0, matrix[0][1], 0.00001);
  EXPECT_NEAR(0.0, matrix[0][2], 0.00001);
  EXPECT_NEAR(0.0, matrix[1][0], 0.00001);
  EXPECT_NEAR(1.0, matrix[1][1], 0.00001);
  EXPECT_NEAR(0.0, matrix[1][2], 0.00001);
  EXPECT_NEAR(0.0, matrix[2][0], 0.00001);
  EXPECT_NEAR(0.0, matrix[2][1], 0.00001);
  EXPECT_NEAR(1.0, matrix[2][2], 0.00001);
}

TEST(MATRIX, ListInitialization4df) {
  SquareMatrix4df matrix = { {1.0, 5.0, 9.0, 13.0},
                             {2.0, 6.0, 10.0, 14.0},
                             {3.0, 7.0, 11.0, 15.0},
                             {4.0, 8.0, 12.0, 16.0} };
  
  float v = 1.0f;
  for (ssize_t row = 0; row < 4; row++) {
    for (ssize_t column = 0;  column < 4; column++) {    
      EXPECT_NEAR(v++, matrix.at(row, column), 0.00001);
    }
  }
}



TEST(MATRIX, ProductWithVector3df) {
  SquareMatrix3df matrix = { {1.0, 0.0, 1.0},
                             {0.0, 1.0, 1.0},
                             {0.0, 0.0, 1.0} };
  Vector3df vector = {-6.0, 3.0,  1.0};
  Vector3df product = matrix * vector;  
  
  EXPECT_NEAR(-6.0, product[0], 0.00001);
  EXPECT_NEAR( 3.0, product[1], 0.00001);
  EXPECT_NEAR(-2.0, product[2], 0.00001);
}



TEST(MATRIX, ProductWithMatrix2df) {
  SquareMatrix3df matrix1 = { {1.0, 2.0},
                              {-1.0, 1.5} };
  SquareMatrix3df matrix2 = { {2.0, -1.0},
                              {1.0, 0.0} };
  SquareMatrix3df matrix = matrix1 * matrix2; 
  
  EXPECT_NEAR( 3.0, matrix.at(0,0), 0.00001);
  EXPECT_NEAR( 1.0, matrix.at(0,1), 0.00001);
  EXPECT_NEAR( 2.5, matrix.at(1,0), 0.00001);
  EXPECT_NEAR( 2.0, matrix.at(1,1), 0.00001);
}

// Aufgabe 3
// prüfen, ob eine Matrix korrekt initialisiert wird, wenn keine Werte angegeben sind.
// In einer Matrix, die mit {} erstellt wird, sollten alle Elemente 0 sein
TEST(MATRIX, EmptyInitialization) {
  SquareMatrix3df matrix = {}; // Leere Initialisierung
  for (ssize_t row = 0; row < 3; ++row) {
    for (ssize_t col = 0; col < 3; ++col) {
      EXPECT_NEAR(0.0, matrix.at(row, col), 0.00001); // Alle Werte sollten 0 sein
    }
  }
}

// Multiplikation mit Identitätsmatrix sollte die ursprüngliche Matrix zurückgeben
// Identitätsmatrix - alle Diagonalelemente sind 1 und alle anderen 0
TEST(MATRIX, MultiplyWithIdentityMatrix) {
  SquareMatrix3df matrix = { {1.0, 2.0, 3.0},
                             {4.0, 5.0, 6.0},
                             {7.0, 8.0, 9.0} };

  SquareMatrix3df identity = { {1.0, 0.0, 0.0},
                               {0.0, 1.0, 0.0},
                               {0.0, 0.0, 1.0} };

  SquareMatrix3df result = matrix * identity;
  // Ergebnis sollte gleich der ursprünglichen Matrix sein
  for (ssize_t row = 0; row < 3; ++row) {
    for (ssize_t col = 0; col < 3; ++col) {
      EXPECT_NEAR(matrix.at(row, col), result.at(row, col), 0.00001);
    }
  }
}

// Matrixmultiplikation mit 2x2-Matrizen testen
TEST(MATRIX, ProductMultiplicationWithMatrix2df) {
  // zwei 2x2-Matrizen definieren
  SquareMatrix2df matrix1 = { {1.0f, 2.0f}, {3.0f, 4.0f} };
  SquareMatrix2df matrix2 = { {5.0f, 6.0f}, {7.0f, 8.0f} };

  // Erwartetes Ergebnis der Multiplikation von matrix1 * matrix2
  SquareMatrix2df expected = { {23.0f, 34.0f}, {31.0f, 46.0f} };

  SquareMatrix2df result = matrix1 * matrix2;

  // prüfen, ob das Ergebnis mit der erwarteten Matrix übereinstimmt
  for (ssize_t c = 0; c < 2; ++c) {		// Über Spalten iterieren
    for (ssize_t r = 0; r < 2; ++r) {	// Zeilen
      EXPECT_FLOAT_EQ(result.at(r, c), expected.at(r, c));	// Werte vergleichen
    }
  }
}

// Testet die Matrixmultiplikation mit 3x3-Matrizen
TEST(MATRIX, ProductMultiplicationWithMatrix3df) {
  // zwei 3x3-Matrizen definieren
  SquareMatrix3df matrix1 = { {1.0f, 2.0f, -2.0f}, {3.0f, 4.0f, 5.0f}, {0.0f, -2.0f, -1.0f} };
  SquareMatrix3df matrix2 = { {5.0f, 6.0f, 1.0f}, {7.0f, 8.0f, -3.0f}, {4.0f, 2.0f, 3.0f} };

  // Erwartetes Ergebnis der Multiplikation von matrix1 * matrix2
  SquareMatrix3df expected = { {23.0f, 32.0f, 19.0f}, {31.0f, 52.0f, 29.0f}, {10.0f, 10.0f, -1.0f} };

  SquareMatrix3df result = matrix1 * matrix2;

  // prüfen, ob das Ergebnis mit der erwarteten Matrix übereinstimmt
  for (ssize_t c = 0; c < 3; ++c) { 	// Über Spalten iterieren
    for (ssize_t r = 0; r < 3; ++r) { 	// Zeilen
      EXPECT_FLOAT_EQ(result.at(r, c), expected.at(r, c));	// Werte vergleichen
    }
  }
}

}
