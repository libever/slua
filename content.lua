local H = require("lib")
local N = require("hello_lib")

local old_content = ngx.req.get_body_data();
ngx.say("Hello world ");
ngx.say("NEW Hello world ");

------  ngx.say(N.hello_sin(1))
------  ngx.exit(200)
------  
------  H:new("Hello world")
------  
------  function fib(n)
------  	ngx.say("Number : ")
------  	ngx.say(n)
------  end
------  
------  function return_mul(a,b,c) 
------  	return a,b,c
------  end
------  
------  function showGlobal()
------  	for k,v in pairs(_G) do
------  		ngx.say(k)
------  	end
------  end
------  
------  showGlobal()

---  local i = 0;
---  while i < 10 do
---  	ngx.say("<p>Hello Number " .. i .. "</p>");
---  	i = i + 1;
---  end
---  
---  ---- for i = 1 , 100 , 3 do
---  ---- 	ngx.say("<p>" .. i .. "</p>")
---  ---- end
---  
---  sum = 2;
---  repeat 
---  	sum = sum * 2
---  	ngx.say(sum)
---  until sum > 10000
---  
---  fib(100)
---  
---  local e = 1
---  local f = 2 
---  local g = 3
---  
---  e,f,g = return_mul(e,f,g)
---  
---  ngx.say(e)
---  ngx.say(f)
---  ngx.say(g)
---  
---  
---  ngx.say("Hello big world");
---  ngx.exit(200);
---  
---  
