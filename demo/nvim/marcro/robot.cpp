class ROBOT {
  char dir;
  int xpos;
  int ypos;

  /*
  Step 1: remove 'else'
  vif                     select inside function
  :'<,'>s/else /          search and delete all 'else'
  Step 2: add `switch`
  cif                     select inside function
  switch (rob->dir) {}    litteral text insert
  =af                     format arround function
  +                       Move to the first word next line
  Step 3: Record macro
  qq                      Start record macro to key `q`
  ciw                     Change inner word
  case                    litteral text insert
  ya'                     vopy arround ''
  gi                      return ro previous insert
  p                       paste
  da(                     delete arround ()
  $                       go to end of line
  r:                      replace { with :
  jD                      down 1 line and delete whole line
  i                       enter insert
  break;                  litteral text insert
  +                       Move to the first word next line
  q                       End macro
  */
  void move(ROBOT *rob) {
    if (rob->dir == 'N') {
      rob->ypos += 1;
    }
    else if (rob->dir == 'S') {
      rob->ypos -= 1;
    }
    else if (rob->dir == 'E') {
      rob->xpos += 1;
    }
    else if (rob->dir == 'W') {
      rob->xpos -= 1;
    }
  }

  void move2(ROBOT *rob) {
    switch (rob->dir) {
      case 'N':
        rob->ypos += 1;
        break;
      case 'S':
        rob->ypos -= 1;
        break;
      case 'E':
        rob->xpos += 1;
        break;
      case 'W':
        rob->xpos -= 1;
        break;
    }
  }
};
