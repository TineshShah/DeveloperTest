using System;
using Wescale.DevTestCommon;

namespace Wescale.DevTestCon {

    /// <summary>
    ///  Dienst für mathematische Berechnungen.
    /// </summary>
    public class MathService : MarshalByRefObject, IMathService {

        /// <summary>
        /// Addiert zwei ganzzahlige Werte.
        /// </summary>
        /// <param name="a">Erste Zahl</param>
        /// <param name="b">Zweite Zahl</param>
        /// <returns>Ergebnis</returns>
        public int Add(int a, int b) {
            return a + b;
        }

        /// <summary>
        /// Multipliziert zwei ganzzahlige Werte.
        /// </summary>
        /// <param name="a">Erste Zahl</param>
        /// <param name="b">Zweite Zahl</param>
        /// <returns>Ergebnis</returns>
        public int Mul(int a, int b) {
            return a * b;
        }

        /// <summary>
        /// Subtrahiert zwei ganzzahlige Werte.
        /// </summary>
        /// <param name="a">Erste Zahl</param>
        /// <param name="b">Zweite Zahl</param>
        /// <returns>Ergebnis</returns>
        public int Sub(int a, int b) {
            return a - b;
        }

        /// <summary>
        /// Dividiert zwei ganzzahlige Werte.
        /// </summary>
        /// <param name="a">Erste Zahl</param>
        /// <param name="b">Zweite Zahl</param>
        /// <returns>Ergebnis</returns>
        public int Div(int a, int b) {
            return a / b;
        }

        /// <summary>
        /// Modulo-Operation zweier ganzzahlige Werte.
        /// </summary>
        /// <param name="a">Erste Zahl</param>
        /// <param name="b">Zweite Zahl</param>
        /// <returns>Ergebnis</returns>
        public int Mod(int a, int b) {//corrected Modulo
            // Wie funktioniert Modulo? 
            // Keine Ahnung, TDD-Ansatz, der Product-Owner hat den ModSimpleTest geschrieben.
            return a % b;
        }

    }
}
