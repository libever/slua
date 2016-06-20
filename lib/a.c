#include <math.h>
#include <lua.h>
#include <lauxlib.h>
#include <lualib.h>

static int hello_sin(lua_State *L){
    double d = luaL_checknumber(L, 1);
    lua_pushnumber(L, sin(d));
    return 1;
}

static const struct luaL_Reg hello_lib[] = {
    {"hello_sin" , hello_sin},
    {NULL, NULL}
};

int luaopen_hello_lib(lua_State *L){
	/*luaL_newlib(L, hello_lib);*/
	luaL_register(L, "hello_lib",hello_lib); // lua 5.1
	return 1;
}
