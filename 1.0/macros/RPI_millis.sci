// Copyright (C) 2017 - IIT Bombay - FOSSEE
//
// This file must be used under the terms of the CeCILL.
// This source file is licensed as described in the file COPYING, which
// you should have received as part of this distribution.  The terms
// are also available at
// http://www.cecill.info/licences/Licence_CeCILL_V2-en.txt
// Organization: FOSSEE, IIT Bombay
// Email: toolbox@scilab.in

function out=RPI_millis()
// Function to display the number of milliseconds since the call to RPI_pinNumbering function.
//
// Calling Sequence
//  t=RPI_millis()
//
// Description
//  This returns the time in microseconds since the call to RPI_pinNumbering function. It returns an unsigned 32-bit integer which wraps after 49 days.
//
// Examples
//  t=RPI_millis()
// See also
//  RPI_micros, RPI_delay, RPI_delayMicro
//
// Authors
//  Jorawar Singh
//
// Bibliography
//  http://wiringpi.com/reference/

    RPI_commande("mil#0#");
    out=RPI_send();
endfunction
