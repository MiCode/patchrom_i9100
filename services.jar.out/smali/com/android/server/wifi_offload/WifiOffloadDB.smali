.class public Lcom/android/server/wifi_offload/WifiOffloadDB;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "WifiOffloadDB.java"


# static fields
.field public static final COLUMN_DATA_USAGE:Ljava/lang/String; = "datausage"

.field public static final COLUMN_DIALOG_STATUS:Ljava/lang/String; = "dialogstatus"

.field public static final COLUMN_LASTUSED_DATE:Ljava/lang/String; = "lastuseddate"

.field public static final COLUMN_LAUNCH_COUNT:Ljava/lang/String; = "launchcount"

.field public static final COLUMN_NETWORK_TYPE:Ljava/lang/String; = "networktype"

.field public static final COLUMN_OFFLOAD_FLAG:Ljava/lang/String; = "offload"

.field public static final COLUMN_PACKAGE_NAME:Ljava/lang/String; = "pkgname"

.field public static final COLUMN_STATION_ID:Ljava/lang/String; = "stationid"

.field public static final COLUMN_USER_ID:Ljava/lang/String; = "userid"

.field public static final COLUMN_WIFI_BSSID:Ljava/lang/String; = "wifibssid"

.field public static final COLUMN_WIFI_SSID:Ljava/lang/String; = "wifissid"

.field public static final DATABASE_NAME:Ljava/lang/String; = "wifioffload.db"

.field static final DATABASE_VERSION:I = 0x2

.field public static final DATA_USAGE_TABLE:Ljava/lang/String; = "data_usage"

.field private static TAG:Ljava/lang/String; = null

.field public static final WIFI_OFFLOAD_TABLE:Ljava/lang/String; = "wifi_data"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "WifiOffloadDB"

    sput-object v0, Lcom/android/server/wifi_offload/WifiOffloadDB;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 42
    const-string v0, "wifioffload.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 43
    return-void
.end method

.method private createWiFiData(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 75
    const-string v0, "CREATE TABLE wifi_data(_id INTEGER PRIMARY KEY AUTOINCREMENT,stationid INTEGER,wifissid TEXT NOT NULL,wifibssid TEXT,lastuseddate TEXT,dialogstatus INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 88
    const-string v0, "CREATE TABLE data_usage(_id INTEGER PRIMARY KEY AUTOINCREMENT,userid INTEGER,pkgname TEXT NOT NULL,datausage INTEGER,launchcount INTEGER,offload INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 99
    return-void
.end method


# virtual methods
.method public deleteWifiDetail(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "dbase"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "tableName"

    .prologue
    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, count:I
    if-nez p1, :cond_0

    .line 141
    sget-object v1, Lcom/android/server/wifi_offload/WifiOffloadDB;->TAG:Ljava/lang/String;

    const-string v2, "dbase is null , so recreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p0}, Lcom/android/server/wifi_offload/WifiOffloadDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 144
    :cond_0
    invoke-virtual {p1, p4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 145
    return v0
.end method

.method public insertWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .parameter "dbase"
    .parameter "values"
    .parameter "tableName"

    .prologue
    .line 103
    if-nez p1, :cond_0

    .line 104
    sget-object v0, Lcom/android/server/wifi_offload/WifiOffloadDB;->TAG:Ljava/lang/String;

    const-string v1, "dbase is null , so recreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0}, Lcom/android/server/wifi_offload/WifiOffloadDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 107
    :cond_0
    const-string v0, ""

    invoke-virtual {p1, p3, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 108
    return-void
.end method

.method public isWiFiDataStored(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)Z
    .locals 10
    .parameter "dbase"
    .parameter "bssid"
    .parameter "stationID"

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 156
    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "wifibssid"

    aput-object v0, v2, v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wifibssid = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "stationid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "wifi_data"

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi_offload/WifiOffloadDB;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 157
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 158
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 159
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 164
    :goto_0
    return v0

    .line 163
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 164
    goto :goto_0
.end method

.method public isWiFiDataStored(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;II)Z
    .locals 1
    .parameter "dbase"
    .parameter "bssid"
    .parameter "stationID"
    .parameter "networkType"

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/wifi_offload/WifiOffloadDB;->createWiFiData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 50
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 58
    return-void
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "dbase"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "tableName"

    .prologue
    const/4 v5, 0x0

    .line 124
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 126
    .local v0, sqlBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-virtual {v0, p6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 127
    if-nez p1, :cond_0

    .line 128
    sget-object v1, Lcom/android/server/wifi_offload/WifiOffloadDB;->TAG:Ljava/lang/String;

    const-string v2, "dbase is null , so recreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {p0}, Lcom/android/server/wifi_offload/WifiOffloadDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    .line 131
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 133
    .local v8, c:Landroid/database/Cursor;
    return-object v8
.end method

.method public updateWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "dbase"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "tableName"

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, count:I
    if-nez p1, :cond_0

    .line 114
    sget-object v1, Lcom/android/server/wifi_offload/WifiOffloadDB;->TAG:Ljava/lang/String;

    const-string v2, "dbase is null , so recreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p0}, Lcom/android/server/wifi_offload/WifiOffloadDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 117
    :cond_0
    invoke-virtual {p1, p5, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 118
    return v0
.end method
