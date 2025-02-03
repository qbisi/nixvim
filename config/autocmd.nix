{
  autoCmd = [
    # {
    #   event = [ "FileType" ];
    #   command = ":tabnew % | tabprevious | quit | tabnext";
    #   pattern = [ "help" ];
    #   group = "helpBuffer";
    # }
    {
      event = [ "FileType" ];
      command = "set buflisted";
      pattern = [ "help" ];
      group = "helpBuffer";
    }
  ];
  autoGroups = {
    helpBuffer = {
      clear = true;
    };
  };
}
