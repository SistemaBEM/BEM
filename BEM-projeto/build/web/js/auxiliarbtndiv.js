/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function btndiv1() {
    var x = document.getElementById("texto1");
    var y = document.getElementById("texto2");
    var z = document.getElementById("texto3");
    
    if (x.style.display === "none") {
        x.style.display = "block";
        y.style.display = "none";
        z.style.display = "none";
    } else {
        x.style.display = "none";
    }
}

function btndiv2() {
    var x = document.getElementById("texto2");
    var y = document.getElementById("texto1");
    var z = document.getElementById("texto3");
    
    if (x.style.display === "none") {
        x.style.display = "block";
        y.style.display = "none";
        z.style.display = "none";
    } else {
        x.style.display = "none";
    }
}


function btndiv3() {
    var x = document.getElementById("texto3");
    var y = document.getElementById("texto1");
    var z = document.getElementById("texto2");
    
    if (x.style.display === "none") {
        x.style.display = "block";
        y.style.display = "none";
        z.style.display = "none";
    } else {
        x.style.display = "none";
    }
}
