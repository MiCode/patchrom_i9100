.class public Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;
.super Ljava/lang/Object;
.source "CircleMissedEventDBAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter$DatabaseHelper;
    }
.end annotation


# static fields
.field public static final CREATE_TABLE_CALL_INFO:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS missedCallInfo(publisher_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,time INTEGER);"

.field public static final CREATE_TABLE_MSG_INFO:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS unreadMsgInfo(publisher_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,content TEXT,time INTEGER,thread INTEGER);"

.field private static final DATABASE_VERSION:I = 0x1

.field public static final DB_NAME:Ljava/lang/String; = "MissedEvent.db"

.field public static final DROP_TABLE_CALL_INFO:Ljava/lang/String; = "DROP TABLE IF EXISTS missedCallInfo"

.field public static final DROP_TABLE_MSG_INFO:Ljava/lang/String; = "DROP TABLE IF EXISTS missedMsgInfo"

.field public static final MISSED_CALL_TABLE:Ljava/lang/String; = "missedCallInfo"

.field private static final TAG:Ljava/lang/String; = "CircleMissedEventDBAdapter"

.field public static final UNREAD_MSG_TABLE:Ljava/lang/String; = "unreadMsgInfo"

.field private static mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private static mDbHelper:Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter$DatabaseHelper;

.field private static sInstance:Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;


# instance fields
.field private final DEBUG:Z

.field private mContext:Landroid/content/Context;

.field private mDbIsOpen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->sInstance:Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->DEBUG:Z

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->mDbIsOpen:Z

    .line 77
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->mContext:Landroid/content/Context;

    .line 78
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;
    .locals 1
    .parameter "context"

    .prologue
    .line 81
    sget-object v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->sInstance:Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->sInstance:Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;

    .line 84
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->sInstance:Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 98
    const-string v0, "CircleMissedEventDBAdapter"

    const-string v1, "close"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sget-object v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->mDbHelper:Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter$DatabaseHelper;->close()V

    .line 100
    sget-object v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->mDbIsOpen:Z

    .line 103
    return-void
.end method

.method public deleteMissedCall()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 181
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->mDbIsOpen:Z

    if-eqz v0, :cond_0

    .line 182
    const-string v0, "CircleMissedEventDBAdapter"

    const-string v1, "deleteMissedCall : DB is opned"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->open()Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;

    .line 187
    const-string v0, "CircleMissedEventDBAdapter"

    const-string v1, "deleteMissedCall"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    sget-object v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "missedCallInfo"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 191
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->close()V

    goto :goto_0
.end method

.method public deleteMissedMsg(J)V
    .locals 4
    .parameter "threadId"

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->mDbIsOpen:Z

    if-eqz v0, :cond_0

    .line 196
    const-string v0, "CircleMissedEventDBAdapter"

    const-string v1, "deleteMissedMsg : DB is opned"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :goto_0
    return-void

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->open()Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;

    .line 201
    const-string v0, "CircleMissedEventDBAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteMissedMsg : threadId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    sget-object v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "unreadMsgInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thread="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 205
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->close()V

    goto :goto_0
.end method

.method public getMissedCallCursor()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 132
    sget-object v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "missedCallInfo"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getMissedMsgCursor()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 136
    sget-object v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "unreadMsgInfo"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public insertMissedCall(Lcom/android/internal/policy/impl/sec/CircleMissedEventData;)V
    .locals 6
    .parameter "data"

    .prologue
    .line 140
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->mDbIsOpen:Z

    if-eqz v3, :cond_0

    .line 141
    const-string v3, "CircleMissedEventDBAdapter"

    const-string v4, "insertMissedCall : DB is opned"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->open()Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;

    .line 146
    iget-object v0, p1, Lcom/android/internal/policy/impl/sec/CircleMissedEventData;->name:Ljava/lang/String;

    .line 147
    .local v0, name:Ljava/lang/String;
    iget-wide v1, p1, Lcom/android/internal/policy/impl/sec/CircleMissedEventData;->date:J

    .line 149
    .local v1, when:J
    const-string v3, "CircleMissedEventDBAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertMissedCall : name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " when = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->insertMissedCallEvent(Ljava/lang/String;J)J

    .line 151
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->close()V

    goto :goto_0
.end method

.method public insertMissedCallEvent(Ljava/lang/String;J)J
    .locals 4
    .parameter "name"
    .parameter "time"

    .prologue
    .line 106
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 107
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v1, "time"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 109
    sget-object v1, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "missedCallInfo"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1
.end method

.method public insertMissedMsg(Lcom/android/internal/policy/impl/sec/CircleMissedEventData;)V
    .locals 11
    .parameter "data"

    .prologue
    const/4 v10, 0x1

    .line 155
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->mDbIsOpen:Z

    if-eqz v0, :cond_0

    .line 156
    const-string v0, "CircleMissedEventDBAdapter"

    const-string v9, "insertMissedMsg : DB is opned"

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->open()Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;

    .line 163
    iget-object v1, p1, Lcom/android/internal/policy/impl/sec/CircleMissedEventData;->name:Ljava/lang/String;

    .line 164
    .local v1, name:Ljava/lang/String;
    iget-object v0, p1, Lcom/android/internal/policy/impl/sec/CircleMissedEventData;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 165
    .local v8, tickerText:Ljava/lang/String;
    const-string v0, ": "

    const/4 v9, 0x2

    invoke-virtual {v8, v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 166
    .local v7, tempText:[Ljava/lang/String;
    iget-wide v3, p1, Lcom/android/internal/policy/impl/sec/CircleMissedEventData;->date:J

    .line 167
    .local v3, when:J
    iget-wide v5, p1, Lcom/android/internal/policy/impl/sec/CircleMissedEventData;->threadId:J

    .line 168
    .local v5, threadId:J
    array-length v0, v7

    if-ne v0, v10, :cond_1

    .line 169
    const/4 v0, 0x0

    aget-object v2, v7, v0

    .line 174
    .local v2, content:Ljava/lang/String;
    :goto_1
    const-string v0, "CircleMissedEventDBAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "insertMissedMsg : name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " content = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " when = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " threadId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    .line 175
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->insertMissedMsgEvent(Ljava/lang/String;Ljava/lang/String;JJ)J

    .line 177
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->close()V

    goto :goto_0

    .line 171
    .end local v2           #content:Ljava/lang/String;
    :cond_1
    aget-object v2, v7, v10

    .restart local v2       #content:Ljava/lang/String;
    goto :goto_1
.end method

.method public insertMissedMsgEvent(Ljava/lang/String;Ljava/lang/String;JJ)J
    .locals 5
    .parameter "name"
    .parameter "content"
    .parameter "time"
    .parameter "threadId"

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->getMissedMsgCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 114
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    const-string v2, "time"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    cmp-long v2, p3, v2

    if-nez v2, :cond_0

    .line 116
    const-string v2, "CircleMissedEventDBAdapter"

    const-string v3, "insertMissedMsgEvent : time is same"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const-wide/16 v2, -0x1

    .line 128
    :goto_0
    return-wide v2

    .line 121
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 122
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "name"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v2, "content"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v2, "time"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 125
    const-string v2, "thread"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 127
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 128
    sget-object v2, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "unreadMsgInfo"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->mDbIsOpen:Z

    return v0
.end method

.method public open()Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;
    .locals 2

    .prologue
    .line 88
    const-string v0, "CircleMissedEventDBAdapter"

    const-string v1, "open"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter$DatabaseHelper;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter$DatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->mDbHelper:Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter$DatabaseHelper;

    .line 90
    sget-object v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->mDbHelper:Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;->mDbIsOpen:Z

    .line 94
    return-object p0
.end method
