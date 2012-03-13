.class public Lcom/sec/android/app/callsetting/allcalls/PrefixDialingDB;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PrefixDialingDB.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    .line 33
    const-string v0, "prefixdialing.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 34
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 39
    const-string v0, "CREATE TABLE prefix_num (_id INTEGER PRIMARY KEY AUTOINCREMENT, prefix_number TEXT NOT NULL,prefix_checked INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 47
    const-string v0, "DROP TABLE IF EXISTS prefix_num"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0, p1}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingDB;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 49
    return-void
.end method
