module full_adder_tb();
//declare tb variable
         reg a1;
         reg b1;
         reg cin1;
         wire sum1;
         wire cout1;
        
   
   //instantiate the dut
    full_adder DUT(.a(a1), .b(b1), .cin(cin1),.sum(sum1),.cout(cout1));
    
    initial
    begin
    a1=0; b1=0; cin1=0;
   #10 a1=1; b1=1; cin1=0;
    #10 a1=1; b1=1; cin1=1;
    #10 a1=0; b1=1; cin1=0;
    
    end
 
    initial
    begin
   // displaying 
    $monitor ($time,"a1=%0b, b1=%0b, cin1=%0b, sum=%0b,cout=%0b" ,a1,b1,cin1,sum1,cout1);
    end
    
   initial #50 $finish;
    
endmodule
