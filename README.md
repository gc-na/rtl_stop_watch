# rtl_stop_watch
STOP WATCH Verilog HDL RTL Coding


error code빼고는 다 됨. 기능이 아주 소소하게 다름. 
error code를 굳이 쓴 이유는,

hour <= real_sec / 3600  
min <= real_sec / 60;  
sec <= real_sec % 60;  

위와 같은 방법으로 하면, if문 하나만으로, hour, min, sec을 계산 할 수 있을거라 생각했음.
근데, 실제 회로에서는 이렇게 안된다. 나눗셈이나 곱셈을 하고싶으면 별도 회로를 설계해서 넣거나 2^n으로 계산해야한다.
