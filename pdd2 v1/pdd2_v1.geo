//Janeiro, 2019 - Autor: Cássio T. Kruger
//UFPel - Eng. de Controle e Automação
//pdd2 - v1.0

Solver.AutoShowLastStep = 1;
Mesh.Algorithm = 1;


Include "pdd2_v1_data.geo" ;
Include "pdd2_v1_stator.geo" ;
Include "pdd2_v1_rotor.geo" ;

Mesh.CharacteristicLengthFactor = 0.011;


//Mesh 2;

// For nice visualisation...
Mesh.Light = 0 ;

Hide { Line{ Line '*' }; }
Hide { Point{ Point '*' }; }

Physical Line("NICEPOS") = { nicepos_rotor[], nicepos_stator[] };
Show { Line{ nicepos_rotor[], nicepos_stator[] }; }

//For post-processing...
View[PostProcessing.NbViews-1].Light = 0;
View[PostProcessing.NbViews-1].NbIso = 50; // Number of intervals
View[PostProcessing.NbViews-1].IntervalsType = 1;


