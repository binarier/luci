m = Map("cgminer", translate("Configuration"),
        translate("configuration"))

conf = m:section(TypedSection, "cgminer", "General")
conf.anonymous = true
conf.addremove = false

pool1url = conf:option(Value, "pool1url", translate("Pool 1"))
pool1user = conf:option(Value, "pool1user", translate("Pool1 worker"))
pool1pw = conf:option(Value, "pool1pw", translate("Pool1 password"))
pool2url = conf:option(Value, "pool2url", translate("Pool 2"))
pool2user = conf:option(Value, "pool2user", translate("Pool2 worker"))
pool2pw = conf:option(Value, "pool2pw", translate("Pool2 password"))
pool3url = conf:option(Value, "pool3url", translate("Pool 3"))
pool3user = conf:option(Value, "pool3user", translate("Pool3 worker"))
pool3pw = conf:option(Value, "pool3pw", translate("Pool3 password"))

pb = conf:option(ListValue, "pool_balance", translate("Pool Balance(Default: Balance)"))
pb.default = "--balance"
pb:value("--balance", translate("Balance"))
pb:value("--load-balance", translate("Load Balance"))
pb:value("  ", translate("Failover"))


api_allow = conf:option(Value, "api_allow", translate("API Allow(Default: W:127.0.0.1)"))

more_options = conf:option(Value, "more_options", translate("More Options(Default: --quiet)"))

clam = m:section(TypedSection, "cgminer", "Clam ASIC")
clam.anonymous = true
clam.addremove = false

cc = clam:option(Value, "clam_clock", translate("Clam Clock (Default: 320)"))

return m
