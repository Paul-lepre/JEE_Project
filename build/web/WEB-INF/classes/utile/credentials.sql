/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Nico
 * Created: 11 déc. 2018
 */

DROP TABLE CREDENTIALS;
Create TABLE CREDENTIALS (LOGIN VARCHAR(32), PWD VARCHAR(32));
INSERT INTO CREDENTIALS (LOGIN, PASSWORD)
VALUES ('admin', 'admin');
