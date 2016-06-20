function br(message)
	ngx.say("<p>" .. message .. "</p>");
end

if false 
then

	br("URI IS :" .. ngx.var.uri);
	br("QUERY STRING IS :" .. ngx.var.query_string);
	br("REQUEST METHOD IS  :" .. ngx.req.get_method());
	
	local headers = ngx.req.get_headers();
	
	for k,v in pairs(headers) 
	do
		br(k)
	end
	
	ngx.req.read_body()
	
	if ngx.req.get_method() == "POST" 
	then
		local data = ngx.req.get_body_data()
		ngx.say(data)
	end

end
