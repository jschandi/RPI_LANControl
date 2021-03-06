// Copyright (C) 2017 - IIT Bombay - FOSSEE
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
// Organization: FOSSEE, IIT Bombay
// Email: toolbox@scilab.in

function RPI_lcdPuts(fd,character)
// Function to print on the lcd screen 
//
// Calling Sequence
//  RPI_lcdPuts(fd,character)
//
// Parameters
//  fd       : file-descriptor obtained using RPI_lcdInit function  
//  character: character to print
//
// Description
//  This function outputs a single ASCII character, a string or a formatted string using the usual printf formatting commands.
//
// Examples
//  RPI_lcdPuts(13,'K')
// See also
//  RPI_lcdCursorBlink, RPI_lcdCharDef, RPI_lcdClear, RPI_lcdCursor, RPI_lcdDisplay, RPI_lcdHome, RPI_lcdInit, RPI_lcdPutchar, RPI_lcdPosition, RPI_lcdPrintf, RPI_lcdSendCommand
//
// Authors
//  Jorawar Singh
//
// Bibliography
//  http://wiringpi.com/reference/

    RPI_commande("lPu#2#"+string(fd)+"#"+string(character)+"#");
    RPI_send();
endfunction

