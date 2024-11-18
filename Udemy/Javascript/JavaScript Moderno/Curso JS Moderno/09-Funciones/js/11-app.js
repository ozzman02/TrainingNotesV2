// Parametros en un arrow Function...


// Parametros
const aprendiendoV1 = (tecnologia) => console.log(`aprendiendo ${tecnologia}`);
aprendiendoV1('JavaScript');

// si es un solo parmetro no ocupamos el parentesis
const aprendiendoV2 = tecnologia => console.log(`aprendiendo ${tecnologia}`);
aprendiendoV2('JavaScript');

// multiples parametros si requieren parentesis
const aprendiendoV3 = (tecn1, tecn2) => console.log(`Aprendiendo ${tecn1} ${tecn2}`);
aprendiendoV3('JS', 'ES');

