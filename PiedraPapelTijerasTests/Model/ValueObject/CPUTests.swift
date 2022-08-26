//
//  CPUTests.swift
//  PiedraPapelTijerasTests
//
//  Created by Rodrigo Alejandro Yáñez García on 25/08/22.
//

import XCTest
@testable import PiedraPapelTijeras

class CPUTests: XCTestCase {

    func testGenerarValorCPU() throws {
        // GIVEN
        let cpu = CPU()
        
        // WHEN
        let resultadoCPU = cpu.generarValor()
        
        // THEN
        let posiblesResultado = ["PIEDRA", "PAPEL", "TIJERAS"]
        let resultadoEsperado = posiblesResultado.contains(resultadoCPU)
        XCTAssert(resultadoEsperado)
        
    }

}
