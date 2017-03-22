specs
dialogSpec
  <spec: #dialog>

  ^ SpecLayout composed
      newColumn: [ :col |
        col 
          newRow: [ :row | 
            row 
              add: #usernameLabel width: self inputTextWidth; 
              add: #usernameField ]
          height: self inputTextHeight;
          newRow: [ :row | 
            row 
              add: #passwordLabel width: self inputTextWidth; 
              add: #passwordField ]
          height: self inputTextHeight ];
       yourself