local data, eof = ngx.arg[1], ngx.arg[2]


s,e,key,value = string.find(ngx.arg[1],"NEW")

if s ~= nil 
then
	--ngx.arg[1] = ngx.arg[1] .. "NNNNNNNNNNNN"
	ngx.arg[1] = string.gsub(ngx.arg[1] ,"NEW" ,"---- NEW ----")
end


-- ngx.arg[1] = "Hello body filter called  . " .. ngx.arg[1]

----  if eof 
----  then
----  	ngx.arg[1] = "Hello changed content . "
----  end

