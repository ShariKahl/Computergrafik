#include <cassert>
#include <initializer_list>
#include "matrix.h"

// Konstruktor: Initialisierung über eine Liste von Vector<FLOAT, N>-Objekten,
// die als Spalten (column order) in der internen 'matrix'-Struktur gespeichert werden.
template <class FLOAT, size_t N>
SquareMatrix<FLOAT, N>::SquareMatrix(std::initializer_list< Vector<FLOAT, N > > values) {
    std::copy(values.begin(), values.end(), matrix.begin());
}

// returns reference to the i-th column vector
template <class FLOAT, size_t N>
Vector<FLOAT, N>& SquareMatrix<FLOAT, N>::operator[](std::size_t i)
{
    return matrix[i];
}

// returns i-th column vector
template <class FLOAT, size_t N>
Vector<FLOAT, N> SquareMatrix<FLOAT, N>::operator[](std::size_t i) const
{
    return matrix[i];
}

// returns the value at the given row and column (nur Lesen)
template <class FLOAT, size_t N>
FLOAT SquareMatrix<FLOAT, N>::at(size_t row, size_t column) const
{
    // Da "matrix[column]" den Spaltenvektor liefert, ist die row-te Komponente dieses Vektors das gesuchte Element.
    return matrix[column][row];
}

// returns the reference value at the given row and column (Lesen & Schreiben)
template <class FLOAT, size_t N>
FLOAT & SquareMatrix<FLOAT, N>::at(size_t row, size_t column)
{
    return matrix[column][row];
}

// returns the producut of this SquareMatrix and the given vector
template <class FLOAT, size_t N>
Vector<FLOAT, N> SquareMatrix<FLOAT, N>::operator*(const Vector<FLOAT, N> vector)
{
    Vector<FLOAT, N> product = {{}};
    // Ergebnis[i] = Summe über alle Spalten von (matrix[col][row] * vector[col])
    for (size_t row = 0u; row < N; ++row) {
        for (size_t col = 0u; col < N; ++col) {
            product[row] += matrix[col][row] * vector[col];
        }
    }
    return product;
}

//  returns the product of two square matrices
template <class F, size_t K>
SquareMatrix<F, K> operator*(const SquareMatrix<F, K> factor1, const SquareMatrix<F, K> factor2)
{
    SquareMatrix<F, K> product = factor1;   // 'product' als Kopie von factor1
    // alle Einträge vorab auf 0 initialisieren
    for (size_t col = 0; col < K; ++col) {
        for (size_t row = 0; row < K; ++row) {
            product[col][row] = 0;
        }
    }

    // eigentliche Multiplikation
    for (size_t col = 0; col < K; ++col) {
        for (size_t row = 0; row < K; ++row) {
            F sum = 0;
            for (size_t i = 0; i < K; ++i) {
                sum += factor1[i][row] * factor2[col][i];
            }
            product[col][row] = sum;
        }
    }
    return product;
}
