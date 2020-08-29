
CREATE TABLE [A원당]
( 
	[A금액]              integer  NOT NULL ,
	[A혜택액]            integer  NOT NULL ,
	[혜택번호]           smallint  NOT NULL 
)
go

ALTER TABLE [A원당]
	ADD CONSTRAINT [XPKA원당] PRIMARY KEY  CLUSTERED ([혜택번호] ASC)
go

CREATE TABLE [가맹점]
( 
	[사업자번호]         char(10)  NOT NULL ,
	[가맹점명]           varchar(40)  NOT NULL ,
	[업종]               varchar(20)  NOT NULL ,
	[시군구읍면]         varchar(40)  NOT NULL ,
	[상세주소]           varchar(40)  NOT NULL ,
	[가맹점번호]         varchar(12)  NOT NULL 
)
go

ALTER TABLE [가맹점]
	ADD CONSTRAINT [XPK가맹점] PRIMARY KEY  CLUSTERED ([사업자번호] ASC,[가맹점번호] ASC)
go

CREATE TABLE [리터당]
( 
	[리터혜택액]         integer  NOT NULL ,
	[혜택번호]           smallint  NOT NULL 
)
go

ALTER TABLE [리터당]
	ADD CONSTRAINT [XPK리터당] PRIMARY KEY  CLUSTERED ([혜택번호] ASC)
go

CREATE TABLE [보유카드]
( 
	[카드번호]           char(16)  NOT NULL ,
	[CVC]                char(3)  NOT NULL ,
	[카드비밀번호]       char(4)  NOT NULL ,
	[유효기한]           char(4)  NOT NULL ,
	[ID]                 varchar(8)  NOT NULL ,
	[카드식별코드]       char(6)  NOT NULL ,
	[카드사번호]         tinyint  NOT NULL 
)
go

ALTER TABLE [보유카드]
	ADD CONSTRAINT [XPK보유카드] PRIMARY KEY  CLUSTERED ([카드번호] ASC,[ID] ASC,[카드식별코드] ASC,[카드사번호] ASC)
go

CREATE TABLE [선불]
( 
	[잔액]               float(24)  NOT NULL ,
	[카드번호]           char(16)  NOT NULL ,
	[ID]                 varchar(8)  NOT NULL ,
	[카드식별코드]       char(6)  NOT NULL ,
	[카드사번호]         tinyint  NOT NULL 
)
go

ALTER TABLE [선불]
	ADD CONSTRAINT [XPK선불] PRIMARY KEY  CLUSTERED ([카드번호] ASC,[ID] ASC,[카드식별코드] ASC,[카드사번호] ASC)
go

CREATE TABLE [신용]
( 
	[청구일]             tinyint  NOT NULL ,
	[납부방법]           char(8)  NOT NULL ,
	[지정한도]           float(24)  NOT NULL ,
	[카드번호]           char(16)  NOT NULL ,
	[ID]                 varchar(8)  NOT NULL ,
	[카드식별코드]       char(6)  NOT NULL ,
	[카드사번호]         tinyint  NOT NULL 
)
go

ALTER TABLE [신용]
	ADD CONSTRAINT [XPK신용] PRIMARY KEY  CLUSTERED ([카드번호] ASC,[ID] ASC,[카드식별코드] ASC,[카드사번호] ASC)
go

CREATE TABLE [이용내역]
( 
	[승인번호]           varchar(10)  NOT NULL ,
	[금액]               float(24)  NOT NULL ,
	[일시]               datetime  NOT NULL ,
	[카드번호]           char(16)  NOT NULL ,
	[ID]                 varchar(8)  NOT NULL ,
	[카드식별코드]       char(6)  NOT NULL ,
	[카드사번호]         tinyint  NOT NULL ,
	[사업자번호]         char(10)  NOT NULL ,
	[가맹점번호]         varchar(12)  NOT NULL 
)
go

ALTER TABLE [이용내역]
	ADD CONSTRAINT [XPK이용내역] PRIMARY KEY  CLUSTERED ([승인번호] ASC,[카드번호] ASC,[ID] ASC,[카드식별코드] ASC,[카드사번호] ASC,[사업자번호] ASC,[가맹점번호] ASC)
go

CREATE TABLE [제공]
( 
	[카드식별코드]       char(6)  NOT NULL ,
	[카드사번호]         tinyint  NOT NULL ,
	[혜택번호]           smallint  NOT NULL 
)
go

ALTER TABLE [제공]
	ADD CONSTRAINT [XPK제공] PRIMARY KEY  CLUSTERED ([카드식별코드] ASC,[카드사번호] ASC,[혜택번호] ASC)
go

CREATE TABLE [체크]
( 
	[은행명]             varchar(20)  NOT NULL ,
	[계좌번호]           varchar(14)  NOT NULL ,
	[계좌잔고]           float(24)  NOT NULL ,
	[카드번호]           char(16)  NOT NULL ,
	[ID]                 varchar(8)  NOT NULL ,
	[카드식별코드]       char(6)  NOT NULL ,
	[카드사번호]         tinyint  NOT NULL 
)
go

ALTER TABLE [체크]
	ADD CONSTRAINT [XPK체크] PRIMARY KEY  CLUSTERED ([카드번호] ASC,[ID] ASC,[카드식별코드] ASC,[카드사번호] ASC)
go

CREATE TABLE [최소B원결제시]
( 
	[B금액]              integer  NOT NULL ,
	[B혜택액]            integer  NOT NULL ,
	[혜택번호]           smallint  NOT NULL 
)
go

ALTER TABLE [최소B원결제시]
	ADD CONSTRAINT [XPK최소B원결제시] PRIMARY KEY  CLUSTERED ([혜택번호] ASC)
go

CREATE TABLE [충전정보]
( 
	[충전은행명]         varchar(20)  NOT NULL ,
	[충전계좌번호]       varchar(14)  NOT NULL ,
	[카드번호]           char(16)  NOT NULL ,
	[ID]                 varchar(8)  NOT NULL ,
	[카드식별코드]       char(6)  NOT NULL ,
	[카드사번호]         tinyint  NOT NULL 
)
go

ALTER TABLE [충전정보]
	ADD CONSTRAINT [XPK충전정보] PRIMARY KEY  CLUSTERED ([충전은행명] ASC,[충전계좌번호] ASC,[카드번호] ASC,[ID] ASC,[카드식별코드] ASC,[카드사번호] ASC)
go

CREATE TABLE [카드사]
( 
	[카드사번호]         tinyint  NOT NULL ,
	[카드사명]           varchar(20)  NOT NULL 
)
go

ALTER TABLE [카드사]
	ADD CONSTRAINT [XPK카드사] PRIMARY KEY  CLUSTERED ([카드사번호] ASC)
go

CREATE TABLE [카드종류]
( 
	[카드식별코드]       char(6)  NOT NULL ,
	[전월요구실적]       integer  NOT NULL ,
	[카드명]             varchar(20)  NOT NULL ,
	[연회비]             integer  NOT NULL ,
	[교통카드지원여부]   char(4)  NOT NULL ,
	[카드사번호]         tinyint  NOT NULL 
)
go

ALTER TABLE [카드종류]
	ADD CONSTRAINT [XPK카드종류] PRIMARY KEY  CLUSTERED ([카드식별코드] ASC,[카드사번호] ASC)
go

CREATE TABLE [퍼센트]
( 
	[혜택률]             float  NOT NULL ,
	[혜택번호]           smallint  NOT NULL 
)
go

ALTER TABLE [퍼센트]
	ADD CONSTRAINT [XPK퍼센트] PRIMARY KEY  CLUSTERED ([혜택번호] ASC)
go

CREATE TABLE [혜택]
( 
	[혜택번호]           smallint  NOT NULL ,
	[혜택내용]           varchar(60)  NOT NULL ,
	[혜택한도]           integer  NOT NULL ,
	[혜택방식]           varchar(10)  NOT NULL 
)
go

ALTER TABLE [혜택]
	ADD CONSTRAINT [XPK혜택] PRIMARY KEY  CLUSTERED ([혜택번호] ASC)
go

CREATE TABLE [회원]
( 
	[ID]                 varchar(8)  NOT NULL ,
	[추천인ID]           varchar(8)  NULL ,
	[PW]                 varchar(8)  NOT NULL ,
	[이름]               varchar(10)  NOT NULL ,
	[이메일]             varchar(20)  NOT NULL 
)
go

ALTER TABLE [회원]
	ADD CONSTRAINT [XPK회원] PRIMARY KEY  CLUSTERED ([ID] ASC)
go


ALTER TABLE [A원당]
	ADD CONSTRAINT [A원당혜택] FOREIGN KEY ([혜택번호]) REFERENCES [혜택]([혜택번호])
		ON DELETE CASCADE
		ON UPDATE NO ACTION
go


ALTER TABLE [리터당]
	ADD CONSTRAINT [리터당혜택] FOREIGN KEY ([혜택번호]) REFERENCES [혜택]([혜택번호])
		ON DELETE CASCADE
		ON UPDATE NO ACTION
go


ALTER TABLE [보유카드]
	ADD CONSTRAINT [등록] FOREIGN KEY ([ID]) REFERENCES [회원]([ID])
		ON DELETE CASCADE
		ON UPDATE NO ACTION
go

ALTER TABLE [보유카드]
	ADD CONSTRAINT [발급] FOREIGN KEY ([카드식별코드],[카드사번호]) REFERENCES [카드종류]([카드식별코드],[카드사번호])
		ON DELETE CASCADE
		ON UPDATE NO ACTION
go


ALTER TABLE [선불]
	ADD CONSTRAINT [선불카드] FOREIGN KEY ([카드번호],[ID],[카드식별코드],[카드사번호]) REFERENCES [보유카드]([카드번호],[ID],[카드식별코드],[카드사번호])
		ON DELETE CASCADE
		ON UPDATE NO ACTION
go


ALTER TABLE [신용]
	ADD CONSTRAINT [신용카드] FOREIGN KEY ([카드번호],[ID],[카드식별코드],[카드사번호]) REFERENCES [보유카드]([카드번호],[ID],[카드식별코드],[카드사번호])
		ON DELETE CASCADE
		ON UPDATE NO ACTION
go


ALTER TABLE [이용내역]
	ADD CONSTRAINT [사용] FOREIGN KEY ([카드번호],[ID],[카드식별코드],[카드사번호]) REFERENCES [보유카드]([카드번호],[ID],[카드식별코드],[카드사번호])
		ON DELETE CASCADE
		ON UPDATE NO ACTION
go

ALTER TABLE [이용내역]
	ADD CONSTRAINT [결제] FOREIGN KEY ([사업자번호],[가맹점번호]) REFERENCES [가맹점]([사업자번호],[가맹점번호])
		ON DELETE CASCADE
		ON UPDATE NO ACTION
go


ALTER TABLE [제공]
	ADD CONSTRAINT [카드혜택] FOREIGN KEY ([카드식별코드],[카드사번호]) REFERENCES [카드종류]([카드식별코드],[카드사번호])
		ON DELETE CASCADE
		ON UPDATE NO ACTION
go

ALTER TABLE [제공]
	ADD CONSTRAINT [혜택제공] FOREIGN KEY ([혜택번호]) REFERENCES [혜택]([혜택번호])
		ON DELETE CASCADE
		ON UPDATE NO ACTION
go


ALTER TABLE [체크]
	ADD CONSTRAINT [체크카드] FOREIGN KEY ([카드번호],[ID],[카드식별코드],[카드사번호]) REFERENCES [보유카드]([카드번호],[ID],[카드식별코드],[카드사번호])
		ON DELETE CASCADE
		ON UPDATE NO ACTION
go


ALTER TABLE [최소B원결제시]
	ADD CONSTRAINT [최소B원결제시혜택] FOREIGN KEY ([혜택번호]) REFERENCES [혜택]([혜택번호])
		ON DELETE CASCADE
		ON UPDATE NO ACTION
go


ALTER TABLE [충전정보]
	ADD CONSTRAINT [충전] FOREIGN KEY ([카드번호],[ID],[카드식별코드],[카드사번호]) REFERENCES [선불]([카드번호],[ID],[카드식별코드],[카드사번호])
		ON DELETE CASCADE
		ON UPDATE NO ACTION
go


ALTER TABLE [카드종류]
	ADD CONSTRAINT [출시] FOREIGN KEY ([카드사번호]) REFERENCES [카드사]([카드사번호])
		ON DELETE CASCADE
		ON UPDATE NO ACTION
go


ALTER TABLE [퍼센트]
	ADD CONSTRAINT [퍼센트혜택] FOREIGN KEY ([혜택번호]) REFERENCES [혜택]([혜택번호])
		ON DELETE CASCADE
		ON UPDATE NO ACTION
go


ALTER TABLE [회원]
	ADD CONSTRAINT [추천] FOREIGN KEY ([추천인ID]) REFERENCES [회원]([ID])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


CREATE TRIGGER tD_A원당 ON A원당 FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on A원당 */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* 혜택  A원당 on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00012a85", PARENT_OWNER="", PARENT_TABLE="혜택"
    CHILD_OWNER="", CHILD_TABLE="A원당"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="A원당혜택", FK_COLUMNS="혜택번호" */
    IF EXISTS (SELECT * FROM deleted,혜택
      WHERE
        /* %JoinFKPK(deleted,혜택," = "," AND") */
        deleted.혜택번호 = 혜택.혜택번호 AND
        NOT EXISTS (
          SELECT * FROM A원당
          WHERE
            /* %JoinFKPK(A원당,혜택," = "," AND") */
            A원당.혜택번호 = 혜택.혜택번호
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last A원당 because 혜택 exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_A원당 ON A원당 FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on A원당 */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @ins혜택번호 smallint,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* 혜택  A원당 on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0001612a", PARENT_OWNER="", PARENT_TABLE="혜택"
    CHILD_OWNER="", CHILD_TABLE="A원당"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="A원당혜택", FK_COLUMNS="혜택번호" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(혜택번호)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,혜택
        WHERE
          /* %JoinFKPK(inserted,혜택) */
          inserted.혜택번호 = 혜택.혜택번호
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update A원당 because 혜택 does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_가맹점 ON 가맹점 FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on 가맹점 */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* 가맹점  이용내역 on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="000121a3", PARENT_OWNER="", PARENT_TABLE="가맹점"
    CHILD_OWNER="", CHILD_TABLE="이용내역"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="결제", FK_COLUMNS="사업자번호""가맹점번호" */
    IF EXISTS (
      SELECT * FROM deleted,이용내역
      WHERE
        /*  %JoinFKPK(이용내역,deleted," = "," AND") */
        이용내역.사업자번호 = deleted.사업자번호 AND
        이용내역.가맹점번호 = deleted.가맹점번호
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete 가맹점 because 이용내역 exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_가맹점 ON 가맹점 FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on 가맹점 */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @ins사업자번호 char(10), 
           @ins가맹점번호 varchar(12),
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* 가맹점  이용내역 on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00014a66", PARENT_OWNER="", PARENT_TABLE="가맹점"
    CHILD_OWNER="", CHILD_TABLE="이용내역"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="결제", FK_COLUMNS="사업자번호""가맹점번호" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(사업자번호) OR
    UPDATE(가맹점번호)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,이용내역
      WHERE
        /*  %JoinFKPK(이용내역,deleted," = "," AND") */
        이용내역.사업자번호 = deleted.사업자번호 AND
        이용내역.가맹점번호 = deleted.가맹점번호
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update 가맹점 because 이용내역 exists.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_리터당 ON 리터당 FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on 리터당 */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* 혜택  리터당 on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00012d27", PARENT_OWNER="", PARENT_TABLE="혜택"
    CHILD_OWNER="", CHILD_TABLE="리터당"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="리터당혜택", FK_COLUMNS="혜택번호" */
    IF EXISTS (SELECT * FROM deleted,혜택
      WHERE
        /* %JoinFKPK(deleted,혜택," = "," AND") */
        deleted.혜택번호 = 혜택.혜택번호 AND
        NOT EXISTS (
          SELECT * FROM 리터당
          WHERE
            /* %JoinFKPK(리터당,혜택," = "," AND") */
            리터당.혜택번호 = 혜택.혜택번호
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last 리터당 because 혜택 exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_리터당 ON 리터당 FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on 리터당 */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @ins혜택번호 smallint,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* 혜택  리터당 on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00016333", PARENT_OWNER="", PARENT_TABLE="혜택"
    CHILD_OWNER="", CHILD_TABLE="리터당"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="리터당혜택", FK_COLUMNS="혜택번호" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(혜택번호)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,혜택
        WHERE
          /* %JoinFKPK(inserted,혜택) */
          inserted.혜택번호 = 혜택.혜택번호
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update 리터당 because 혜택 does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_보유카드 ON 보유카드 FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on 보유카드 */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* 보유카드  선불 on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00070262", PARENT_OWNER="", PARENT_TABLE="보유카드"
    CHILD_OWNER="", CHILD_TABLE="선불"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="선불카드", FK_COLUMNS="카드번호""ID""카드식별코드""카드사번호" */
    IF EXISTS (
      SELECT * FROM deleted,선불
      WHERE
        /*  %JoinFKPK(선불,deleted," = "," AND") */
        선불.카드번호 = deleted.카드번호 AND
        선불.ID = deleted.ID AND
        선불.카드식별코드 = deleted.카드식별코드 AND
        선불.카드사번호 = deleted.카드사번호
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete 보유카드 because 선불 exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* 보유카드  체크 on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="보유카드"
    CHILD_OWNER="", CHILD_TABLE="체크"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="체크카드", FK_COLUMNS="카드번호""ID""카드식별코드""카드사번호" */
    IF EXISTS (
      SELECT * FROM deleted,체크
      WHERE
        /*  %JoinFKPK(체크,deleted," = "," AND") */
        체크.카드번호 = deleted.카드번호 AND
        체크.ID = deleted.ID AND
        체크.카드식별코드 = deleted.카드식별코드 AND
        체크.카드사번호 = deleted.카드사번호
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete 보유카드 because 체크 exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* 보유카드  신용 on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="보유카드"
    CHILD_OWNER="", CHILD_TABLE="신용"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="신용카드", FK_COLUMNS="카드번호""ID""카드식별코드""카드사번호" */
    IF EXISTS (
      SELECT * FROM deleted,신용
      WHERE
        /*  %JoinFKPK(신용,deleted," = "," AND") */
        신용.카드번호 = deleted.카드번호 AND
        신용.ID = deleted.ID AND
        신용.카드식별코드 = deleted.카드식별코드 AND
        신용.카드사번호 = deleted.카드사번호
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete 보유카드 because 신용 exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* 보유카드  이용내역 on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="보유카드"
    CHILD_OWNER="", CHILD_TABLE="이용내역"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="사용", FK_COLUMNS="카드번호""ID""카드식별코드""카드사번호" */
    IF EXISTS (
      SELECT * FROM deleted,이용내역
      WHERE
        /*  %JoinFKPK(이용내역,deleted," = "," AND") */
        이용내역.카드번호 = deleted.카드번호 AND
        이용내역.ID = deleted.ID AND
        이용내역.카드식별코드 = deleted.카드식별코드 AND
        이용내역.카드사번호 = deleted.카드사번호
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete 보유카드 because 이용내역 exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* 카드종류  보유카드 on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="카드종류"
    CHILD_OWNER="", CHILD_TABLE="보유카드"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="발급", FK_COLUMNS="카드식별코드""카드사번호" */
    IF EXISTS (SELECT * FROM deleted,카드종류
      WHERE
        /* %JoinFKPK(deleted,카드종류," = "," AND") */
        deleted.카드식별코드 = 카드종류.카드식별코드 AND
        deleted.카드사번호 = 카드종류.카드사번호 AND
        NOT EXISTS (
          SELECT * FROM 보유카드
          WHERE
            /* %JoinFKPK(보유카드,카드종류," = "," AND") */
            보유카드.카드식별코드 = 카드종류.카드식별코드 AND
            보유카드.카드사번호 = 카드종류.카드사번호
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last 보유카드 because 카드종류 exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* 회원  보유카드 on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="회원"
    CHILD_OWNER="", CHILD_TABLE="보유카드"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="등록", FK_COLUMNS="ID" */
    IF EXISTS (SELECT * FROM deleted,회원
      WHERE
        /* %JoinFKPK(deleted,회원," = "," AND") */
        deleted.ID = 회원.ID AND
        NOT EXISTS (
          SELECT * FROM 보유카드
          WHERE
            /* %JoinFKPK(보유카드,회원," = "," AND") */
            보유카드.ID = 회원.ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last 보유카드 because 회원 exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_보유카드 ON 보유카드 FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on 보유카드 */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @ins카드번호 char(16), 
           @insID varchar(8), 
           @ins카드식별코드 char(6), 
           @ins카드사번호 tinyint,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* 보유카드  선불 on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="000841e9", PARENT_OWNER="", PARENT_TABLE="보유카드"
    CHILD_OWNER="", CHILD_TABLE="선불"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="선불카드", FK_COLUMNS="카드번호""ID""카드식별코드""카드사번호" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(카드번호) OR
    UPDATE(ID) OR
    UPDATE(카드식별코드) OR
    UPDATE(카드사번호)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,선불
      WHERE
        /*  %JoinFKPK(선불,deleted," = "," AND") */
        선불.카드번호 = deleted.카드번호 AND
        선불.ID = deleted.ID AND
        선불.카드식별코드 = deleted.카드식별코드 AND
        선불.카드사번호 = deleted.카드사번호
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update 보유카드 because 선불 exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* 보유카드  체크 on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="보유카드"
    CHILD_OWNER="", CHILD_TABLE="체크"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="체크카드", FK_COLUMNS="카드번호""ID""카드식별코드""카드사번호" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(카드번호) OR
    UPDATE(ID) OR
    UPDATE(카드식별코드) OR
    UPDATE(카드사번호)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,체크
      WHERE
        /*  %JoinFKPK(체크,deleted," = "," AND") */
        체크.카드번호 = deleted.카드번호 AND
        체크.ID = deleted.ID AND
        체크.카드식별코드 = deleted.카드식별코드 AND
        체크.카드사번호 = deleted.카드사번호
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update 보유카드 because 체크 exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* 보유카드  신용 on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="보유카드"
    CHILD_OWNER="", CHILD_TABLE="신용"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="신용카드", FK_COLUMNS="카드번호""ID""카드식별코드""카드사번호" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(카드번호) OR
    UPDATE(ID) OR
    UPDATE(카드식별코드) OR
    UPDATE(카드사번호)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,신용
      WHERE
        /*  %JoinFKPK(신용,deleted," = "," AND") */
        신용.카드번호 = deleted.카드번호 AND
        신용.ID = deleted.ID AND
        신용.카드식별코드 = deleted.카드식별코드 AND
        신용.카드사번호 = deleted.카드사번호
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update 보유카드 because 신용 exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* 보유카드  이용내역 on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="보유카드"
    CHILD_OWNER="", CHILD_TABLE="이용내역"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="사용", FK_COLUMNS="카드번호""ID""카드식별코드""카드사번호" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(카드번호) OR
    UPDATE(ID) OR
    UPDATE(카드식별코드) OR
    UPDATE(카드사번호)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,이용내역
      WHERE
        /*  %JoinFKPK(이용내역,deleted," = "," AND") */
        이용내역.카드번호 = deleted.카드번호 AND
        이용내역.ID = deleted.ID AND
        이용내역.카드식별코드 = deleted.카드식별코드 AND
        이용내역.카드사번호 = deleted.카드사번호
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update 보유카드 because 이용내역 exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* 카드종류  보유카드 on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="카드종류"
    CHILD_OWNER="", CHILD_TABLE="보유카드"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="발급", FK_COLUMNS="카드식별코드""카드사번호" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(카드식별코드) OR
    UPDATE(카드사번호)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,카드종류
        WHERE
          /* %JoinFKPK(inserted,카드종류) */
          inserted.카드식별코드 = 카드종류.카드식별코드 and
          inserted.카드사번호 = 카드종류.카드사번호
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update 보유카드 because 카드종류 does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* 회원  보유카드 on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="회원"
    CHILD_OWNER="", CHILD_TABLE="보유카드"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="등록", FK_COLUMNS="ID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,회원
        WHERE
          /* %JoinFKPK(inserted,회원) */
          inserted.ID = 회원.ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update 보유카드 because 회원 does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_선불 ON 선불 FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on 선불 */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* 선불  충전정보 on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0002e7f5", PARENT_OWNER="", PARENT_TABLE="선불"
    CHILD_OWNER="", CHILD_TABLE="충전정보"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="충전", FK_COLUMNS="카드번호""ID""카드식별코드""카드사번호" */
    IF EXISTS (
      SELECT * FROM deleted,충전정보
      WHERE
        /*  %JoinFKPK(충전정보,deleted," = "," AND") */
        충전정보.카드번호 = deleted.카드번호 AND
        충전정보.ID = deleted.ID AND
        충전정보.카드식별코드 = deleted.카드식별코드 AND
        충전정보.카드사번호 = deleted.카드사번호
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete 선불 because 충전정보 exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* 보유카드  선불 on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="보유카드"
    CHILD_OWNER="", CHILD_TABLE="선불"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="선불카드", FK_COLUMNS="카드번호""ID""카드식별코드""카드사번호" */
    IF EXISTS (SELECT * FROM deleted,보유카드
      WHERE
        /* %JoinFKPK(deleted,보유카드," = "," AND") */
        deleted.카드번호 = 보유카드.카드번호 AND
        deleted.ID = 보유카드.ID AND
        deleted.카드식별코드 = 보유카드.카드식별코드 AND
        deleted.카드사번호 = 보유카드.카드사번호 AND
        NOT EXISTS (
          SELECT * FROM 선불
          WHERE
            /* %JoinFKPK(선불,보유카드," = "," AND") */
            선불.카드번호 = 보유카드.카드번호 AND
            선불.ID = 보유카드.ID AND
            선불.카드식별코드 = 보유카드.카드식별코드 AND
            선불.카드사번호 = 보유카드.카드사번호
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last 선불 because 보유카드 exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_선불 ON 선불 FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on 선불 */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @ins카드번호 char(16), 
           @insID varchar(8), 
           @ins카드식별코드 char(6), 
           @ins카드사번호 tinyint,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* 선불  충전정보 on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="000317bd", PARENT_OWNER="", PARENT_TABLE="선불"
    CHILD_OWNER="", CHILD_TABLE="충전정보"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="충전", FK_COLUMNS="카드번호""ID""카드식별코드""카드사번호" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(카드번호) OR
    UPDATE(ID) OR
    UPDATE(카드식별코드) OR
    UPDATE(카드사번호)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,충전정보
      WHERE
        /*  %JoinFKPK(충전정보,deleted," = "," AND") */
        충전정보.카드번호 = deleted.카드번호 AND
        충전정보.ID = deleted.ID AND
        충전정보.카드식별코드 = deleted.카드식별코드 AND
        충전정보.카드사번호 = deleted.카드사번호
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update 선불 because 충전정보 exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* 보유카드  선불 on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="보유카드"
    CHILD_OWNER="", CHILD_TABLE="선불"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="선불카드", FK_COLUMNS="카드번호""ID""카드식별코드""카드사번호" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(카드번호) OR
    UPDATE(ID) OR
    UPDATE(카드식별코드) OR
    UPDATE(카드사번호)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,보유카드
        WHERE
          /* %JoinFKPK(inserted,보유카드) */
          inserted.카드번호 = 보유카드.카드번호 and
          inserted.ID = 보유카드.ID and
          inserted.카드식별코드 = 보유카드.카드식별코드 and
          inserted.카드사번호 = 보유카드.카드사번호
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update 선불 because 보유카드 does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_신용 ON 신용 FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on 신용 */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* 보유카드  신용 on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="0001ace5", PARENT_OWNER="", PARENT_TABLE="보유카드"
    CHILD_OWNER="", CHILD_TABLE="신용"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="신용카드", FK_COLUMNS="카드번호""ID""카드식별코드""카드사번호" */
    IF EXISTS (SELECT * FROM deleted,보유카드
      WHERE
        /* %JoinFKPK(deleted,보유카드," = "," AND") */
        deleted.카드번호 = 보유카드.카드번호 AND
        deleted.ID = 보유카드.ID AND
        deleted.카드식별코드 = 보유카드.카드식별코드 AND
        deleted.카드사번호 = 보유카드.카드사번호 AND
        NOT EXISTS (
          SELECT * FROM 신용
          WHERE
            /* %JoinFKPK(신용,보유카드," = "," AND") */
            신용.카드번호 = 보유카드.카드번호 AND
            신용.ID = 보유카드.ID AND
            신용.카드식별코드 = 보유카드.카드식별코드 AND
            신용.카드사번호 = 보유카드.카드사번호
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last 신용 because 보유카드 exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_신용 ON 신용 FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on 신용 */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @ins카드번호 char(16), 
           @insID varchar(8), 
           @ins카드식별코드 char(6), 
           @ins카드사번호 tinyint,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* 보유카드  신용 on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0001c453", PARENT_OWNER="", PARENT_TABLE="보유카드"
    CHILD_OWNER="", CHILD_TABLE="신용"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="신용카드", FK_COLUMNS="카드번호""ID""카드식별코드""카드사번호" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(카드번호) OR
    UPDATE(ID) OR
    UPDATE(카드식별코드) OR
    UPDATE(카드사번호)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,보유카드
        WHERE
          /* %JoinFKPK(inserted,보유카드) */
          inserted.카드번호 = 보유카드.카드번호 and
          inserted.ID = 보유카드.ID and
          inserted.카드식별코드 = 보유카드.카드식별코드 and
          inserted.카드사번호 = 보유카드.카드사번호
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update 신용 because 보유카드 does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_이용내역 ON 이용내역 FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on 이용내역 */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* 가맹점  이용내역 on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="0003218c", PARENT_OWNER="", PARENT_TABLE="가맹점"
    CHILD_OWNER="", CHILD_TABLE="이용내역"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="결제", FK_COLUMNS="사업자번호""가맹점번호" */
    IF EXISTS (SELECT * FROM deleted,가맹점
      WHERE
        /* %JoinFKPK(deleted,가맹점," = "," AND") */
        deleted.사업자번호 = 가맹점.사업자번호 AND
        deleted.가맹점번호 = 가맹점.가맹점번호 AND
        NOT EXISTS (
          SELECT * FROM 이용내역
          WHERE
            /* %JoinFKPK(이용내역,가맹점," = "," AND") */
            이용내역.사업자번호 = 가맹점.사업자번호 AND
            이용내역.가맹점번호 = 가맹점.가맹점번호
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last 이용내역 because 가맹점 exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* 보유카드  이용내역 on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="보유카드"
    CHILD_OWNER="", CHILD_TABLE="이용내역"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="사용", FK_COLUMNS="카드번호""ID""카드식별코드""카드사번호" */
    IF EXISTS (SELECT * FROM deleted,보유카드
      WHERE
        /* %JoinFKPK(deleted,보유카드," = "," AND") */
        deleted.카드번호 = 보유카드.카드번호 AND
        deleted.ID = 보유카드.ID AND
        deleted.카드식별코드 = 보유카드.카드식별코드 AND
        deleted.카드사번호 = 보유카드.카드사번호 AND
        NOT EXISTS (
          SELECT * FROM 이용내역
          WHERE
            /* %JoinFKPK(이용내역,보유카드," = "," AND") */
            이용내역.카드번호 = 보유카드.카드번호 AND
            이용내역.ID = 보유카드.ID AND
            이용내역.카드식별코드 = 보유카드.카드식별코드 AND
            이용내역.카드사번호 = 보유카드.카드사번호
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last 이용내역 because 보유카드 exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_이용내역 ON 이용내역 FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on 이용내역 */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @ins승인번호 varchar(10), 
           @ins카드번호 char(16), 
           @insID varchar(8), 
           @ins카드식별코드 char(6), 
           @ins카드사번호 tinyint, 
           @ins사업자번호 char(10), 
           @ins가맹점번호 varchar(12),
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* 가맹점  이용내역 on child update no action */
  /* ERWIN_RELATION:CHECKSUM="000329be", PARENT_OWNER="", PARENT_TABLE="가맹점"
    CHILD_OWNER="", CHILD_TABLE="이용내역"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="결제", FK_COLUMNS="사업자번호""가맹점번호" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(사업자번호) OR
    UPDATE(가맹점번호)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,가맹점
        WHERE
          /* %JoinFKPK(inserted,가맹점) */
          inserted.사업자번호 = 가맹점.사업자번호 and
          inserted.가맹점번호 = 가맹점.가맹점번호
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update 이용내역 because 가맹점 does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* 보유카드  이용내역 on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="보유카드"
    CHILD_OWNER="", CHILD_TABLE="이용내역"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="사용", FK_COLUMNS="카드번호""ID""카드식별코드""카드사번호" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(카드번호) OR
    UPDATE(ID) OR
    UPDATE(카드식별코드) OR
    UPDATE(카드사번호)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,보유카드
        WHERE
          /* %JoinFKPK(inserted,보유카드) */
          inserted.카드번호 = 보유카드.카드번호 and
          inserted.ID = 보유카드.ID and
          inserted.카드식별코드 = 보유카드.카드식별코드 and
          inserted.카드사번호 = 보유카드.카드사번호
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update 이용내역 because 보유카드 does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_제공 ON 제공 FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on 제공 */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* 혜택  제공 on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00028c3e", PARENT_OWNER="", PARENT_TABLE="혜택"
    CHILD_OWNER="", CHILD_TABLE="제공"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="혜택제공", FK_COLUMNS="혜택번호" */
    IF EXISTS (SELECT * FROM deleted,혜택
      WHERE
        /* %JoinFKPK(deleted,혜택," = "," AND") */
        deleted.혜택번호 = 혜택.혜택번호 AND
        NOT EXISTS (
          SELECT * FROM 제공
          WHERE
            /* %JoinFKPK(제공,혜택," = "," AND") */
            제공.혜택번호 = 혜택.혜택번호
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last 제공 because 혜택 exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* 카드종류  제공 on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="카드종류"
    CHILD_OWNER="", CHILD_TABLE="제공"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="카드혜택", FK_COLUMNS="카드식별코드""카드사번호" */
    IF EXISTS (SELECT * FROM deleted,카드종류
      WHERE
        /* %JoinFKPK(deleted,카드종류," = "," AND") */
        deleted.카드식별코드 = 카드종류.카드식별코드 AND
        deleted.카드사번호 = 카드종류.카드사번호 AND
        NOT EXISTS (
          SELECT * FROM 제공
          WHERE
            /* %JoinFKPK(제공,카드종류," = "," AND") */
            제공.카드식별코드 = 카드종류.카드식별코드 AND
            제공.카드사번호 = 카드종류.카드사번호
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last 제공 because 카드종류 exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_제공 ON 제공 FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on 제공 */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @ins카드식별코드 char(6), 
           @ins카드사번호 tinyint, 
           @ins혜택번호 smallint,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* 혜택  제공 on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0002da9e", PARENT_OWNER="", PARENT_TABLE="혜택"
    CHILD_OWNER="", CHILD_TABLE="제공"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="혜택제공", FK_COLUMNS="혜택번호" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(혜택번호)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,혜택
        WHERE
          /* %JoinFKPK(inserted,혜택) */
          inserted.혜택번호 = 혜택.혜택번호
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update 제공 because 혜택 does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* 카드종류  제공 on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="카드종류"
    CHILD_OWNER="", CHILD_TABLE="제공"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="카드혜택", FK_COLUMNS="카드식별코드""카드사번호" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(카드식별코드) OR
    UPDATE(카드사번호)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,카드종류
        WHERE
          /* %JoinFKPK(inserted,카드종류) */
          inserted.카드식별코드 = 카드종류.카드식별코드 and
          inserted.카드사번호 = 카드종류.카드사번호
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update 제공 because 카드종류 does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_체크 ON 체크 FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on 체크 */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* 보유카드  체크 on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="0001b300", PARENT_OWNER="", PARENT_TABLE="보유카드"
    CHILD_OWNER="", CHILD_TABLE="체크"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="체크카드", FK_COLUMNS="카드번호""ID""카드식별코드""카드사번호" */
    IF EXISTS (SELECT * FROM deleted,보유카드
      WHERE
        /* %JoinFKPK(deleted,보유카드," = "," AND") */
        deleted.카드번호 = 보유카드.카드번호 AND
        deleted.ID = 보유카드.ID AND
        deleted.카드식별코드 = 보유카드.카드식별코드 AND
        deleted.카드사번호 = 보유카드.카드사번호 AND
        NOT EXISTS (
          SELECT * FROM 체크
          WHERE
            /* %JoinFKPK(체크,보유카드," = "," AND") */
            체크.카드번호 = 보유카드.카드번호 AND
            체크.ID = 보유카드.ID AND
            체크.카드식별코드 = 보유카드.카드식별코드 AND
            체크.카드사번호 = 보유카드.카드사번호
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last 체크 because 보유카드 exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_체크 ON 체크 FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on 체크 */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @ins카드번호 char(16), 
           @insID varchar(8), 
           @ins카드식별코드 char(6), 
           @ins카드사번호 tinyint,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* 보유카드  체크 on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0001c377", PARENT_OWNER="", PARENT_TABLE="보유카드"
    CHILD_OWNER="", CHILD_TABLE="체크"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="체크카드", FK_COLUMNS="카드번호""ID""카드식별코드""카드사번호" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(카드번호) OR
    UPDATE(ID) OR
    UPDATE(카드식별코드) OR
    UPDATE(카드사번호)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,보유카드
        WHERE
          /* %JoinFKPK(inserted,보유카드) */
          inserted.카드번호 = 보유카드.카드번호 and
          inserted.ID = 보유카드.ID and
          inserted.카드식별코드 = 보유카드.카드식별코드 and
          inserted.카드사번호 = 보유카드.카드사번호
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update 체크 because 보유카드 does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_최소B원결제시 ON 최소B원결제시 FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on 최소B원결제시 */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* 혜택  최소B원결제시 on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="000146ef", PARENT_OWNER="", PARENT_TABLE="혜택"
    CHILD_OWNER="", CHILD_TABLE="최소B원결제시"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="최소B원결제시혜택", FK_COLUMNS="혜택번호" */
    IF EXISTS (SELECT * FROM deleted,혜택
      WHERE
        /* %JoinFKPK(deleted,혜택," = "," AND") */
        deleted.혜택번호 = 혜택.혜택번호 AND
        NOT EXISTS (
          SELECT * FROM 최소B원결제시
          WHERE
            /* %JoinFKPK(최소B원결제시,혜택," = "," AND") */
            최소B원결제시.혜택번호 = 혜택.혜택번호
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last 최소B원결제시 because 혜택 exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_최소B원결제시 ON 최소B원결제시 FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on 최소B원결제시 */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @ins혜택번호 smallint,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* 혜택  최소B원결제시 on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00016212", PARENT_OWNER="", PARENT_TABLE="혜택"
    CHILD_OWNER="", CHILD_TABLE="최소B원결제시"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="최소B원결제시혜택", FK_COLUMNS="혜택번호" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(혜택번호)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,혜택
        WHERE
          /* %JoinFKPK(inserted,혜택) */
          inserted.혜택번호 = 혜택.혜택번호
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update 최소B원결제시 because 혜택 does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_충전정보 ON 충전정보 FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on 충전정보 */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* 선불  충전정보 on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="0001b2f6", PARENT_OWNER="", PARENT_TABLE="선불"
    CHILD_OWNER="", CHILD_TABLE="충전정보"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="충전", FK_COLUMNS="카드번호""ID""카드식별코드""카드사번호" */
    IF EXISTS (SELECT * FROM deleted,선불
      WHERE
        /* %JoinFKPK(deleted,선불," = "," AND") */
        deleted.카드번호 = 선불.카드번호 AND
        deleted.ID = 선불.ID AND
        deleted.카드식별코드 = 선불.카드식별코드 AND
        deleted.카드사번호 = 선불.카드사번호 AND
        NOT EXISTS (
          SELECT * FROM 충전정보
          WHERE
            /* %JoinFKPK(충전정보,선불," = "," AND") */
            충전정보.카드번호 = 선불.카드번호 AND
            충전정보.ID = 선불.ID AND
            충전정보.카드식별코드 = 선불.카드식별코드 AND
            충전정보.카드사번호 = 선불.카드사번호
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last 충전정보 because 선불 exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_충전정보 ON 충전정보 FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on 충전정보 */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @ins충전은행명 varchar(20), 
           @ins충전계좌번호 varchar(14), 
           @ins카드번호 char(16), 
           @insID varchar(8), 
           @ins카드식별코드 char(6), 
           @ins카드사번호 tinyint,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* 선불  충전정보 on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0001ba2d", PARENT_OWNER="", PARENT_TABLE="선불"
    CHILD_OWNER="", CHILD_TABLE="충전정보"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="충전", FK_COLUMNS="카드번호""ID""카드식별코드""카드사번호" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(카드번호) OR
    UPDATE(ID) OR
    UPDATE(카드식별코드) OR
    UPDATE(카드사번호)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,선불
        WHERE
          /* %JoinFKPK(inserted,선불) */
          inserted.카드번호 = 선불.카드번호 and
          inserted.ID = 선불.ID and
          inserted.카드식별코드 = 선불.카드식별코드 and
          inserted.카드사번호 = 선불.카드사번호
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update 충전정보 because 선불 does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_카드사 ON 카드사 FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on 카드사 */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* 카드사  카드종류 on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0001093f", PARENT_OWNER="", PARENT_TABLE="카드사"
    CHILD_OWNER="", CHILD_TABLE="카드종류"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="출시", FK_COLUMNS="카드사번호" */
    IF EXISTS (
      SELECT * FROM deleted,카드종류
      WHERE
        /*  %JoinFKPK(카드종류,deleted," = "," AND") */
        카드종류.카드사번호 = deleted.카드사번호
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete 카드사 because 카드종류 exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_카드사 ON 카드사 FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on 카드사 */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @ins카드사번호 tinyint,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* 카드사  카드종류 on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="000122c8", PARENT_OWNER="", PARENT_TABLE="카드사"
    CHILD_OWNER="", CHILD_TABLE="카드종류"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="출시", FK_COLUMNS="카드사번호" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(카드사번호)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,카드종류
      WHERE
        /*  %JoinFKPK(카드종류,deleted," = "," AND") */
        카드종류.카드사번호 = deleted.카드사번호
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update 카드사 because 카드종류 exists.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_카드종류 ON 카드종류 FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on 카드종류 */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* 카드종류  제공 on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00035115", PARENT_OWNER="", PARENT_TABLE="카드종류"
    CHILD_OWNER="", CHILD_TABLE="제공"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="카드혜택", FK_COLUMNS="카드식별코드""카드사번호" */
    IF EXISTS (
      SELECT * FROM deleted,제공
      WHERE
        /*  %JoinFKPK(제공,deleted," = "," AND") */
        제공.카드식별코드 = deleted.카드식별코드 AND
        제공.카드사번호 = deleted.카드사번호
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete 카드종류 because 제공 exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* 카드종류  보유카드 on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="카드종류"
    CHILD_OWNER="", CHILD_TABLE="보유카드"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="발급", FK_COLUMNS="카드식별코드""카드사번호" */
    IF EXISTS (
      SELECT * FROM deleted,보유카드
      WHERE
        /*  %JoinFKPK(보유카드,deleted," = "," AND") */
        보유카드.카드식별코드 = deleted.카드식별코드 AND
        보유카드.카드사번호 = deleted.카드사번호
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete 카드종류 because 보유카드 exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* 카드사  카드종류 on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="카드사"
    CHILD_OWNER="", CHILD_TABLE="카드종류"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="출시", FK_COLUMNS="카드사번호" */
    IF EXISTS (SELECT * FROM deleted,카드사
      WHERE
        /* %JoinFKPK(deleted,카드사," = "," AND") */
        deleted.카드사번호 = 카드사.카드사번호 AND
        NOT EXISTS (
          SELECT * FROM 카드종류
          WHERE
            /* %JoinFKPK(카드종류,카드사," = "," AND") */
            카드종류.카드사번호 = 카드사.카드사번호
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last 카드종류 because 카드사 exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_카드종류 ON 카드종류 FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on 카드종류 */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @ins카드식별코드 char(6), 
           @ins카드사번호 tinyint,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* 카드종류  제공 on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="0003bbde", PARENT_OWNER="", PARENT_TABLE="카드종류"
    CHILD_OWNER="", CHILD_TABLE="제공"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="카드혜택", FK_COLUMNS="카드식별코드""카드사번호" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(카드식별코드) OR
    UPDATE(카드사번호)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,제공
      WHERE
        /*  %JoinFKPK(제공,deleted," = "," AND") */
        제공.카드식별코드 = deleted.카드식별코드 AND
        제공.카드사번호 = deleted.카드사번호
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update 카드종류 because 제공 exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* 카드종류  보유카드 on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="카드종류"
    CHILD_OWNER="", CHILD_TABLE="보유카드"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="발급", FK_COLUMNS="카드식별코드""카드사번호" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(카드식별코드) OR
    UPDATE(카드사번호)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,보유카드
      WHERE
        /*  %JoinFKPK(보유카드,deleted," = "," AND") */
        보유카드.카드식별코드 = deleted.카드식별코드 AND
        보유카드.카드사번호 = deleted.카드사번호
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update 카드종류 because 보유카드 exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* 카드사  카드종류 on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="카드사"
    CHILD_OWNER="", CHILD_TABLE="카드종류"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="출시", FK_COLUMNS="카드사번호" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(카드사번호)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,카드사
        WHERE
          /* %JoinFKPK(inserted,카드사) */
          inserted.카드사번호 = 카드사.카드사번호
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update 카드종류 because 카드사 does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_퍼센트 ON 퍼센트 FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on 퍼센트 */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* 혜택  퍼센트 on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00013321", PARENT_OWNER="", PARENT_TABLE="혜택"
    CHILD_OWNER="", CHILD_TABLE="퍼센트"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="퍼센트혜택", FK_COLUMNS="혜택번호" */
    IF EXISTS (SELECT * FROM deleted,혜택
      WHERE
        /* %JoinFKPK(deleted,혜택," = "," AND") */
        deleted.혜택번호 = 혜택.혜택번호 AND
        NOT EXISTS (
          SELECT * FROM 퍼센트
          WHERE
            /* %JoinFKPK(퍼센트,혜택," = "," AND") */
            퍼센트.혜택번호 = 혜택.혜택번호
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last 퍼센트 because 혜택 exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_퍼센트 ON 퍼센트 FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on 퍼센트 */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @ins혜택번호 smallint,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* 혜택  퍼센트 on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00016442", PARENT_OWNER="", PARENT_TABLE="혜택"
    CHILD_OWNER="", CHILD_TABLE="퍼센트"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="퍼센트혜택", FK_COLUMNS="혜택번호" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(혜택번호)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,혜택
        WHERE
          /* %JoinFKPK(inserted,혜택) */
          inserted.혜택번호 = 혜택.혜택번호
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update 퍼센트 because 혜택 does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_혜택 ON 혜택 FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on 혜택 */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* 혜택  제공 on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="000489c4", PARENT_OWNER="", PARENT_TABLE="혜택"
    CHILD_OWNER="", CHILD_TABLE="제공"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="혜택제공", FK_COLUMNS="혜택번호" */
    IF EXISTS (
      SELECT * FROM deleted,제공
      WHERE
        /*  %JoinFKPK(제공,deleted," = "," AND") */
        제공.혜택번호 = deleted.혜택번호
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete 혜택 because 제공 exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* 혜택  리터당 on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="혜택"
    CHILD_OWNER="", CHILD_TABLE="리터당"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="리터당혜택", FK_COLUMNS="혜택번호" */
    IF EXISTS (
      SELECT * FROM deleted,리터당
      WHERE
        /*  %JoinFKPK(리터당,deleted," = "," AND") */
        리터당.혜택번호 = deleted.혜택번호
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete 혜택 because 리터당 exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* 혜택  최소B원결제시 on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="혜택"
    CHILD_OWNER="", CHILD_TABLE="최소B원결제시"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="최소B원결제시혜택", FK_COLUMNS="혜택번호" */
    IF EXISTS (
      SELECT * FROM deleted,최소B원결제시
      WHERE
        /*  %JoinFKPK(최소B원결제시,deleted," = "," AND") */
        최소B원결제시.혜택번호 = deleted.혜택번호
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete 혜택 because 최소B원결제시 exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* 혜택  A원당 on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="혜택"
    CHILD_OWNER="", CHILD_TABLE="A원당"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="A원당혜택", FK_COLUMNS="혜택번호" */
    IF EXISTS (
      SELECT * FROM deleted,A원당
      WHERE
        /*  %JoinFKPK(A원당,deleted," = "," AND") */
        A원당.혜택번호 = deleted.혜택번호
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete 혜택 because A원당 exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* 혜택  퍼센트 on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="혜택"
    CHILD_OWNER="", CHILD_TABLE="퍼센트"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="퍼센트혜택", FK_COLUMNS="혜택번호" */
    IF EXISTS (
      SELECT * FROM deleted,퍼센트
      WHERE
        /*  %JoinFKPK(퍼센트,deleted," = "," AND") */
        퍼센트.혜택번호 = deleted.혜택번호
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete 혜택 because 퍼센트 exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_혜택 ON 혜택 FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on 혜택 */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @ins혜택번호 smallint,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* 혜택  제공 on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00050c27", PARENT_OWNER="", PARENT_TABLE="혜택"
    CHILD_OWNER="", CHILD_TABLE="제공"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="혜택제공", FK_COLUMNS="혜택번호" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(혜택번호)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,제공
      WHERE
        /*  %JoinFKPK(제공,deleted," = "," AND") */
        제공.혜택번호 = deleted.혜택번호
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update 혜택 because 제공 exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* 혜택  리터당 on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="혜택"
    CHILD_OWNER="", CHILD_TABLE="리터당"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="리터당혜택", FK_COLUMNS="혜택번호" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(혜택번호)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,리터당
      WHERE
        /*  %JoinFKPK(리터당,deleted," = "," AND") */
        리터당.혜택번호 = deleted.혜택번호
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update 혜택 because 리터당 exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* 혜택  최소B원결제시 on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="혜택"
    CHILD_OWNER="", CHILD_TABLE="최소B원결제시"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="최소B원결제시혜택", FK_COLUMNS="혜택번호" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(혜택번호)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,최소B원결제시
      WHERE
        /*  %JoinFKPK(최소B원결제시,deleted," = "," AND") */
        최소B원결제시.혜택번호 = deleted.혜택번호
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update 혜택 because 최소B원결제시 exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* 혜택  A원당 on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="혜택"
    CHILD_OWNER="", CHILD_TABLE="A원당"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="A원당혜택", FK_COLUMNS="혜택번호" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(혜택번호)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,A원당
      WHERE
        /*  %JoinFKPK(A원당,deleted," = "," AND") */
        A원당.혜택번호 = deleted.혜택번호
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update 혜택 because A원당 exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* 혜택  퍼센트 on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="혜택"
    CHILD_OWNER="", CHILD_TABLE="퍼센트"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="퍼센트혜택", FK_COLUMNS="혜택번호" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(혜택번호)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,퍼센트
      WHERE
        /*  %JoinFKPK(퍼센트,deleted," = "," AND") */
        퍼센트.혜택번호 = deleted.혜택번호
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update 혜택 because 퍼센트 exists.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER tD_회원 ON 회원 FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on 회원 */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* 회원 추천인 회원 on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0002edbb", PARENT_OWNER="", PARENT_TABLE="회원"
    CHILD_OWNER="", CHILD_TABLE="회원"
    P2C_VERB_PHRASE="추천인", C2P_VERB_PHRASE="추천받은회원", 
    FK_CONSTRAINT="추천", FK_COLUMNS="추천인ID" */
    IF EXISTS (
      SELECT * FROM deleted,회원
      WHERE
        /*  %JoinFKPK(회원,deleted," = "," AND") */
        회원.추천인ID = deleted.ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete 회원 because 회원 exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* 회원  보유카드 on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="회원"
    CHILD_OWNER="", CHILD_TABLE="보유카드"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="등록", FK_COLUMNS="ID" */
    IF EXISTS (
      SELECT * FROM deleted,보유카드
      WHERE
        /*  %JoinFKPK(보유카드,deleted," = "," AND") */
        보유카드.ID = deleted.ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete 회원 because 보유카드 exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* 회원 추천인 회원 on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="회원"
    CHILD_OWNER="", CHILD_TABLE="회원"
    P2C_VERB_PHRASE="추천인", C2P_VERB_PHRASE="추천받은회원", 
    FK_CONSTRAINT="추천", FK_COLUMNS="추천인ID" */
    IF EXISTS (SELECT * FROM deleted,회원
      WHERE
        /* %JoinFKPK(deleted,회원," = "," AND") */
        deleted.추천인ID = 회원.ID AND
        NOT EXISTS (
          SELECT * FROM 회원
          WHERE
            /* %JoinFKPK(회원,회원," = "," AND") */
            회원.추천인ID = 회원.ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last 회원 because 회원 exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


CREATE TRIGGER tU_회원 ON 회원 FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on 회원 */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insID varchar(8),
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* 회원 추천인 회원 on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00035810", PARENT_OWNER="", PARENT_TABLE="회원"
    CHILD_OWNER="", CHILD_TABLE="회원"
    P2C_VERB_PHRASE="추천인", C2P_VERB_PHRASE="추천받은회원", 
    FK_CONSTRAINT="추천", FK_COLUMNS="추천인ID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,회원
      WHERE
        /*  %JoinFKPK(회원,deleted," = "," AND") */
        회원.추천인ID = deleted.ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update 회원 because 회원 exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* 회원  보유카드 on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="회원"
    CHILD_OWNER="", CHILD_TABLE="보유카드"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="등록", FK_COLUMNS="ID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,보유카드
      WHERE
        /*  %JoinFKPK(보유카드,deleted," = "," AND") */
        보유카드.ID = deleted.ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update 회원 because 보유카드 exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* 회원 추천인 회원 on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="회원"
    CHILD_OWNER="", CHILD_TABLE="회원"
    P2C_VERB_PHRASE="추천인", C2P_VERB_PHRASE="추천받은회원", 
    FK_CONSTRAINT="추천", FK_COLUMNS="추천인ID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(추천인ID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,회원
        WHERE
          /* %JoinFKPK(inserted,회원) */
          inserted.추천인ID = 회원.ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.추천인ID IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update 회원 because 회원 does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go


