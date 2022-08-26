//
//  PiedraPapelTijerasUITests.swift
//  PiedraPapelTijerasUITests
//
//  Created by Rodrigo Alejandro Yáñez García on 18/08/22.
//

import XCTest

class PiedraPapelTijerasUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    func testBotonPiedra() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        //GIVEN
        let botonPiedra = app.buttons["botonPiedra"]
        
        //WHEN
        botonPiedra.tap()
            
        //THEN
        let resultado = app.textFields["resultadoTextField"]
        XCTAssertNotEqual(resultado.label, "")
    }
    
    func testBotonPapel() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        //GIVEN
        let botonPapel = app.buttons["botonPapel"]
        
        //WHEN
        botonPapel.tap()
            
        //THEN
        let resultado = app.textFields["resultadoTextField"]
        XCTAssertNotEqual(resultado.label, "")
    }
    
    func testBotonTijeras() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        //GIVEN
        let botonTijeras = app.buttons["botonTijeras"]
        
        //WHEN
        botonTijeras.tap()
            
        //THEN
        let resultado = app.textFields["resultadoTextField"]
        XCTAssertNotEqual(resultado.label, "")
    }
    
    func testBotonReiniciar() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        //GIVEN
        let botonReiniciar = app.buttons["botonReiniciar"]
        
        //WHEN
        botonReiniciar.tap()
            
        //THEN
        let resultado = app.textFields["resultadoTextField"]
        XCTAssertNotEqual(resultado.label, "")

    }

}
