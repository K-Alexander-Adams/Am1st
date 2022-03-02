//logging hom and suicide rates

gen loghom = ln(homrate)

gen logsui = ln(suiciderate)

gen logFhom = ln(fhomrate)

gen logFsui = ln(fsuiciderate)

//no controls

reg loghom nopermit shallissue, vce(cluster state)

reg logFhom nopermit shallissue, vce(cluster state)

reg logsui nopermit shallissue, vce(cluster state)

reg logFsui nopermit shallissue, vce(cluster state)


//Total
areg loghom nopermit shallissue  popdensity alc povrate unemp fryer prisonpct pct15to19 pct20to24 pct25to29 pct30to34 pct35to39 pct40to44 pct45to49 pct50to54 pct55to59 pct60to64 pct65over policepercap civpolpercap assaultban permit execrate pctblack pctwhite pctcol  conpct milpct incomepc rwelfarepc trend* i.year, absorb(state) vce(cluster state)

areg logsui nopermit shallissue popdensity alc povrate unemp fryer prisonpct pct15to19 pct20to24 pct25to29 pct30to34 pct35to39 pct40to44 pct45to49 pct50to54 pct55to59 pct60to64 pct65over policepercap civpolpercap assaultban permit execrate pctblack pctwhite pctcol  conpct milpct incomepc rwelfarepc  trend* i.year, absorb(state) vce(cluster state)


//Firearm Only
areg logFhom nopermit shallissue  popdensity alc povrate unemp fryer prisonpct pct15to19 pct20to24 pct25to29 pct30to34 pct35to39 pct40to44 pct45to49 pct50to54 pct55to59 pct60to64 pct65over policepercap civpolpercap assaultban permit execrate pctblack pctwhite pctcol  conpct milpct incomepc rwelfarepc trend* i.year, absorb(state) vce(cluster state)

areg logFsui nopermit shallissue popdensity alc povrate unemp fryer prisonpct pct15to19 pct20to24 pct25to29 pct30to34 pct35to39 pct40to44 pct45to49 pct50to54 pct55to59 pct60to64 pct65over policepercap civpolpercap assaultban permit execrate pctblack pctwhite pctcol  conpct milpct incomepc rwelfarepc trend* i.year, absorb(state) vce(cluster state)