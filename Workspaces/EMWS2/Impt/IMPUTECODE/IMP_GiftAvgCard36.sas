format IMP_GiftAvgCard36 DOLLAR9.2;
label IMP_GiftAvgCard36 = 'Imputed: Gift Amount Average Card 36 Months';
IMP_GiftAvgCard36 = GiftAvgCard36;
if missing(GiftAvgCard36) then IMP_GiftAvgCard36 = 12.5;
