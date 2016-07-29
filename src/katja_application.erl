-module(katja_application).

%%% EXTERNAL EXPORTS
-export([get_env/3]).

%%%-----------------------------------------------------------------------------
%%% EXTERNAL EXPORTS
%%%-----------------------------------------------------------------------------
get_env(Application, Key, Def) ->
  case application:get_env(Application, Key) of
    {ok, Val} ->
      Val;
    undefined ->
      Def
  end.
