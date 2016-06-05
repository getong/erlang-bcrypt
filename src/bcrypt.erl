%% Copyright (c) 2011 Hunter Morris
%% Distributed under the MIT license; see LICENSE for details.
-module(bcrypt).
-author('Hunter Morris <hunter.morris@smarkets.com>').

-export([gen_salt/0, gen_salt/1, hashpw/2]).

gen_salt() ->
    bcrypt_pool:gen_salt().
gen_salt(Rounds) ->
    bcrypt_pool:gen_salt(Rounds).

hashpw(Password, Salt) ->
    bcrypt_pool:hashpw(Password, Salt).
