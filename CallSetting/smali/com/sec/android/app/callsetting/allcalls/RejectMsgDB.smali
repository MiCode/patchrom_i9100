.class public Lcom/sec/android/app/callsetting/allcalls/RejectMsgDB;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "RejectMsgDB.java"


# instance fields
.field List1:Ljava/lang/String;

.field List2:Ljava/lang/String;

.field List3:Ljava/lang/String;

.field List4:Ljava/lang/String;

.field List5:Ljava/lang/String;

.field Resource1:I

.field Resource2:I

.field Resource3:I

.field Resource4:I

.field Resource5:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "ctx"

    .prologue
    const v6, 0x7f07007b

    const v5, 0x7f07007a

    const v4, 0x7f070079

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 49
    const-string v0, "rejectmessage.db"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 35
    iput-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMsgDB;->List1:Ljava/lang/String;

    .line 36
    iput-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMsgDB;->List2:Ljava/lang/String;

    .line 37
    iput-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMsgDB;->List3:Ljava/lang/String;

    .line 38
    iput-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMsgDB;->List4:Ljava/lang/String;

    .line 39
    iput-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMsgDB;->List5:Ljava/lang/String;

    .line 41
    iput v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMsgDB;->Resource1:I

    .line 42
    iput v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMsgDB;->Resource2:I

    .line 43
    iput v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMsgDB;->Resource3:I

    .line 44
    iput v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMsgDB;->Resource4:I

    .line 45
    iput v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMsgDB;->Resource5:I

    .line 51
    iput v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMsgDB;->Resource1:I

    .line 52
    iput v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMsgDB;->Resource2:I

    .line 53
    iput v6, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMsgDB;->Resource3:I

    .line 54
    const v0, 0x7f07007c

    iput v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMsgDB;->Resource4:I

    .line 55
    const v0, 0x7f07007d

    iput v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMsgDB;->Resource5:I

    .line 56
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMsgDB;->List1:Ljava/lang/String;

    .line 57
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMsgDB;->List2:Ljava/lang/String;

    .line 58
    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMsgDB;->List3:Ljava/lang/String;

    .line 59
    const v0, 0x7f07007c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMsgDB;->List4:Ljava/lang/String;

    .line 60
    const v0, 0x7f07007d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMsgDB;->List5:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, num:I
    const-string v1, "CREATE TABLE reject_msg (_id INTEGER PRIMARY KEY AUTOINCREMENT, reject_message TEXT NOT NULL,edit_checked TEXT NOT NULL);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO reject_msg (\'REJECT_MESSAGE\', \'EDIT_CHECKED\' ) values (\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMsgDB;->List1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' ,  \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMsgDB;->Resource1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO reject_msg (\'REJECT_MESSAGE\', \'EDIT_CHECKED\' ) values (\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMsgDB;->List2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' ,  \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMsgDB;->Resource2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO reject_msg (\'REJECT_MESSAGE\', \'EDIT_CHECKED\' ) values (\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMsgDB;->List3:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' ,  \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMsgDB;->Resource3:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO reject_msg (\'REJECT_MESSAGE\', \'EDIT_CHECKED\' ) values (\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMsgDB;->List4:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' ,  \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMsgDB;->Resource4:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO reject_msg (\'REJECT_MESSAGE\', \'EDIT_CHECKED\' ) values (\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMsgDB;->List5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' ,  \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectMsgDB;->Resource5:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 80
    const-string v0, "ResectMsgDB"

    const-string v1, "onUpgrade"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string v0, "DROP TABLE IF EXISTS reject_msg"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, p1}, Lcom/sec/android/app/callsetting/allcalls/RejectMsgDB;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 84
    return-void
.end method
