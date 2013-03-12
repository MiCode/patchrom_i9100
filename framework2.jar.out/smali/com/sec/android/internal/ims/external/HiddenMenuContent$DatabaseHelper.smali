.class Lcom/sec/android/internal/ims/external/HiddenMenuContent$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "HiddenMenuContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/internal/ims/external/HiddenMenuContent;
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
    .line 72
    const-string v0, "HiddenMenuContent.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 73
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 87
    const-string v0, "Create table HiddenMenu( _id INTEGER PRIMARY KEY AUTOINCREMENT, mPrefCscfDns TEXT,mPrefCscfIp TEXT,mPrefCscfDomain TEXT,mPrefCscfPort TEXT,mPrefXdmDns TEXT,mPrefXdmIp TEXT,mPrefAudioCodec TEXT,mPrefVideoCodec TEXT,mLoopback TEXT,mAlwaysOn TEXT,mEnableQos TEXT,mVideoProfile TEXT,mAudioFirst TEXT,mQosAware TEXT,mVTDebugging TEXT,mAutoTest TEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 114
    const-string v0, "DROP TABLE IF EXISTS HiddenMenu"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0, p1}, Lcom/sec/android/internal/ims/external/HiddenMenuContent$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 117
    return-void
.end method
