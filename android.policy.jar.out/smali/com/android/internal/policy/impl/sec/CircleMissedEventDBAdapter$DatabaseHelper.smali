.class Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CircleMissedEventDBAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 60
    const-string v0, "MissedEvent.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 61
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 65
    const-string v0, "CREATE TABLE IF NOT EXISTS missedCallInfo(publisher_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,time INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 66
    const-string v0, "CREATE TABLE IF NOT EXISTS unreadMsgInfo(publisher_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,content TEXT,time INTEGER,thread INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 70
    const-string v0, "DROP TABLE IF EXISTS missedCallInfo"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 71
    const-string v0, "DROP TABLE IF EXISTS missedMsgInfo"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/sec/CircleMissedEventDBAdapter$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 73
    return-void
.end method
