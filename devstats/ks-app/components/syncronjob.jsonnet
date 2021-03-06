local env = std.extVar("__ksonnet/environments");
local params = std.extVar("__ksonnet/params").components["synccronjob"];
local k = import "k.libsonnet";
local devstatsLib = import "devstats-parts.libsonnet";

std.prune(k.core.v1.list.new(devstatsLib.syncCronJob(params, env)))
