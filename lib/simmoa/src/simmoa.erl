%%% File    : simmoa.erl
%%% Author  : Chris Duesing <chris.duesing@gmail.com>
%%% Description : 
%%% Created : 27 Feb 2010 by Chris Duesing <chris.duesing@gmail.com>

-module(simmoa).

-export([start/0, stop/0]).


        
%% @spec start() -> ok
%% @doc Start the simmoa server.
start() ->
    ensure_started(crypto),
    application:start(simmoa).

%% @spec stop() -> ok
%% @doc Stop the simmoa server.
stop() ->
    Res = application:stop(simmoa),
    application:stop(crypto),
    Res.

%new_player(Name) ->
%    #player{

%%--------------------------------------------------------------------
%%% Internal functions
%%--------------------------------------------------------------------
ensure_started(App) ->
    case application:start(App) of
        ok ->
            ok;
        {error, {already_started, App}} ->
            ok
    end.
