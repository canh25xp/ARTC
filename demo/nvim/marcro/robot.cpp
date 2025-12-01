class ROBOT {
  char dir;
  int xpos;
  int ypos;

  /*
  Step 1: remove 'else'
  vif                     select inside function
  :'<,'>s/else /          search and delete all 'else'
  Step 2:
  [f                      goto begin of the function
  +                       goto first word nextline
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
