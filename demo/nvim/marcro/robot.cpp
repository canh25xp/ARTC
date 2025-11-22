class ROBOT {
  char dir;
  int xpos;
  int ypos;

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
};
