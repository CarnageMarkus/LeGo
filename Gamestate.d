/***********************************\
              GAMESTATE
\***********************************/

//========================================
// Globals Gamestate-Variable
//========================================
// Konstanten in Userconst.d
var int Gamestate;

//========================================
// [intern] Variablen
//========================================
var int _Gamestate_Event;

//========================================
// Listener f�r Gamestate hinzuf�gen
//========================================
func void Gamestate_AddListener(var func f) {
    Event_Add(_Gamestate_Event, f);
};

//========================================
// Listener f�r Gamestate entfernen
//========================================
func void Gamestate_RemoveListener(var func f) {
    Event_Remove(_Gamestate_Event, f);
};

//========================================
// [intern] Initialisierung
//========================================
func void _Gamestate_Init(var int state) {
    if(!_Gamestate_Event) {
        _Gamestate_Event = Event_Create();
    };
    Event_Execute(_Gamestate_Event, state);
    Gamestate = state;
};