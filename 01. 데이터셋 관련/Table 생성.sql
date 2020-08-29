
CREATE TABLE [A����]
( 
	[A�ݾ�]              integer  NOT NULL ,
	[A���þ�]            integer  NOT NULL ,
	[���ù�ȣ]           smallint  NOT NULL 
)
go

ALTER TABLE [A����]
	ADD CONSTRAINT [XPKA����] PRIMARY KEY  CLUSTERED ([���ù�ȣ] ASC)
go

CREATE TABLE [������]
( 
	[����ڹ�ȣ]         char(10)  NOT NULL ,
	[��������]           varchar(40)  NOT NULL ,
	[����]               varchar(20)  NOT NULL ,
	[�ñ�������]         varchar(40)  NOT NULL ,
	[���ּ�]           varchar(40)  NOT NULL ,
	[��������ȣ]         varchar(12)  NOT NULL 
)
go

ALTER TABLE [������]
	ADD CONSTRAINT [XPK������] PRIMARY KEY  CLUSTERED ([����ڹ�ȣ] ASC,[��������ȣ] ASC)
go

CREATE TABLE [���ʹ�]
( 
	[�������þ�]         integer  NOT NULL ,
	[���ù�ȣ]           smallint  NOT NULL 
)
go

ALTER TABLE [���ʹ�]
	ADD CONSTRAINT [XPK���ʹ�] PRIMARY KEY  CLUSTERED ([���ù�ȣ] ASC)
go

CREATE TABLE [����ī��]
( 
	[ī���ȣ]           char(16)  NOT NULL ,
	[CVC]                char(3)  NOT NULL ,
	[ī���й�ȣ]       char(4)  NOT NULL ,
	[��ȿ����]           char(4)  NOT NULL ,
	[ID]                 varchar(8)  NOT NULL ,
	[ī��ĺ��ڵ�]       char(6)  NOT NULL ,
	[ī����ȣ]         tinyint  NOT NULL 
)
go

ALTER TABLE [����ī��]
	ADD CONSTRAINT [XPK����ī��] PRIMARY KEY  CLUSTERED ([ī���ȣ] ASC,[ID] ASC,[ī��ĺ��ڵ�] ASC,[ī����ȣ] ASC)
go

CREATE TABLE [����]
( 
	[�ܾ�]               float(24)  NOT NULL ,
	[ī���ȣ]           char(16)  NOT NULL ,
	[ID]                 varchar(8)  NOT NULL ,
	[ī��ĺ��ڵ�]       char(6)  NOT NULL ,
	[ī����ȣ]         tinyint  NOT NULL 
)
go

ALTER TABLE [����]
	ADD CONSTRAINT [XPK����] PRIMARY KEY  CLUSTERED ([ī���ȣ] ASC,[ID] ASC,[ī��ĺ��ڵ�] ASC,[ī����ȣ] ASC)
go

CREATE TABLE [�ſ�]
( 
	[û����]             tinyint  NOT NULL ,
	[���ι��]           char(8)  NOT NULL ,
	[�����ѵ�]           float(24)  NOT NULL ,
	[ī���ȣ]           char(16)  NOT NULL ,
	[ID]                 varchar(8)  NOT NULL ,
	[ī��ĺ��ڵ�]       char(6)  NOT NULL ,
	[ī����ȣ]         tinyint  NOT NULL 
)
go

ALTER TABLE [�ſ�]
	ADD CONSTRAINT [XPK�ſ�] PRIMARY KEY  CLUSTERED ([ī���ȣ] ASC,[ID] ASC,[ī��ĺ��ڵ�] ASC,[ī����ȣ] ASC)
go

CREATE TABLE [�̿볻��]
( 
	[���ι�ȣ]           varchar(10)  NOT NULL ,
	[�ݾ�]               float(24)  NOT NULL ,
	[�Ͻ�]               datetime  NOT NULL ,
	[ī���ȣ]           char(16)  NOT NULL ,
	[ID]                 varchar(8)  NOT NULL ,
	[ī��ĺ��ڵ�]       char(6)  NOT NULL ,
	[ī����ȣ]         tinyint  NOT NULL ,
	[����ڹ�ȣ]         char(10)  NOT NULL ,
	[��������ȣ]         varchar(12)  NOT NULL 
)
go

ALTER TABLE [�̿볻��]
	ADD CONSTRAINT [XPK�̿볻��] PRIMARY KEY  CLUSTERED ([���ι�ȣ] ASC,[ī���ȣ] ASC,[ID] ASC,[ī��ĺ��ڵ�] ASC,[ī����ȣ] ASC,[����ڹ�ȣ] ASC,[��������ȣ] ASC)
go

CREATE TABLE [����]
( 
	[ī��ĺ��ڵ�]       char(6)  NOT NULL ,
	[ī����ȣ]         tinyint  NOT NULL ,
	[���ù�ȣ]           smallint  NOT NULL 
)
go

ALTER TABLE [����]
	ADD CONSTRAINT [XPK����] PRIMARY KEY  CLUSTERED ([ī��ĺ��ڵ�] ASC,[ī����ȣ] ASC,[���ù�ȣ] ASC)
go

CREATE TABLE [üũ]
( 
	[�����]             varchar(20)  NOT NULL ,
	[���¹�ȣ]           varchar(14)  NOT NULL ,
	[�����ܰ�]           float(24)  NOT NULL ,
	[ī���ȣ]           char(16)  NOT NULL ,
	[ID]                 varchar(8)  NOT NULL ,
	[ī��ĺ��ڵ�]       char(6)  NOT NULL ,
	[ī����ȣ]         tinyint  NOT NULL 
)
go

ALTER TABLE [üũ]
	ADD CONSTRAINT [XPKüũ] PRIMARY KEY  CLUSTERED ([ī���ȣ] ASC,[ID] ASC,[ī��ĺ��ڵ�] ASC,[ī����ȣ] ASC)
go

CREATE TABLE [�ּ�B��������]
( 
	[B�ݾ�]              integer  NOT NULL ,
	[B���þ�]            integer  NOT NULL ,
	[���ù�ȣ]           smallint  NOT NULL 
)
go

ALTER TABLE [�ּ�B��������]
	ADD CONSTRAINT [XPK�ּ�B��������] PRIMARY KEY  CLUSTERED ([���ù�ȣ] ASC)
go

CREATE TABLE [��������]
( 
	[���������]         varchar(20)  NOT NULL ,
	[�������¹�ȣ]       varchar(14)  NOT NULL ,
	[ī���ȣ]           char(16)  NOT NULL ,
	[ID]                 varchar(8)  NOT NULL ,
	[ī��ĺ��ڵ�]       char(6)  NOT NULL ,
	[ī����ȣ]         tinyint  NOT NULL 
)
go

ALTER TABLE [��������]
	ADD CONSTRAINT [XPK��������] PRIMARY KEY  CLUSTERED ([���������] ASC,[�������¹�ȣ] ASC,[ī���ȣ] ASC,[ID] ASC,[ī��ĺ��ڵ�] ASC,[ī����ȣ] ASC)
go

CREATE TABLE [ī���]
( 
	[ī����ȣ]         tinyint  NOT NULL ,
	[ī����]           varchar(20)  NOT NULL 
)
go

ALTER TABLE [ī���]
	ADD CONSTRAINT [XPKī���] PRIMARY KEY  CLUSTERED ([ī����ȣ] ASC)
go

CREATE TABLE [ī������]
( 
	[ī��ĺ��ڵ�]       char(6)  NOT NULL ,
	[�����䱸����]       integer  NOT NULL ,
	[ī���]             varchar(20)  NOT NULL ,
	[��ȸ��]             integer  NOT NULL ,
	[����ī����������]   char(4)  NOT NULL ,
	[ī����ȣ]         tinyint  NOT NULL 
)
go

ALTER TABLE [ī������]
	ADD CONSTRAINT [XPKī������] PRIMARY KEY  CLUSTERED ([ī��ĺ��ڵ�] ASC,[ī����ȣ] ASC)
go

CREATE TABLE [�ۼ�Ʈ]
( 
	[���÷�]             float  NOT NULL ,
	[���ù�ȣ]           smallint  NOT NULL 
)
go

ALTER TABLE [�ۼ�Ʈ]
	ADD CONSTRAINT [XPK�ۼ�Ʈ] PRIMARY KEY  CLUSTERED ([���ù�ȣ] ASC)
go

CREATE TABLE [����]
( 
	[���ù�ȣ]           smallint  NOT NULL ,
	[���ó���]           varchar(60)  NOT NULL ,
	[�����ѵ�]           integer  NOT NULL ,
	[���ù��]           varchar(10)  NOT NULL 
)
go

ALTER TABLE [����]
	ADD CONSTRAINT [XPK����] PRIMARY KEY  CLUSTERED ([���ù�ȣ] ASC)
go

CREATE TABLE [ȸ��]
( 
	[ID]                 varchar(8)  NOT NULL ,
	[��õ��ID]           varchar(8)  NULL ,
	[PW]                 varchar(8)  NOT NULL ,
	[�̸�]               varchar(10)  NOT NULL ,
	[�̸���]             varchar(20)  NOT NULL 
)
go

ALTER TABLE [ȸ��]
	ADD CONSTRAINT [XPKȸ��] PRIMARY KEY  CLUSTERED ([ID] ASC)
go


ALTER TABLE [A����]
	ADD CONSTRAINT [A��������] FOREIGN KEY ([���ù�ȣ]) REFERENCES [����]([���ù�ȣ])
		ON DELETE CASCADE
		ON UPDATE NO ACTION
go


ALTER TABLE [���ʹ�]
	ADD CONSTRAINT [���ʹ�����] FOREIGN KEY ([���ù�ȣ]) REFERENCES [����]([���ù�ȣ])
		ON DELETE CASCADE
		ON UPDATE NO ACTION
go


ALTER TABLE [����ī��]
	ADD CONSTRAINT [���] FOREIGN KEY ([ID]) REFERENCES [ȸ��]([ID])
		ON DELETE CASCADE
		ON UPDATE NO ACTION
go

ALTER TABLE [����ī��]
	ADD CONSTRAINT [�߱�] FOREIGN KEY ([ī��ĺ��ڵ�],[ī����ȣ]) REFERENCES [ī������]([ī��ĺ��ڵ�],[ī����ȣ])
		ON DELETE CASCADE
		ON UPDATE NO ACTION
go


ALTER TABLE [����]
	ADD CONSTRAINT [����ī��] FOREIGN KEY ([ī���ȣ],[ID],[ī��ĺ��ڵ�],[ī����ȣ]) REFERENCES [����ī��]([ī���ȣ],[ID],[ī��ĺ��ڵ�],[ī����ȣ])
		ON DELETE CASCADE
		ON UPDATE NO ACTION
go


ALTER TABLE [�ſ�]
	ADD CONSTRAINT [�ſ�ī��] FOREIGN KEY ([ī���ȣ],[ID],[ī��ĺ��ڵ�],[ī����ȣ]) REFERENCES [����ī��]([ī���ȣ],[ID],[ī��ĺ��ڵ�],[ī����ȣ])
		ON DELETE CASCADE
		ON UPDATE NO ACTION
go


ALTER TABLE [�̿볻��]
	ADD CONSTRAINT [���] FOREIGN KEY ([ī���ȣ],[ID],[ī��ĺ��ڵ�],[ī����ȣ]) REFERENCES [����ī��]([ī���ȣ],[ID],[ī��ĺ��ڵ�],[ī����ȣ])
		ON DELETE CASCADE
		ON UPDATE NO ACTION
go

ALTER TABLE [�̿볻��]
	ADD CONSTRAINT [����] FOREIGN KEY ([����ڹ�ȣ],[��������ȣ]) REFERENCES [������]([����ڹ�ȣ],[��������ȣ])
		ON DELETE CASCADE
		ON UPDATE NO ACTION
go


ALTER TABLE [����]
	ADD CONSTRAINT [ī������] FOREIGN KEY ([ī��ĺ��ڵ�],[ī����ȣ]) REFERENCES [ī������]([ī��ĺ��ڵ�],[ī����ȣ])
		ON DELETE CASCADE
		ON UPDATE NO ACTION
go

ALTER TABLE [����]
	ADD CONSTRAINT [��������] FOREIGN KEY ([���ù�ȣ]) REFERENCES [����]([���ù�ȣ])
		ON DELETE CASCADE
		ON UPDATE NO ACTION
go


ALTER TABLE [üũ]
	ADD CONSTRAINT [üũī��] FOREIGN KEY ([ī���ȣ],[ID],[ī��ĺ��ڵ�],[ī����ȣ]) REFERENCES [����ī��]([ī���ȣ],[ID],[ī��ĺ��ڵ�],[ī����ȣ])
		ON DELETE CASCADE
		ON UPDATE NO ACTION
go


ALTER TABLE [�ּ�B��������]
	ADD CONSTRAINT [�ּ�B������������] FOREIGN KEY ([���ù�ȣ]) REFERENCES [����]([���ù�ȣ])
		ON DELETE CASCADE
		ON UPDATE NO ACTION
go


ALTER TABLE [��������]
	ADD CONSTRAINT [����] FOREIGN KEY ([ī���ȣ],[ID],[ī��ĺ��ڵ�],[ī����ȣ]) REFERENCES [����]([ī���ȣ],[ID],[ī��ĺ��ڵ�],[ī����ȣ])
		ON DELETE CASCADE
		ON UPDATE NO ACTION
go


ALTER TABLE [ī������]
	ADD CONSTRAINT [���] FOREIGN KEY ([ī����ȣ]) REFERENCES [ī���]([ī����ȣ])
		ON DELETE CASCADE
		ON UPDATE NO ACTION
go


ALTER TABLE [�ۼ�Ʈ]
	ADD CONSTRAINT [�ۼ�Ʈ����] FOREIGN KEY ([���ù�ȣ]) REFERENCES [����]([���ù�ȣ])
		ON DELETE CASCADE
		ON UPDATE NO ACTION
go


ALTER TABLE [ȸ��]
	ADD CONSTRAINT [��õ] FOREIGN KEY ([��õ��ID]) REFERENCES [ȸ��]([ID])
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


CREATE TRIGGER tD_A���� ON A���� FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on A���� */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* ����  A���� on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00012a85", PARENT_OWNER="", PARENT_TABLE="����"
    CHILD_OWNER="", CHILD_TABLE="A����"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="A��������", FK_COLUMNS="���ù�ȣ" */
    IF EXISTS (SELECT * FROM deleted,����
      WHERE
        /* %JoinFKPK(deleted,����," = "," AND") */
        deleted.���ù�ȣ = ����.���ù�ȣ AND
        NOT EXISTS (
          SELECT * FROM A����
          WHERE
            /* %JoinFKPK(A����,����," = "," AND") */
            A����.���ù�ȣ = ����.���ù�ȣ
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last A���� because ���� exists.'
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


CREATE TRIGGER tU_A���� ON A���� FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on A���� */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @ins���ù�ȣ smallint,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* ����  A���� on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0001612a", PARENT_OWNER="", PARENT_TABLE="����"
    CHILD_OWNER="", CHILD_TABLE="A����"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="A��������", FK_COLUMNS="���ù�ȣ" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(���ù�ȣ)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,����
        WHERE
          /* %JoinFKPK(inserted,����) */
          inserted.���ù�ȣ = ����.���ù�ȣ
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update A���� because ���� does not exist.'
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




CREATE TRIGGER tD_������ ON ������ FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on ������ */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* ������  �̿볻�� on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="000121a3", PARENT_OWNER="", PARENT_TABLE="������"
    CHILD_OWNER="", CHILD_TABLE="�̿볻��"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="����", FK_COLUMNS="����ڹ�ȣ""��������ȣ" */
    IF EXISTS (
      SELECT * FROM deleted,�̿볻��
      WHERE
        /*  %JoinFKPK(�̿볻��,deleted," = "," AND") */
        �̿볻��.����ڹ�ȣ = deleted.����ڹ�ȣ AND
        �̿볻��.��������ȣ = deleted.��������ȣ
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete ������ because �̿볻�� exists.'
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


CREATE TRIGGER tU_������ ON ������ FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on ������ */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @ins����ڹ�ȣ char(10), 
           @ins��������ȣ varchar(12),
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* ������  �̿볻�� on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00014a66", PARENT_OWNER="", PARENT_TABLE="������"
    CHILD_OWNER="", CHILD_TABLE="�̿볻��"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="����", FK_COLUMNS="����ڹ�ȣ""��������ȣ" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(����ڹ�ȣ) OR
    UPDATE(��������ȣ)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,�̿볻��
      WHERE
        /*  %JoinFKPK(�̿볻��,deleted," = "," AND") */
        �̿볻��.����ڹ�ȣ = deleted.����ڹ�ȣ AND
        �̿볻��.��������ȣ = deleted.��������ȣ
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update ������ because �̿볻�� exists.'
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




CREATE TRIGGER tD_���ʹ� ON ���ʹ� FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on ���ʹ� */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* ����  ���ʹ� on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00012d27", PARENT_OWNER="", PARENT_TABLE="����"
    CHILD_OWNER="", CHILD_TABLE="���ʹ�"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="���ʹ�����", FK_COLUMNS="���ù�ȣ" */
    IF EXISTS (SELECT * FROM deleted,����
      WHERE
        /* %JoinFKPK(deleted,����," = "," AND") */
        deleted.���ù�ȣ = ����.���ù�ȣ AND
        NOT EXISTS (
          SELECT * FROM ���ʹ�
          WHERE
            /* %JoinFKPK(���ʹ�,����," = "," AND") */
            ���ʹ�.���ù�ȣ = ����.���ù�ȣ
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last ���ʹ� because ���� exists.'
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


CREATE TRIGGER tU_���ʹ� ON ���ʹ� FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on ���ʹ� */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @ins���ù�ȣ smallint,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* ����  ���ʹ� on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00016333", PARENT_OWNER="", PARENT_TABLE="����"
    CHILD_OWNER="", CHILD_TABLE="���ʹ�"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="���ʹ�����", FK_COLUMNS="���ù�ȣ" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(���ù�ȣ)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,����
        WHERE
          /* %JoinFKPK(inserted,����) */
          inserted.���ù�ȣ = ����.���ù�ȣ
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update ���ʹ� because ���� does not exist.'
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




CREATE TRIGGER tD_����ī�� ON ����ī�� FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on ����ī�� */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* ����ī��  ���� on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00070262", PARENT_OWNER="", PARENT_TABLE="����ī��"
    CHILD_OWNER="", CHILD_TABLE="����"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="����ī��", FK_COLUMNS="ī���ȣ""ID""ī��ĺ��ڵ�""ī����ȣ" */
    IF EXISTS (
      SELECT * FROM deleted,����
      WHERE
        /*  %JoinFKPK(����,deleted," = "," AND") */
        ����.ī���ȣ = deleted.ī���ȣ AND
        ����.ID = deleted.ID AND
        ����.ī��ĺ��ڵ� = deleted.ī��ĺ��ڵ� AND
        ����.ī����ȣ = deleted.ī����ȣ
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete ����ī�� because ���� exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* ����ī��  üũ on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="����ī��"
    CHILD_OWNER="", CHILD_TABLE="üũ"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="üũī��", FK_COLUMNS="ī���ȣ""ID""ī��ĺ��ڵ�""ī����ȣ" */
    IF EXISTS (
      SELECT * FROM deleted,üũ
      WHERE
        /*  %JoinFKPK(üũ,deleted," = "," AND") */
        üũ.ī���ȣ = deleted.ī���ȣ AND
        üũ.ID = deleted.ID AND
        üũ.ī��ĺ��ڵ� = deleted.ī��ĺ��ڵ� AND
        üũ.ī����ȣ = deleted.ī����ȣ
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete ����ī�� because üũ exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* ����ī��  �ſ� on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="����ī��"
    CHILD_OWNER="", CHILD_TABLE="�ſ�"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="�ſ�ī��", FK_COLUMNS="ī���ȣ""ID""ī��ĺ��ڵ�""ī����ȣ" */
    IF EXISTS (
      SELECT * FROM deleted,�ſ�
      WHERE
        /*  %JoinFKPK(�ſ�,deleted," = "," AND") */
        �ſ�.ī���ȣ = deleted.ī���ȣ AND
        �ſ�.ID = deleted.ID AND
        �ſ�.ī��ĺ��ڵ� = deleted.ī��ĺ��ڵ� AND
        �ſ�.ī����ȣ = deleted.ī����ȣ
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete ����ī�� because �ſ� exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* ����ī��  �̿볻�� on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="����ī��"
    CHILD_OWNER="", CHILD_TABLE="�̿볻��"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="���", FK_COLUMNS="ī���ȣ""ID""ī��ĺ��ڵ�""ī����ȣ" */
    IF EXISTS (
      SELECT * FROM deleted,�̿볻��
      WHERE
        /*  %JoinFKPK(�̿볻��,deleted," = "," AND") */
        �̿볻��.ī���ȣ = deleted.ī���ȣ AND
        �̿볻��.ID = deleted.ID AND
        �̿볻��.ī��ĺ��ڵ� = deleted.ī��ĺ��ڵ� AND
        �̿볻��.ī����ȣ = deleted.ī����ȣ
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete ����ī�� because �̿볻�� exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* ī������  ����ī�� on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="ī������"
    CHILD_OWNER="", CHILD_TABLE="����ī��"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="�߱�", FK_COLUMNS="ī��ĺ��ڵ�""ī����ȣ" */
    IF EXISTS (SELECT * FROM deleted,ī������
      WHERE
        /* %JoinFKPK(deleted,ī������," = "," AND") */
        deleted.ī��ĺ��ڵ� = ī������.ī��ĺ��ڵ� AND
        deleted.ī����ȣ = ī������.ī����ȣ AND
        NOT EXISTS (
          SELECT * FROM ����ī��
          WHERE
            /* %JoinFKPK(����ī��,ī������," = "," AND") */
            ����ī��.ī��ĺ��ڵ� = ī������.ī��ĺ��ڵ� AND
            ����ī��.ī����ȣ = ī������.ī����ȣ
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last ����ī�� because ī������ exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* ȸ��  ����ī�� on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="ȸ��"
    CHILD_OWNER="", CHILD_TABLE="����ī��"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="���", FK_COLUMNS="ID" */
    IF EXISTS (SELECT * FROM deleted,ȸ��
      WHERE
        /* %JoinFKPK(deleted,ȸ��," = "," AND") */
        deleted.ID = ȸ��.ID AND
        NOT EXISTS (
          SELECT * FROM ����ī��
          WHERE
            /* %JoinFKPK(����ī��,ȸ��," = "," AND") */
            ����ī��.ID = ȸ��.ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last ����ī�� because ȸ�� exists.'
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


CREATE TRIGGER tU_����ī�� ON ����ī�� FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on ����ī�� */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insī���ȣ char(16), 
           @insID varchar(8), 
           @insī��ĺ��ڵ� char(6), 
           @insī����ȣ tinyint,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* ����ī��  ���� on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="000841e9", PARENT_OWNER="", PARENT_TABLE="����ī��"
    CHILD_OWNER="", CHILD_TABLE="����"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="����ī��", FK_COLUMNS="ī���ȣ""ID""ī��ĺ��ڵ�""ī����ȣ" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ī���ȣ) OR
    UPDATE(ID) OR
    UPDATE(ī��ĺ��ڵ�) OR
    UPDATE(ī����ȣ)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,����
      WHERE
        /*  %JoinFKPK(����,deleted," = "," AND") */
        ����.ī���ȣ = deleted.ī���ȣ AND
        ����.ID = deleted.ID AND
        ����.ī��ĺ��ڵ� = deleted.ī��ĺ��ڵ� AND
        ����.ī����ȣ = deleted.ī����ȣ
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update ����ī�� because ���� exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* ����ī��  üũ on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="����ī��"
    CHILD_OWNER="", CHILD_TABLE="üũ"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="üũī��", FK_COLUMNS="ī���ȣ""ID""ī��ĺ��ڵ�""ī����ȣ" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ī���ȣ) OR
    UPDATE(ID) OR
    UPDATE(ī��ĺ��ڵ�) OR
    UPDATE(ī����ȣ)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,üũ
      WHERE
        /*  %JoinFKPK(üũ,deleted," = "," AND") */
        üũ.ī���ȣ = deleted.ī���ȣ AND
        üũ.ID = deleted.ID AND
        üũ.ī��ĺ��ڵ� = deleted.ī��ĺ��ڵ� AND
        üũ.ī����ȣ = deleted.ī����ȣ
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update ����ī�� because üũ exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* ����ī��  �ſ� on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="����ī��"
    CHILD_OWNER="", CHILD_TABLE="�ſ�"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="�ſ�ī��", FK_COLUMNS="ī���ȣ""ID""ī��ĺ��ڵ�""ī����ȣ" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ī���ȣ) OR
    UPDATE(ID) OR
    UPDATE(ī��ĺ��ڵ�) OR
    UPDATE(ī����ȣ)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,�ſ�
      WHERE
        /*  %JoinFKPK(�ſ�,deleted," = "," AND") */
        �ſ�.ī���ȣ = deleted.ī���ȣ AND
        �ſ�.ID = deleted.ID AND
        �ſ�.ī��ĺ��ڵ� = deleted.ī��ĺ��ڵ� AND
        �ſ�.ī����ȣ = deleted.ī����ȣ
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update ����ī�� because �ſ� exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* ����ī��  �̿볻�� on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="����ī��"
    CHILD_OWNER="", CHILD_TABLE="�̿볻��"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="���", FK_COLUMNS="ī���ȣ""ID""ī��ĺ��ڵ�""ī����ȣ" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ī���ȣ) OR
    UPDATE(ID) OR
    UPDATE(ī��ĺ��ڵ�) OR
    UPDATE(ī����ȣ)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,�̿볻��
      WHERE
        /*  %JoinFKPK(�̿볻��,deleted," = "," AND") */
        �̿볻��.ī���ȣ = deleted.ī���ȣ AND
        �̿볻��.ID = deleted.ID AND
        �̿볻��.ī��ĺ��ڵ� = deleted.ī��ĺ��ڵ� AND
        �̿볻��.ī����ȣ = deleted.ī����ȣ
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update ����ī�� because �̿볻�� exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* ī������  ����ī�� on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="ī������"
    CHILD_OWNER="", CHILD_TABLE="����ī��"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="�߱�", FK_COLUMNS="ī��ĺ��ڵ�""ī����ȣ" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ī��ĺ��ڵ�) OR
    UPDATE(ī����ȣ)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,ī������
        WHERE
          /* %JoinFKPK(inserted,ī������) */
          inserted.ī��ĺ��ڵ� = ī������.ī��ĺ��ڵ� and
          inserted.ī����ȣ = ī������.ī����ȣ
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update ����ī�� because ī������ does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* ȸ��  ����ī�� on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="ȸ��"
    CHILD_OWNER="", CHILD_TABLE="����ī��"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="���", FK_COLUMNS="ID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,ȸ��
        WHERE
          /* %JoinFKPK(inserted,ȸ��) */
          inserted.ID = ȸ��.ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update ����ī�� because ȸ�� does not exist.'
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




CREATE TRIGGER tD_���� ON ���� FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on ���� */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* ����  �������� on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0002e7f5", PARENT_OWNER="", PARENT_TABLE="����"
    CHILD_OWNER="", CHILD_TABLE="��������"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="����", FK_COLUMNS="ī���ȣ""ID""ī��ĺ��ڵ�""ī����ȣ" */
    IF EXISTS (
      SELECT * FROM deleted,��������
      WHERE
        /*  %JoinFKPK(��������,deleted," = "," AND") */
        ��������.ī���ȣ = deleted.ī���ȣ AND
        ��������.ID = deleted.ID AND
        ��������.ī��ĺ��ڵ� = deleted.ī��ĺ��ڵ� AND
        ��������.ī����ȣ = deleted.ī����ȣ
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete ���� because �������� exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* ����ī��  ���� on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="����ī��"
    CHILD_OWNER="", CHILD_TABLE="����"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="����ī��", FK_COLUMNS="ī���ȣ""ID""ī��ĺ��ڵ�""ī����ȣ" */
    IF EXISTS (SELECT * FROM deleted,����ī��
      WHERE
        /* %JoinFKPK(deleted,����ī��," = "," AND") */
        deleted.ī���ȣ = ����ī��.ī���ȣ AND
        deleted.ID = ����ī��.ID AND
        deleted.ī��ĺ��ڵ� = ����ī��.ī��ĺ��ڵ� AND
        deleted.ī����ȣ = ����ī��.ī����ȣ AND
        NOT EXISTS (
          SELECT * FROM ����
          WHERE
            /* %JoinFKPK(����,����ī��," = "," AND") */
            ����.ī���ȣ = ����ī��.ī���ȣ AND
            ����.ID = ����ī��.ID AND
            ����.ī��ĺ��ڵ� = ����ī��.ī��ĺ��ڵ� AND
            ����.ī����ȣ = ����ī��.ī����ȣ
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last ���� because ����ī�� exists.'
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


CREATE TRIGGER tU_���� ON ���� FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on ���� */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insī���ȣ char(16), 
           @insID varchar(8), 
           @insī��ĺ��ڵ� char(6), 
           @insī����ȣ tinyint,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* ����  �������� on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="000317bd", PARENT_OWNER="", PARENT_TABLE="����"
    CHILD_OWNER="", CHILD_TABLE="��������"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="����", FK_COLUMNS="ī���ȣ""ID""ī��ĺ��ڵ�""ī����ȣ" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ī���ȣ) OR
    UPDATE(ID) OR
    UPDATE(ī��ĺ��ڵ�) OR
    UPDATE(ī����ȣ)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,��������
      WHERE
        /*  %JoinFKPK(��������,deleted," = "," AND") */
        ��������.ī���ȣ = deleted.ī���ȣ AND
        ��������.ID = deleted.ID AND
        ��������.ī��ĺ��ڵ� = deleted.ī��ĺ��ڵ� AND
        ��������.ī����ȣ = deleted.ī����ȣ
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update ���� because �������� exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* ����ī��  ���� on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="����ī��"
    CHILD_OWNER="", CHILD_TABLE="����"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="����ī��", FK_COLUMNS="ī���ȣ""ID""ī��ĺ��ڵ�""ī����ȣ" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ī���ȣ) OR
    UPDATE(ID) OR
    UPDATE(ī��ĺ��ڵ�) OR
    UPDATE(ī����ȣ)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,����ī��
        WHERE
          /* %JoinFKPK(inserted,����ī��) */
          inserted.ī���ȣ = ����ī��.ī���ȣ and
          inserted.ID = ����ī��.ID and
          inserted.ī��ĺ��ڵ� = ����ī��.ī��ĺ��ڵ� and
          inserted.ī����ȣ = ����ī��.ī����ȣ
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update ���� because ����ī�� does not exist.'
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




CREATE TRIGGER tD_�ſ� ON �ſ� FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on �ſ� */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* ����ī��  �ſ� on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="0001ace5", PARENT_OWNER="", PARENT_TABLE="����ī��"
    CHILD_OWNER="", CHILD_TABLE="�ſ�"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="�ſ�ī��", FK_COLUMNS="ī���ȣ""ID""ī��ĺ��ڵ�""ī����ȣ" */
    IF EXISTS (SELECT * FROM deleted,����ī��
      WHERE
        /* %JoinFKPK(deleted,����ī��," = "," AND") */
        deleted.ī���ȣ = ����ī��.ī���ȣ AND
        deleted.ID = ����ī��.ID AND
        deleted.ī��ĺ��ڵ� = ����ī��.ī��ĺ��ڵ� AND
        deleted.ī����ȣ = ����ī��.ī����ȣ AND
        NOT EXISTS (
          SELECT * FROM �ſ�
          WHERE
            /* %JoinFKPK(�ſ�,����ī��," = "," AND") */
            �ſ�.ī���ȣ = ����ī��.ī���ȣ AND
            �ſ�.ID = ����ī��.ID AND
            �ſ�.ī��ĺ��ڵ� = ����ī��.ī��ĺ��ڵ� AND
            �ſ�.ī����ȣ = ����ī��.ī����ȣ
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last �ſ� because ����ī�� exists.'
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


CREATE TRIGGER tU_�ſ� ON �ſ� FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on �ſ� */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insī���ȣ char(16), 
           @insID varchar(8), 
           @insī��ĺ��ڵ� char(6), 
           @insī����ȣ tinyint,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* ����ī��  �ſ� on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0001c453", PARENT_OWNER="", PARENT_TABLE="����ī��"
    CHILD_OWNER="", CHILD_TABLE="�ſ�"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="�ſ�ī��", FK_COLUMNS="ī���ȣ""ID""ī��ĺ��ڵ�""ī����ȣ" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ī���ȣ) OR
    UPDATE(ID) OR
    UPDATE(ī��ĺ��ڵ�) OR
    UPDATE(ī����ȣ)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,����ī��
        WHERE
          /* %JoinFKPK(inserted,����ī��) */
          inserted.ī���ȣ = ����ī��.ī���ȣ and
          inserted.ID = ����ī��.ID and
          inserted.ī��ĺ��ڵ� = ����ī��.ī��ĺ��ڵ� and
          inserted.ī����ȣ = ����ī��.ī����ȣ
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update �ſ� because ����ī�� does not exist.'
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




CREATE TRIGGER tD_�̿볻�� ON �̿볻�� FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on �̿볻�� */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* ������  �̿볻�� on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="0003218c", PARENT_OWNER="", PARENT_TABLE="������"
    CHILD_OWNER="", CHILD_TABLE="�̿볻��"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="����", FK_COLUMNS="����ڹ�ȣ""��������ȣ" */
    IF EXISTS (SELECT * FROM deleted,������
      WHERE
        /* %JoinFKPK(deleted,������," = "," AND") */
        deleted.����ڹ�ȣ = ������.����ڹ�ȣ AND
        deleted.��������ȣ = ������.��������ȣ AND
        NOT EXISTS (
          SELECT * FROM �̿볻��
          WHERE
            /* %JoinFKPK(�̿볻��,������," = "," AND") */
            �̿볻��.����ڹ�ȣ = ������.����ڹ�ȣ AND
            �̿볻��.��������ȣ = ������.��������ȣ
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last �̿볻�� because ������ exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* ����ī��  �̿볻�� on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="����ī��"
    CHILD_OWNER="", CHILD_TABLE="�̿볻��"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="���", FK_COLUMNS="ī���ȣ""ID""ī��ĺ��ڵ�""ī����ȣ" */
    IF EXISTS (SELECT * FROM deleted,����ī��
      WHERE
        /* %JoinFKPK(deleted,����ī��," = "," AND") */
        deleted.ī���ȣ = ����ī��.ī���ȣ AND
        deleted.ID = ����ī��.ID AND
        deleted.ī��ĺ��ڵ� = ����ī��.ī��ĺ��ڵ� AND
        deleted.ī����ȣ = ����ī��.ī����ȣ AND
        NOT EXISTS (
          SELECT * FROM �̿볻��
          WHERE
            /* %JoinFKPK(�̿볻��,����ī��," = "," AND") */
            �̿볻��.ī���ȣ = ����ī��.ī���ȣ AND
            �̿볻��.ID = ����ī��.ID AND
            �̿볻��.ī��ĺ��ڵ� = ����ī��.ī��ĺ��ڵ� AND
            �̿볻��.ī����ȣ = ����ī��.ī����ȣ
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last �̿볻�� because ����ī�� exists.'
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


CREATE TRIGGER tU_�̿볻�� ON �̿볻�� FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on �̿볻�� */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @ins���ι�ȣ varchar(10), 
           @insī���ȣ char(16), 
           @insID varchar(8), 
           @insī��ĺ��ڵ� char(6), 
           @insī����ȣ tinyint, 
           @ins����ڹ�ȣ char(10), 
           @ins��������ȣ varchar(12),
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* ������  �̿볻�� on child update no action */
  /* ERWIN_RELATION:CHECKSUM="000329be", PARENT_OWNER="", PARENT_TABLE="������"
    CHILD_OWNER="", CHILD_TABLE="�̿볻��"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="����", FK_COLUMNS="����ڹ�ȣ""��������ȣ" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(����ڹ�ȣ) OR
    UPDATE(��������ȣ)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,������
        WHERE
          /* %JoinFKPK(inserted,������) */
          inserted.����ڹ�ȣ = ������.����ڹ�ȣ and
          inserted.��������ȣ = ������.��������ȣ
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update �̿볻�� because ������ does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* ����ī��  �̿볻�� on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="����ī��"
    CHILD_OWNER="", CHILD_TABLE="�̿볻��"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="���", FK_COLUMNS="ī���ȣ""ID""ī��ĺ��ڵ�""ī����ȣ" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ī���ȣ) OR
    UPDATE(ID) OR
    UPDATE(ī��ĺ��ڵ�) OR
    UPDATE(ī����ȣ)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,����ī��
        WHERE
          /* %JoinFKPK(inserted,����ī��) */
          inserted.ī���ȣ = ����ī��.ī���ȣ and
          inserted.ID = ����ī��.ID and
          inserted.ī��ĺ��ڵ� = ����ī��.ī��ĺ��ڵ� and
          inserted.ī����ȣ = ����ī��.ī����ȣ
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update �̿볻�� because ����ī�� does not exist.'
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




CREATE TRIGGER tD_���� ON ���� FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on ���� */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* ����  ���� on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00028c3e", PARENT_OWNER="", PARENT_TABLE="����"
    CHILD_OWNER="", CHILD_TABLE="����"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="��������", FK_COLUMNS="���ù�ȣ" */
    IF EXISTS (SELECT * FROM deleted,����
      WHERE
        /* %JoinFKPK(deleted,����," = "," AND") */
        deleted.���ù�ȣ = ����.���ù�ȣ AND
        NOT EXISTS (
          SELECT * FROM ����
          WHERE
            /* %JoinFKPK(����,����," = "," AND") */
            ����.���ù�ȣ = ����.���ù�ȣ
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last ���� because ���� exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* ī������  ���� on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="ī������"
    CHILD_OWNER="", CHILD_TABLE="����"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="ī������", FK_COLUMNS="ī��ĺ��ڵ�""ī����ȣ" */
    IF EXISTS (SELECT * FROM deleted,ī������
      WHERE
        /* %JoinFKPK(deleted,ī������," = "," AND") */
        deleted.ī��ĺ��ڵ� = ī������.ī��ĺ��ڵ� AND
        deleted.ī����ȣ = ī������.ī����ȣ AND
        NOT EXISTS (
          SELECT * FROM ����
          WHERE
            /* %JoinFKPK(����,ī������," = "," AND") */
            ����.ī��ĺ��ڵ� = ī������.ī��ĺ��ڵ� AND
            ����.ī����ȣ = ī������.ī����ȣ
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last ���� because ī������ exists.'
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


CREATE TRIGGER tU_���� ON ���� FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on ���� */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insī��ĺ��ڵ� char(6), 
           @insī����ȣ tinyint, 
           @ins���ù�ȣ smallint,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* ����  ���� on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0002da9e", PARENT_OWNER="", PARENT_TABLE="����"
    CHILD_OWNER="", CHILD_TABLE="����"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="��������", FK_COLUMNS="���ù�ȣ" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(���ù�ȣ)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,����
        WHERE
          /* %JoinFKPK(inserted,����) */
          inserted.���ù�ȣ = ����.���ù�ȣ
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update ���� because ���� does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* ī������  ���� on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="ī������"
    CHILD_OWNER="", CHILD_TABLE="����"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="ī������", FK_COLUMNS="ī��ĺ��ڵ�""ī����ȣ" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ī��ĺ��ڵ�) OR
    UPDATE(ī����ȣ)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,ī������
        WHERE
          /* %JoinFKPK(inserted,ī������) */
          inserted.ī��ĺ��ڵ� = ī������.ī��ĺ��ڵ� and
          inserted.ī����ȣ = ī������.ī����ȣ
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update ���� because ī������ does not exist.'
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




CREATE TRIGGER tD_üũ ON üũ FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on üũ */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* ����ī��  üũ on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="0001b300", PARENT_OWNER="", PARENT_TABLE="����ī��"
    CHILD_OWNER="", CHILD_TABLE="üũ"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="üũī��", FK_COLUMNS="ī���ȣ""ID""ī��ĺ��ڵ�""ī����ȣ" */
    IF EXISTS (SELECT * FROM deleted,����ī��
      WHERE
        /* %JoinFKPK(deleted,����ī��," = "," AND") */
        deleted.ī���ȣ = ����ī��.ī���ȣ AND
        deleted.ID = ����ī��.ID AND
        deleted.ī��ĺ��ڵ� = ����ī��.ī��ĺ��ڵ� AND
        deleted.ī����ȣ = ����ī��.ī����ȣ AND
        NOT EXISTS (
          SELECT * FROM üũ
          WHERE
            /* %JoinFKPK(üũ,����ī��," = "," AND") */
            üũ.ī���ȣ = ����ī��.ī���ȣ AND
            üũ.ID = ����ī��.ID AND
            üũ.ī��ĺ��ڵ� = ����ī��.ī��ĺ��ڵ� AND
            üũ.ī����ȣ = ����ī��.ī����ȣ
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last üũ because ����ī�� exists.'
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


CREATE TRIGGER tU_üũ ON üũ FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on üũ */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insī���ȣ char(16), 
           @insID varchar(8), 
           @insī��ĺ��ڵ� char(6), 
           @insī����ȣ tinyint,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* ����ī��  üũ on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0001c377", PARENT_OWNER="", PARENT_TABLE="����ī��"
    CHILD_OWNER="", CHILD_TABLE="üũ"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="üũī��", FK_COLUMNS="ī���ȣ""ID""ī��ĺ��ڵ�""ī����ȣ" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ī���ȣ) OR
    UPDATE(ID) OR
    UPDATE(ī��ĺ��ڵ�) OR
    UPDATE(ī����ȣ)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,����ī��
        WHERE
          /* %JoinFKPK(inserted,����ī��) */
          inserted.ī���ȣ = ����ī��.ī���ȣ and
          inserted.ID = ����ī��.ID and
          inserted.ī��ĺ��ڵ� = ����ī��.ī��ĺ��ڵ� and
          inserted.ī����ȣ = ����ī��.ī����ȣ
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update üũ because ����ī�� does not exist.'
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




CREATE TRIGGER tD_�ּ�B�������� ON �ּ�B�������� FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on �ּ�B�������� */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* ����  �ּ�B�������� on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="000146ef", PARENT_OWNER="", PARENT_TABLE="����"
    CHILD_OWNER="", CHILD_TABLE="�ּ�B��������"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="�ּ�B������������", FK_COLUMNS="���ù�ȣ" */
    IF EXISTS (SELECT * FROM deleted,����
      WHERE
        /* %JoinFKPK(deleted,����," = "," AND") */
        deleted.���ù�ȣ = ����.���ù�ȣ AND
        NOT EXISTS (
          SELECT * FROM �ּ�B��������
          WHERE
            /* %JoinFKPK(�ּ�B��������,����," = "," AND") */
            �ּ�B��������.���ù�ȣ = ����.���ù�ȣ
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last �ּ�B�������� because ���� exists.'
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


CREATE TRIGGER tU_�ּ�B�������� ON �ּ�B�������� FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on �ּ�B�������� */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @ins���ù�ȣ smallint,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* ����  �ּ�B�������� on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00016212", PARENT_OWNER="", PARENT_TABLE="����"
    CHILD_OWNER="", CHILD_TABLE="�ּ�B��������"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="�ּ�B������������", FK_COLUMNS="���ù�ȣ" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(���ù�ȣ)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,����
        WHERE
          /* %JoinFKPK(inserted,����) */
          inserted.���ù�ȣ = ����.���ù�ȣ
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update �ּ�B�������� because ���� does not exist.'
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




CREATE TRIGGER tD_�������� ON �������� FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on �������� */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* ����  �������� on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="0001b2f6", PARENT_OWNER="", PARENT_TABLE="����"
    CHILD_OWNER="", CHILD_TABLE="��������"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="����", FK_COLUMNS="ī���ȣ""ID""ī��ĺ��ڵ�""ī����ȣ" */
    IF EXISTS (SELECT * FROM deleted,����
      WHERE
        /* %JoinFKPK(deleted,����," = "," AND") */
        deleted.ī���ȣ = ����.ī���ȣ AND
        deleted.ID = ����.ID AND
        deleted.ī��ĺ��ڵ� = ����.ī��ĺ��ڵ� AND
        deleted.ī����ȣ = ����.ī����ȣ AND
        NOT EXISTS (
          SELECT * FROM ��������
          WHERE
            /* %JoinFKPK(��������,����," = "," AND") */
            ��������.ī���ȣ = ����.ī���ȣ AND
            ��������.ID = ����.ID AND
            ��������.ī��ĺ��ڵ� = ����.ī��ĺ��ڵ� AND
            ��������.ī����ȣ = ����.ī����ȣ
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last �������� because ���� exists.'
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


CREATE TRIGGER tU_�������� ON �������� FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on �������� */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @ins��������� varchar(20), 
           @ins�������¹�ȣ varchar(14), 
           @insī���ȣ char(16), 
           @insID varchar(8), 
           @insī��ĺ��ڵ� char(6), 
           @insī����ȣ tinyint,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* ����  �������� on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0001ba2d", PARENT_OWNER="", PARENT_TABLE="����"
    CHILD_OWNER="", CHILD_TABLE="��������"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="����", FK_COLUMNS="ī���ȣ""ID""ī��ĺ��ڵ�""ī����ȣ" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ī���ȣ) OR
    UPDATE(ID) OR
    UPDATE(ī��ĺ��ڵ�) OR
    UPDATE(ī����ȣ)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,����
        WHERE
          /* %JoinFKPK(inserted,����) */
          inserted.ī���ȣ = ����.ī���ȣ and
          inserted.ID = ����.ID and
          inserted.ī��ĺ��ڵ� = ����.ī��ĺ��ڵ� and
          inserted.ī����ȣ = ����.ī����ȣ
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update �������� because ���� does not exist.'
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




CREATE TRIGGER tD_ī��� ON ī��� FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on ī��� */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* ī���  ī������ on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0001093f", PARENT_OWNER="", PARENT_TABLE="ī���"
    CHILD_OWNER="", CHILD_TABLE="ī������"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="���", FK_COLUMNS="ī����ȣ" */
    IF EXISTS (
      SELECT * FROM deleted,ī������
      WHERE
        /*  %JoinFKPK(ī������,deleted," = "," AND") */
        ī������.ī����ȣ = deleted.ī����ȣ
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete ī��� because ī������ exists.'
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


CREATE TRIGGER tU_ī��� ON ī��� FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on ī��� */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insī����ȣ tinyint,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* ī���  ī������ on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="000122c8", PARENT_OWNER="", PARENT_TABLE="ī���"
    CHILD_OWNER="", CHILD_TABLE="ī������"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="���", FK_COLUMNS="ī����ȣ" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ī����ȣ)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,ī������
      WHERE
        /*  %JoinFKPK(ī������,deleted," = "," AND") */
        ī������.ī����ȣ = deleted.ī����ȣ
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update ī��� because ī������ exists.'
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




CREATE TRIGGER tD_ī������ ON ī������ FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on ī������ */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* ī������  ���� on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00035115", PARENT_OWNER="", PARENT_TABLE="ī������"
    CHILD_OWNER="", CHILD_TABLE="����"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="ī������", FK_COLUMNS="ī��ĺ��ڵ�""ī����ȣ" */
    IF EXISTS (
      SELECT * FROM deleted,����
      WHERE
        /*  %JoinFKPK(����,deleted," = "," AND") */
        ����.ī��ĺ��ڵ� = deleted.ī��ĺ��ڵ� AND
        ����.ī����ȣ = deleted.ī����ȣ
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete ī������ because ���� exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* ī������  ����ī�� on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="ī������"
    CHILD_OWNER="", CHILD_TABLE="����ī��"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="�߱�", FK_COLUMNS="ī��ĺ��ڵ�""ī����ȣ" */
    IF EXISTS (
      SELECT * FROM deleted,����ī��
      WHERE
        /*  %JoinFKPK(����ī��,deleted," = "," AND") */
        ����ī��.ī��ĺ��ڵ� = deleted.ī��ĺ��ڵ� AND
        ����ī��.ī����ȣ = deleted.ī����ȣ
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete ī������ because ����ī�� exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* ī���  ī������ on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="ī���"
    CHILD_OWNER="", CHILD_TABLE="ī������"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="���", FK_COLUMNS="ī����ȣ" */
    IF EXISTS (SELECT * FROM deleted,ī���
      WHERE
        /* %JoinFKPK(deleted,ī���," = "," AND") */
        deleted.ī����ȣ = ī���.ī����ȣ AND
        NOT EXISTS (
          SELECT * FROM ī������
          WHERE
            /* %JoinFKPK(ī������,ī���," = "," AND") */
            ī������.ī����ȣ = ī���.ī����ȣ
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last ī������ because ī��� exists.'
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


CREATE TRIGGER tU_ī������ ON ī������ FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on ī������ */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insī��ĺ��ڵ� char(6), 
           @insī����ȣ tinyint,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* ī������  ���� on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="0003bbde", PARENT_OWNER="", PARENT_TABLE="ī������"
    CHILD_OWNER="", CHILD_TABLE="����"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="ī������", FK_COLUMNS="ī��ĺ��ڵ�""ī����ȣ" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ī��ĺ��ڵ�) OR
    UPDATE(ī����ȣ)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,����
      WHERE
        /*  %JoinFKPK(����,deleted," = "," AND") */
        ����.ī��ĺ��ڵ� = deleted.ī��ĺ��ڵ� AND
        ����.ī����ȣ = deleted.ī����ȣ
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update ī������ because ���� exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* ī������  ����ī�� on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="ī������"
    CHILD_OWNER="", CHILD_TABLE="����ī��"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="�߱�", FK_COLUMNS="ī��ĺ��ڵ�""ī����ȣ" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ī��ĺ��ڵ�) OR
    UPDATE(ī����ȣ)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,����ī��
      WHERE
        /*  %JoinFKPK(����ī��,deleted," = "," AND") */
        ����ī��.ī��ĺ��ڵ� = deleted.ī��ĺ��ڵ� AND
        ����ī��.ī����ȣ = deleted.ī����ȣ
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update ī������ because ����ī�� exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* ī���  ī������ on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="ī���"
    CHILD_OWNER="", CHILD_TABLE="ī������"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="���", FK_COLUMNS="ī����ȣ" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ī����ȣ)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,ī���
        WHERE
          /* %JoinFKPK(inserted,ī���) */
          inserted.ī����ȣ = ī���.ī����ȣ
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update ī������ because ī��� does not exist.'
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




CREATE TRIGGER tD_�ۼ�Ʈ ON �ۼ�Ʈ FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on �ۼ�Ʈ */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* ����  �ۼ�Ʈ on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00013321", PARENT_OWNER="", PARENT_TABLE="����"
    CHILD_OWNER="", CHILD_TABLE="�ۼ�Ʈ"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="�ۼ�Ʈ����", FK_COLUMNS="���ù�ȣ" */
    IF EXISTS (SELECT * FROM deleted,����
      WHERE
        /* %JoinFKPK(deleted,����," = "," AND") */
        deleted.���ù�ȣ = ����.���ù�ȣ AND
        NOT EXISTS (
          SELECT * FROM �ۼ�Ʈ
          WHERE
            /* %JoinFKPK(�ۼ�Ʈ,����," = "," AND") */
            �ۼ�Ʈ.���ù�ȣ = ����.���ù�ȣ
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last �ۼ�Ʈ because ���� exists.'
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


CREATE TRIGGER tU_�ۼ�Ʈ ON �ۼ�Ʈ FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on �ۼ�Ʈ */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @ins���ù�ȣ smallint,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* ����  �ۼ�Ʈ on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00016442", PARENT_OWNER="", PARENT_TABLE="����"
    CHILD_OWNER="", CHILD_TABLE="�ۼ�Ʈ"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="�ۼ�Ʈ����", FK_COLUMNS="���ù�ȣ" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(���ù�ȣ)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,����
        WHERE
          /* %JoinFKPK(inserted,����) */
          inserted.���ù�ȣ = ����.���ù�ȣ
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update �ۼ�Ʈ because ���� does not exist.'
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




CREATE TRIGGER tD_���� ON ���� FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on ���� */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* ����  ���� on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="000489c4", PARENT_OWNER="", PARENT_TABLE="����"
    CHILD_OWNER="", CHILD_TABLE="����"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="��������", FK_COLUMNS="���ù�ȣ" */
    IF EXISTS (
      SELECT * FROM deleted,����
      WHERE
        /*  %JoinFKPK(����,deleted," = "," AND") */
        ����.���ù�ȣ = deleted.���ù�ȣ
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete ���� because ���� exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* ����  ���ʹ� on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="����"
    CHILD_OWNER="", CHILD_TABLE="���ʹ�"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="���ʹ�����", FK_COLUMNS="���ù�ȣ" */
    IF EXISTS (
      SELECT * FROM deleted,���ʹ�
      WHERE
        /*  %JoinFKPK(���ʹ�,deleted," = "," AND") */
        ���ʹ�.���ù�ȣ = deleted.���ù�ȣ
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete ���� because ���ʹ� exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* ����  �ּ�B�������� on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="����"
    CHILD_OWNER="", CHILD_TABLE="�ּ�B��������"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="�ּ�B������������", FK_COLUMNS="���ù�ȣ" */
    IF EXISTS (
      SELECT * FROM deleted,�ּ�B��������
      WHERE
        /*  %JoinFKPK(�ּ�B��������,deleted," = "," AND") */
        �ּ�B��������.���ù�ȣ = deleted.���ù�ȣ
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete ���� because �ּ�B�������� exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* ����  A���� on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="����"
    CHILD_OWNER="", CHILD_TABLE="A����"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="A��������", FK_COLUMNS="���ù�ȣ" */
    IF EXISTS (
      SELECT * FROM deleted,A����
      WHERE
        /*  %JoinFKPK(A����,deleted," = "," AND") */
        A����.���ù�ȣ = deleted.���ù�ȣ
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete ���� because A���� exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* ����  �ۼ�Ʈ on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="����"
    CHILD_OWNER="", CHILD_TABLE="�ۼ�Ʈ"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="�ۼ�Ʈ����", FK_COLUMNS="���ù�ȣ" */
    IF EXISTS (
      SELECT * FROM deleted,�ۼ�Ʈ
      WHERE
        /*  %JoinFKPK(�ۼ�Ʈ,deleted," = "," AND") */
        �ۼ�Ʈ.���ù�ȣ = deleted.���ù�ȣ
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete ���� because �ۼ�Ʈ exists.'
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


CREATE TRIGGER tU_���� ON ���� FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on ���� */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @ins���ù�ȣ smallint,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* ����  ���� on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00050c27", PARENT_OWNER="", PARENT_TABLE="����"
    CHILD_OWNER="", CHILD_TABLE="����"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="��������", FK_COLUMNS="���ù�ȣ" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(���ù�ȣ)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,����
      WHERE
        /*  %JoinFKPK(����,deleted," = "," AND") */
        ����.���ù�ȣ = deleted.���ù�ȣ
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update ���� because ���� exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* ����  ���ʹ� on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="����"
    CHILD_OWNER="", CHILD_TABLE="���ʹ�"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="���ʹ�����", FK_COLUMNS="���ù�ȣ" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(���ù�ȣ)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,���ʹ�
      WHERE
        /*  %JoinFKPK(���ʹ�,deleted," = "," AND") */
        ���ʹ�.���ù�ȣ = deleted.���ù�ȣ
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update ���� because ���ʹ� exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* ����  �ּ�B�������� on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="����"
    CHILD_OWNER="", CHILD_TABLE="�ּ�B��������"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="�ּ�B������������", FK_COLUMNS="���ù�ȣ" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(���ù�ȣ)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,�ּ�B��������
      WHERE
        /*  %JoinFKPK(�ּ�B��������,deleted," = "," AND") */
        �ּ�B��������.���ù�ȣ = deleted.���ù�ȣ
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update ���� because �ּ�B�������� exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* ����  A���� on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="����"
    CHILD_OWNER="", CHILD_TABLE="A����"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="A��������", FK_COLUMNS="���ù�ȣ" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(���ù�ȣ)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,A����
      WHERE
        /*  %JoinFKPK(A����,deleted," = "," AND") */
        A����.���ù�ȣ = deleted.���ù�ȣ
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update ���� because A���� exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* ����  �ۼ�Ʈ on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="����"
    CHILD_OWNER="", CHILD_TABLE="�ۼ�Ʈ"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="�ۼ�Ʈ����", FK_COLUMNS="���ù�ȣ" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(���ù�ȣ)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,�ۼ�Ʈ
      WHERE
        /*  %JoinFKPK(�ۼ�Ʈ,deleted," = "," AND") */
        �ۼ�Ʈ.���ù�ȣ = deleted.���ù�ȣ
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update ���� because �ۼ�Ʈ exists.'
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




CREATE TRIGGER tD_ȸ�� ON ȸ�� FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on ȸ�� */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* ȸ�� ��õ�� ȸ�� on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0002edbb", PARENT_OWNER="", PARENT_TABLE="ȸ��"
    CHILD_OWNER="", CHILD_TABLE="ȸ��"
    P2C_VERB_PHRASE="��õ��", C2P_VERB_PHRASE="��õ����ȸ��", 
    FK_CONSTRAINT="��õ", FK_COLUMNS="��õ��ID" */
    IF EXISTS (
      SELECT * FROM deleted,ȸ��
      WHERE
        /*  %JoinFKPK(ȸ��,deleted," = "," AND") */
        ȸ��.��õ��ID = deleted.ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete ȸ�� because ȸ�� exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* ȸ��  ����ī�� on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="ȸ��"
    CHILD_OWNER="", CHILD_TABLE="����ī��"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="���", FK_COLUMNS="ID" */
    IF EXISTS (
      SELECT * FROM deleted,����ī��
      WHERE
        /*  %JoinFKPK(����ī��,deleted," = "," AND") */
        ����ī��.ID = deleted.ID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete ȸ�� because ����ī�� exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* ȸ�� ��õ�� ȸ�� on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="ȸ��"
    CHILD_OWNER="", CHILD_TABLE="ȸ��"
    P2C_VERB_PHRASE="��õ��", C2P_VERB_PHRASE="��õ����ȸ��", 
    FK_CONSTRAINT="��õ", FK_COLUMNS="��õ��ID" */
    IF EXISTS (SELECT * FROM deleted,ȸ��
      WHERE
        /* %JoinFKPK(deleted,ȸ��," = "," AND") */
        deleted.��õ��ID = ȸ��.ID AND
        NOT EXISTS (
          SELECT * FROM ȸ��
          WHERE
            /* %JoinFKPK(ȸ��,ȸ��," = "," AND") */
            ȸ��.��õ��ID = ȸ��.ID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last ȸ�� because ȸ�� exists.'
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


CREATE TRIGGER tU_ȸ�� ON ȸ�� FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on ȸ�� */
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
  /* ȸ�� ��õ�� ȸ�� on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00035810", PARENT_OWNER="", PARENT_TABLE="ȸ��"
    CHILD_OWNER="", CHILD_TABLE="ȸ��"
    P2C_VERB_PHRASE="��õ��", C2P_VERB_PHRASE="��õ����ȸ��", 
    FK_CONSTRAINT="��õ", FK_COLUMNS="��õ��ID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,ȸ��
      WHERE
        /*  %JoinFKPK(ȸ��,deleted," = "," AND") */
        ȸ��.��õ��ID = deleted.ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update ȸ�� because ȸ�� exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* ȸ��  ����ī�� on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="ȸ��"
    CHILD_OWNER="", CHILD_TABLE="����ī��"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="���", FK_COLUMNS="ID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,����ī��
      WHERE
        /*  %JoinFKPK(����ī��,deleted," = "," AND") */
        ����ī��.ID = deleted.ID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update ȸ�� because ����ī�� exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* ȸ�� ��õ�� ȸ�� on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="ȸ��"
    CHILD_OWNER="", CHILD_TABLE="ȸ��"
    P2C_VERB_PHRASE="��õ��", C2P_VERB_PHRASE="��õ����ȸ��", 
    FK_CONSTRAINT="��õ", FK_COLUMNS="��õ��ID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(��õ��ID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,ȸ��
        WHERE
          /* %JoinFKPK(inserted,ȸ��) */
          inserted.��õ��ID = ȸ��.ID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.��õ��ID IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update ȸ�� because ȸ�� does not exist.'
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


