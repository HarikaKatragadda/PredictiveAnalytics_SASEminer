label IMP_DemAge = 'Imputed: Age';
IMP_DemAge = DemAge;
if missing(DemAge) then IMP_DemAge = 60;
