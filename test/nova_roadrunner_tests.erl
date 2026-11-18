-module(nova_roadrunner_tests).

-include_lib("eunit/include/eunit.hrl").

%% What Roadrunner's supervisor says of a listener that did not start has
%% the child specification in it, and that has the TLS options.
start_failure_test() ->
    Child = {child, undefined, web, {roadrunner_listener, start_link, [#{key => ~"der"}]}},
    ?assertEqual(eaddrinuse, nova_roadrunner:why({{listen_failed, eaddrinuse}, Child})),
    ?assertEqual(shutdown, nova_roadrunner:why({shutdown, Child})),
    ?assertEqual({already_started, self()}, nova_roadrunner:why({already_started, self()})),
    ?assertEqual(timeout, nova_roadrunner:why(timeout)).
