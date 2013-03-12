.class Lcom/android/server/enterprise/EdmStorageHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "EdmStorageHelper.java"


# static fields
.field static final DATABASE_NAME:Ljava/lang/String; = "enterprise.db"

.field static final DATABASE_VERSION:I = 0x5

.field private static final TAG:Ljava/lang/String; = "EdmStorageHelper"

.field static mInstance:Lcom/android/server/enterprise/EdmStorageHelper; = null

.field static final mTAG:Ljava/lang/String; = "EDM"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/EdmStorageHelper;->mInstance:Lcom/android/server/enterprise/EdmStorageHelper;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 93
    const-string v0, "enterprise.db"

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 94
    iput-object p1, p0, Lcom/android/server/enterprise/EdmStorageHelper;->mContext:Landroid/content/Context;

    .line 95
    return-void
.end method

.method public static createAppGeneralTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 2809
    :try_start_0
    const-string v1, "CREATE TABLE APPLICATION_GENERAL( adminUid INTEGER PRIMARY KEY NOT NULL, installToSdCard NUMERIC DEFAULT 0,  FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2817
    const-string v1, "CREATE TRIGGER applicationGeneralPolicy_FKIndex  BEFORE INSERT  ON APPLICATION_GENERAL FOR EACH ROW BEGIN SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2826
    :goto_0
    return-void

    .line 2823
    :catch_0
    move-exception v0

    .line 2824
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APPLICATION_GENERALcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createAppPermissionControlTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 2755
    :try_start_0
    const-string v1, "CREATE TABLE APPLICATION_PERMISSIONCONTROL( adminUid INTEGER NOT NULL, permission TEXT NOT NULL, Object TEXT NOT NULL, ListType TEXT NOT NULL,  PRIMARY KEY (permission,Object,adminUid,ListType)  FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2767
    const-string v1, "CREATE TRIGGER APPLICATION_PERMISSIONCONTROL_FKIndex  BEFORE INSERT  ON APPLICATION_PERMISSIONCONTROL FOR EACH ROW BEGIN SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2779
    :goto_0
    return-void

    .line 2776
    :catch_0
    move-exception v0

    .line 2777
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static createBlackWhiteListPolicyTables(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "tblName"
    .parameter "db"

    .prologue
    .line 2851
    const-string v1, "EDM"

    const-string v2, "createBlackWhiteListPolicyTables...."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2853
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Object"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT NOT NULL, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "adminUid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER NOT NULL, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ListType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT NOT NULL, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PRIMARY KEY ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Object"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ListType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "adminUid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FOREIGN KEY ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "adminUid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") REFERENCES "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ADMIN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "adminUid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2860
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TRIGGER "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_FKIndex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " BEFORE INSERT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ON "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FOR EACH ROW BEGIN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SELECT CASE WHEN ((SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "adminUid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ADMIN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "adminUid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = new."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "adminUid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") IS NULL)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " THEN RAISE (ABORT,\'Foreign Key Violation\') END;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  END;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2872
    :goto_0
    return-void

    .line 2869
    :catch_0
    move-exception v0

    .line 2870
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "creation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static createKioskTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 2783
    :try_start_0
    const-string v1, "CREATE TABLE KIOSKMODE( adminUid INTEGER PRIMARY KEY NOT NULL, kioskModeEnabled NUMERIC DEFAULT 0, kioskModeDefaultPackage TEXT NULL , kioskModeKioskPackage TEXT NULL , systemBarEnabled NUMERIC DEFAULT 0, blockedHwKeyList TEXT NULL, taskManagerEnabled NUMERIC DEFAULT 1, FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2796
    const-string v1, "CREATE TRIGGER kioskModeService_FKIndex  BEFORE INSERT  ON KIOSKMODE FOR EACH ROW BEGIN  SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2805
    :goto_0
    return-void

    .line 2802
    :catch_0
    move-exception v0

    .line 2803
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static createWifiSsidBlackWhiteListTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 2830
    :try_start_0
    const-string v1, "CREATE TABLE WIFI_SSID_BLACK_WHITE_LIST ( adminUid INTEGER NOT NULL, WIFI_SSID TEXT NOT NULL, WIFI_LIST_TYPE TEXT NOT NULL, PRIMARY KEY (WIFI_SSID,adminUid,WIFI_LIST_TYPE) FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2838
    const-string v1, "CREATE TRIGGER wifiSsidBlackWhiteListPolicy_FKIndex  BEFORE INSERT  ON WIFI_SSID_BLACK_WHITE_LIST FOR EACH ROW BEGIN  SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END; END;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2847
    :goto_0
    return-void

    .line 2844
    :catch_0
    move-exception v0

    .line 2845
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WIFI_SSID_BLACK_WHITE_LISTcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/EdmStorageHelper;
    .locals 2
    .parameter "context"

    .prologue
    .line 83
    const-class v1, Lcom/android/server/enterprise/EdmStorageHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/EdmStorageHelper;->mInstance:Lcom/android/server/enterprise/EdmStorageHelper;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/EdmStorageHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/EdmStorageHelper;->mInstance:Lcom/android/server/enterprise/EdmStorageHelper;

    .line 86
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/EdmStorageHelper;->mInstance:Lcom/android/server/enterprise/EdmStorageHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 4
    .parameter "db"
    .parameter "table"

    .prologue
    .line 1717
    const/4 v1, 0x0

    .line 1718
    .local v1, exists:Z
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1720
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT 1 FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE 1=0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1721
    const/4 v1, 0x1

    .line 1726
    :cond_0
    :goto_0
    return v1

    .line 1722
    :catch_0
    move-exception v0

    .line 1723
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final migrateFromV2ToV2_1(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 28
    .parameter "db"

    .prologue
    .line 1521
    const-string v1, "EdmStorageHelper"

    const-string v2, "onUpgrade : Upgrading to 2 "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    const-string v1, "APPLICATION_PERMISSION"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/EdmStorageHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1523
    const-string v1, "EdmStorageHelper"

    const-string v2, "onUpgrade : Already upgraded"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    :goto_0
    return-void

    .line 1529
    :cond_0
    :try_start_0
    const-string v1, "DROP TRIGGER IF EXISTS applicationPolicy_FKIndex;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1530
    const-string v1, "ALTER TABLE APPLICATION RENAME TO tmp_app_table;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1531
    const-string v1, "CREATE TABLE APPLICATION( packageName TEXT NOT NULL, adminUid INTEGER NOT NULL, applicationInstallationCount INTEGER UNSIGNED DEFAULT 0, applicationUninstallationCount INTEGER UNSIGNED DEFAULT 0, managedApp INTEGER UNSIGNED DEFAULT 0, install_sourceMDM INTEGER UNSIGNED DEFAULT 0, controlState INTEGER UNSIGNED DEFAULT 0,  PRIMARY KEY (packageName,adminUid)  FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1545
    const-string v1, "CREATE TRIGGER applicationPolicy_FKIndex  BEFORE INSERT  ON APPLICATION FOR EACH ROW BEGIN SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1556
    :goto_1
    :try_start_1
    const-string v1, "CREATE TABLE APPLICATION_PERMISSION( permission TEXT NOT NULL, adminUid INTEGER NOT NULL,  PRIMARY KEY (permission,adminUid)  FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1564
    const-string v1, "CREATE TRIGGER applicationPermissionPolicy_FKIndex  BEFORE INSERT  ON APPLICATION_PERMISSION FOR EACH ROW BEGIN SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1576
    :goto_2
    :try_start_2
    const-string v1, "CREATE TABLE APPLICATION_SIGNATURE( signature TEXT NOT NULL, adminUid INTEGER NOT NULL,  PRIMARY KEY (signature,adminUid)  FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1584
    const-string v1, "CREATE TRIGGER applicationSignaturePolicy_FKIndex  BEFORE INSERT  ON APPLICATION_SIGNATURE FOR EACH ROW BEGIN SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1595
    :goto_3
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1596
    const-string v1, "EdmStorageHelper"

    const-string v2, "Upgrading Application Table"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    const-string v2, "tmp_app_table"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1599
    .local v10, c:Landroid/database/Cursor;
    :goto_4
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1600
    const-string v1, "applicationState"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1601
    .local v14, disableState:I
    const-string v1, "applicationInstallState"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 1602
    .local v21, installState:I
    const-string v1, "applicationUnInstallState"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 1603
    .local v27, uninstallState:I
    const-string v1, "adminUid"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1604
    .local v9, admin:I
    const-string v1, "applicationName"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 1605
    .local v24, pkgname:Ljava/lang/String;
    const-string v1, "managedApp"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 1606
    .local v22, managedApp:I
    const-string v1, "install_sourceMDM"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 1607
    .local v20, installSource:I
    const-string v1, "applicationInstallationCount"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 1608
    .local v18, installCount:I
    const-string v1, "applicationUninstallationCount"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 1610
    .local v26, uninstallCount:I
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1611
    .local v13, cv:Landroid/content/ContentValues;
    const-string v1, "packageName"

    move-object/from16 v0, v24

    invoke-virtual {v13, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1612
    const-string v1, "adminUid"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    const-string v1, "managedApp"

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1614
    const-string v1, "install_sourceMDM"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1615
    const-string v1, "applicationInstallationCount"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1616
    const-string v1, "applicationUninstallationCount"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1617
    const/4 v11, 0x0

    .line 1618
    .local v11, controlState:I
    const/4 v1, 0x1

    if-ne v14, v1, :cond_1

    .line 1619
    or-int/lit8 v11, v11, 0x2

    .line 1621
    :cond_1
    const/4 v1, 0x1

    move/from16 v0, v27

    if-ne v0, v1, :cond_2

    .line 1622
    or-int/lit8 v11, v11, 0x1

    .line 1624
    :cond_2
    const/4 v1, 0x4

    move/from16 v0, v21

    if-ne v0, v1, :cond_4

    .line 1625
    or-int/lit8 v11, v11, 0x4

    .line 1628
    :cond_3
    :goto_5
    const-string v1, "controlState"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1629
    const-string v1, "APPLICATION"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_4

    .line 1711
    .end local v9           #admin:I
    .end local v10           #c:Landroid/database/Cursor;
    .end local v11           #controlState:I
    .end local v13           #cv:Landroid/content/ContentValues;
    .end local v14           #disableState:I
    .end local v18           #installCount:I
    .end local v20           #installSource:I
    .end local v21           #installState:I
    .end local v22           #managedApp:I
    .end local v24           #pkgname:Ljava/lang/String;
    .end local v26           #uninstallCount:I
    .end local v27           #uninstallState:I
    :catch_0
    move-exception v17

    .line 1712
    .local v17, e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Application policy upgrade EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1551
    .end local v17           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v17

    .line 1552
    .restart local v17       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Application table upgrade EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1571
    .end local v17           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v17

    .line 1572
    .restart local v17       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Application Permission table upgrade EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1590
    .end local v17           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v17

    .line 1591
    .restart local v17       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Application Signature table upgrade EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1626
    .end local v17           #e:Ljava/lang/Exception;
    .restart local v9       #admin:I
    .restart local v10       #c:Landroid/database/Cursor;
    .restart local v11       #controlState:I
    .restart local v13       #cv:Landroid/content/ContentValues;
    .restart local v14       #disableState:I
    .restart local v18       #installCount:I
    .restart local v20       #installSource:I
    .restart local v21       #installState:I
    .restart local v22       #managedApp:I
    .restart local v24       #pkgname:Ljava/lang/String;
    .restart local v26       #uninstallCount:I
    .restart local v27       #uninstallState:I
    :cond_4
    const/4 v1, 0x2

    move/from16 v0, v21

    if-ne v0, v1, :cond_3

    .line 1627
    or-int/lit8 v11, v11, 0x8

    goto/16 :goto_5

    .line 1631
    .end local v9           #admin:I
    .end local v11           #controlState:I
    .end local v13           #cv:Landroid/content/ContentValues;
    .end local v14           #disableState:I
    .end local v18           #installCount:I
    .end local v20           #installSource:I
    .end local v21           #installState:I
    .end local v22           #managedApp:I
    .end local v24           #pkgname:Ljava/lang/String;
    .end local v26           #uninstallCount:I
    .end local v27           #uninstallState:I
    :cond_5
    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1632
    const-string v1, "DROP TABLE tmp_app_table;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1634
    const/4 v15, 0x0

    .line 1635
    .local v15, dmappmgrDB:Landroid/database/sqlite/SQLiteDatabase;
    const-string v16, "dmappmgr.db"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1637
    .local v16, dmappmgrDBPath:Ljava/lang/String;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/EdmStorageHelper;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v15

    .line 1642
    :goto_6
    :try_start_6
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1646
    const-string v1, "EMDMAppSignatureBlackList"

    invoke-static {v15, v1}, Lcom/android/server/enterprise/EdmStorageHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1647
    const-string v1, "EdmStorageHelper"

    const-string v2, "Upgrading Signature Table"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1649
    const-string v1, "SELECT * FROM EMDMAppSignatureBlackList"

    const/4 v2, 0x0

    invoke-virtual {v15, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1651
    .local v12, cr:Landroid/database/Cursor;
    :goto_7
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1652
    const-string v1, "app_signature"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 1653
    .local v25, signature:Ljava/lang/String;
    const-string v1, "admin"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1654
    .restart local v9       #admin:I
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1655
    .restart local v13       #cv:Landroid/content/ContentValues;
    const-string v1, "signature"

    move-object/from16 v0, v25

    invoke-virtual {v13, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    const-string v1, "adminUid"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1657
    const-string v1, "APPLICATION_SIGNATURE"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_7

    .line 1639
    .end local v9           #admin:I
    .end local v12           #cr:Landroid/database/Cursor;
    .end local v13           #cv:Landroid/content/ContentValues;
    .end local v25           #signature:Ljava/lang/String;
    :catch_4
    move-exception v17

    .line 1640
    .restart local v17       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Application table upgrade EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1659
    .end local v17           #e:Ljava/lang/Exception;
    .restart local v12       #cr:Landroid/database/Cursor;
    :cond_6
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1660
    const-string v1, "DROP TABLE EMDMAppSignatureBlackList;"

    invoke-virtual {v15, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1667
    .end local v12           #cr:Landroid/database/Cursor;
    :cond_7
    const-string v1, "EMDMAppPermissionsBlackList"

    invoke-static {v15, v1}, Lcom/android/server/enterprise/EdmStorageHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1668
    const-string v1, "EdmStorageHelper"

    const-string v2, "Upgrading Permission Table"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1670
    const-string v1, "SELECT * FROM EMDMAppPermissionsBlackList"

    const/4 v2, 0x0

    invoke-virtual {v15, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1672
    .restart local v12       #cr:Landroid/database/Cursor;
    :goto_8
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1673
    const-string v1, "app_permission"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 1674
    .local v23, permission:Ljava/lang/String;
    const-string v1, "admin"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1675
    .restart local v9       #admin:I
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1676
    .restart local v13       #cv:Landroid/content/ContentValues;
    const-string v1, "permission"

    move-object/from16 v0, v23

    invoke-virtual {v13, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1677
    const-string v1, "adminUid"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1678
    const-string v1, "APPLICATION_PERMISSION"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_8

    .line 1680
    .end local v9           #admin:I
    .end local v13           #cv:Landroid/content/ContentValues;
    .end local v23           #permission:Ljava/lang/String;
    :cond_8
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1681
    const-string v1, "DROP TABLE EMDMAppPermissionsBlackList;"

    invoke-virtual {v15, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1686
    .end local v12           #cr:Landroid/database/Cursor;
    :cond_9
    const-string v1, "EDMAppInstallationMode"

    invoke-static {v15, v1}, Lcom/android/server/enterprise/EdmStorageHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1687
    const-string v1, "EdmStorageHelper"

    const-string v2, "Upgrading InstallMode Table"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    const-string v1, "SELECT * FROM EDMAppInstallationMode"

    const/4 v2, 0x0

    invoke-virtual {v15, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1690
    .restart local v12       #cr:Landroid/database/Cursor;
    :cond_a
    :goto_9
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1691
    const-string v1, "installatioMode"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 1692
    .local v19, installMode:I
    if-nez v19, :cond_a

    .line 1693
    const-string v1, "admin"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1694
    .restart local v9       #admin:I
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1695
    .restart local v13       #cv:Landroid/content/ContentValues;
    const-string v1, "packageName"

    const-string v2, ".*"

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1696
    const-string v1, "adminUid"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
    const-string v1, "controlState"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1699
    const-string v1, "APPLICATION"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_9

    .line 1702
    .end local v9           #admin:I
    .end local v13           #cv:Landroid/content/ContentValues;
    .end local v19           #installMode:I
    :cond_b
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1703
    const-string v1, "DROP TABLE EDMAppInstallationMode;"

    invoke-virtual {v15, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1705
    .end local v12           #cr:Landroid/database/Cursor;
    :cond_c
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1706
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1707
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1708
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1709
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1710
    const-string v1, "EdmStorageHelper"

    const-string v2, "Successful upgrade to 2.1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0
.end method

.method private final migrateFromV2_1ToV2_2(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 16
    .parameter "db"

    .prologue
    .line 1428
    const-string v1, "EdmStorageHelper"

    const-string v2, "onUpgrade : Upgrading to 2.2 "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1430
    const-string v1, "VPN"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/EdmStorageHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1431
    const-string v1, "ALTER TABLE VPN RENAME TO tmp_vpn_table;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1434
    :try_start_0
    const-string v1, "CREATE TABLE VPN( adminUid INTEGER NOT NULL, VpnID NUMERIC PRIMARY KEY NOT NULL, UsrName TEXT NULL, UsrPwd TEXT NULL,  FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1447
    :goto_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1448
    const-string v1, "EdmStorageHelper"

    const-string v2, "Upgrading VPN Table to ICS version"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    const-string v2, "tmp_vpn_table"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1451
    .local v10, cursor:Landroid/database/Cursor;
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1452
    const-string v1, "adminUid"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1453
    .local v9, adminUid:I
    const-string v1, "VpnID"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1454
    .local v13, vpnId:I
    const-string v1, "UsrName"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1456
    .local v15, vpnUserName:Ljava/lang/String;
    const-string v1, "UsrPwd"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1458
    .local v14, vpnPassword:Ljava/lang/String;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1459
    .local v11, cv:Landroid/content/ContentValues;
    const-string v1, "adminUid"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    const-string v1, "VpnID"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1461
    const-string v1, "UsrName"

    invoke-virtual {v11, v1, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    const-string v1, "UsrPwd"

    invoke-virtual {v11, v1, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    const-string v1, "VPN"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1470
    .end local v9           #adminUid:I
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v11           #cv:Landroid/content/ContentValues;
    .end local v13           #vpnId:I
    .end local v14           #vpnPassword:Ljava/lang/String;
    .end local v15           #vpnUserName:Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 1471
    .local v12, e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VPN table upgrade EX2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    .end local v12           #e:Ljava/lang/Exception;
    :cond_0
    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EdmStorageHelper;->createAppGeneralTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1478
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EdmStorageHelper;->createWifiSsidBlackWhiteListTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1479
    const-string v1, "BLUETOOTH_DEVICE_BWLIST"

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/android/server/enterprise/EdmStorageHelper;->createBlackWhiteListPolicyTables(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1480
    const-string v1, "BLUETOOTH_PROFILE_BWLIST"

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/android/server/enterprise/EdmStorageHelper;->createBlackWhiteListPolicyTables(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1485
    :try_start_2
    const-string v1, "ALTER TABLE RESTRICTION ADD COLUMN nativeVpnAllowed NUMERIC DEFAULT 1;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1490
    const-string v1, "ALTER TABLE PASSWORD ADD COLUMN passwordMaximumNumericSequenceLength NUMERIC DEFAULT 0;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1492
    const-string v1, "ALTER TABLE PASSWORD ADD COLUMN passwordForbiddenStrings TEXT NULL;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1494
    const-string v1, "ALTER TABLE PASSWORD ADD COLUMN passwordMaximumCharacterOccurences NUMERIC DEFAULT 0;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1498
    const-string v1, "ALTER TABLE WIFI ADD COLUMN allowWifiApSettingModification NUMERIC DEFAULT 1;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1502
    const-string v1, "ALTER TABLE WIFI ADD COLUMN wifiSsidRestriction NUMERIC DEFAULT 0;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1507
    const-string v1, "ALTER TABLE BLUETOOTH ADD COLUMN profilePolicyEnabled NUMERIC DEFAULT 0;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1510
    const-string v1, "ALTER TABLE BLUETOOTH ADD COLUMN devicePolicyEnabled NUMERIC DEFAULT 0;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1514
    const-string v1, "EdmStorageHelper"

    const-string v2, "Successful upgrade to 2.2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1518
    :goto_3
    return-void

    .line 1442
    :catch_1
    move-exception v12

    .line 1443
    .restart local v12       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VPN table upgrade EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1465
    .end local v12           #e:Ljava/lang/Exception;
    .restart local v10       #cursor:Landroid/database/Cursor;
    :cond_1
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1466
    const-string v1, "DROP TABLE tmp_vpn_table;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1467
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1468
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 1515
    .end local v10           #cursor:Landroid/database/Cursor;
    :catch_2
    move-exception v12

    .line 1516
    .restart local v12       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding colums for 2.2 upgrade EX : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private final migrateFromV2_2ToV3_0(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 1158
    const-string v1, "EdmStorageHelper"

    const-string v2, "onUpgrade : Upgrading to 3.0 "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    invoke-static {p1}, Lcom/android/server/enterprise/EdmStorageHelper;->createKioskTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1162
    const-string v1, "WIFI_CONF"

    invoke-static {p1, v1}, Lcom/android/server/enterprise/EdmStorageHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1164
    :try_start_0
    const-string v1, "ALTER TABLE WIFI_CONF ADD COLUMN networkStaticIpEnabled NUMERIC DEFAULT 0; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1168
    const-string v1, "ALTER TABLE WIFI_CONF ADD COLUMN networkStaticIp TEXT NULL; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1171
    const-string v1, "ALTER TABLE WIFI_CONF ADD COLUMN networkStaticGateway TEXT NULL; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1174
    const-string v1, "ALTER TABLE WIFI_CONF ADD COLUMN networkStaticPrimaryDns TEXT NULL; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1177
    const-string v1, "ALTER TABLE WIFI_CONF ADD COLUMN networkStaticSecondaryDns TEXT NULL; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1180
    const-string v1, "ALTER TABLE WIFI_CONF ADD COLUMN networkStaticSubnetMask TEXT NULL; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1183
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1184
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b

    .line 1192
    :cond_0
    :goto_0
    :try_start_1
    const-string v1, "ALTER TABLE RESTRICTION ADD COLUMN wallpaperEnabled NUMERIC DEFAULT 1; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1196
    const-string v1, "ALTER TABLE RESTRICTION ADD COLUMN statusBarExpansionEnabled NUMERIC DEFAULT 1; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1200
    const-string v1, "ALTER TABLE RESTRICTION ADD COLUMN powerOffAllowed NUMERIC DEFAULT 1; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1204
    const-string v1, "ALTER TABLE RESTRICTION ADD COLUMN OTAUpgradeEnabled NUMERIC DEFAULT 1; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1208
    const-string v1, "ALTER TABLE RESTRICTION ADD COLUMN DateTimeEnabled NUMERIC DEFAULT 1; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1212
    const-string v1, "ALTER TABLE RESTRICTION ADD COLUMN googleCrashReportEnabled NUMERIC DEFAULT 1; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1216
    const-string v1, "ALTER TABLE RESTRICTION ADD COLUMN sdCardWriteEnabled NUMERIC DEFAULT 1; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1223
    const-string v1, "ALTER TABLE RESTRICTION ADD COLUMN MarketNetworkType NUMERIC DEFAULT 0; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    .line 1233
    :goto_1
    :try_start_2
    const-string v1, "ALTER TABLE PHONERESTRICTION ADD COLUMN allowIncomingSms NUMERIC DEFAULT 1; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1237
    const-string v1, "ALTER TABLE PHONERESTRICTION ADD COLUMN allowOutgoingSms NUMERIC DEFAULT 1; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1241
    const-string v1, "ALTER TABLE PHONERESTRICTION ADD COLUMN allowIncomingMms NUMERIC DEFAULT 1; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1245
    const-string v1, "ALTER TABLE PHONERESTRICTION ADD COLUMN allowOutgoingMms NUMERIC DEFAULT 1; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    .line 1255
    :goto_2
    :try_start_3
    const-string v1, "ALTER TABLE BLUETOOTH ADD COLUMN bluetoothLogEnabled NUMERIC DEFAULT 0; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    .line 1265
    :goto_3
    :try_start_4
    const-string v1, "ALTER TABLE PASSWORD ADD COLUMN screenLockPatternVisibility NUMERIC DEFAULT 1; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    .line 1275
    :goto_4
    :try_start_5
    const-string v1, "ALTER TABLE ROAMING ADD COLUMN roamingVoiceCallsEnabled NUMERIC DEFAULT 1;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 1285
    :goto_5
    :try_start_6
    const-string v1, "CREATE TABLE APPLICATION_MISC( adminUid INTEGER PRIMARY KEY NOT NULL, widgetWhitelistEnabled NUMERIC DEFAULT 0, appNotificationMode NUMERIC DEFAULT 2,  FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1295
    const-string v1, "CREATE TRIGGER applicationMiscPolicy_FKIndex  BEFORE INSERT  ON APPLICATION_MISC FOR EACH ROW BEGIN SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 1307
    :goto_6
    :try_start_7
    const-string v1, "CREATE TABLE WebFilterTable (adminUid TEXT, url TEXT, id INTEGER PRIMARY KEY AUTOINCREMENT,  FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1313
    const-string v1, "CREATE TRIGGER webFilterPolicy_FKIndex  BEFORE INSERT  ON WebFilterTable FOR EACH ROW BEGIN  SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 1327
    :goto_7
    :try_start_8
    const-string v1, "CREATE TABLE WebFilterLogTable (url TEXT, time TEXT, id INTEGER PRIMARY KEY AUTOINCREMENT );"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1332
    const-string v1, "CREATE TRIGGER webFilterLoggingPolicy_TbSize  AFTER INSERT  ON WebFilterLogTable WHEN (SELECT COUNT(*) FROM WebFilterLogTable) > 1000  BEGIN  DELETE FROM WebFilterLogTable WHERE id = (SELECT id FROM WebFilterLogTable ORDER BY id LIMIT 1); END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 1351
    :goto_8
    :try_start_9
    const-string v1, "CREATE TABLE WebFilterSettingsTable (adminUid TEXT, logging TEXT DEFAULT \'false\', filtering TEXT DEFAULT \'false\', id INTEGER PRIMARY KEY AUTOINCREMENT,  FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1358
    const-string v1, "CREATE TRIGGER webFilterSettingsPolicy_FKIndex  BEFORE INSERT  ON WebFilterSettingsTable FOR EACH ROW BEGIN  SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 1372
    :goto_9
    :try_start_a
    const-string v1, "CREATE TABLE BluetoothLogTable (time TEXT, log TEXT, id INTEGER PRIMARY KEY AUTOINCREMENT );"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1377
    const-string v1, "CREATE TRIGGER bluetoothLoggingPolicy_TbSize  AFTER INSERT  ON BluetoothLogTable WHEN (SELECT COUNT(*) FROM BluetoothLogTable) > 1000  BEGIN  DELETE FROM BluetoothLogTable WHERE id = (SELECT id FROM BluetoothLogTable ORDER BY id LIMIT 1); END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 1395
    :goto_a
    :try_start_b
    const-string v1, "CREATE TABLE EmailSettingsTable (adminUid INTEGER NOT NULL, EmailAddress TEXT NOT NULL, EmailReqSigSmime NUMERIC DEFAULT 0, EmailReqEncryptSmime NUMERIC DEFAULT 0, EmailSigningCertName TEXT NULL, EmailEncryptCertName TEXT NULL, EmailAllowForward NUMERIC DEFAULT 1,  PRIMARY KEY (EmailAddress,adminUid)  FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1410
    const-string v1, "CREATE TRIGGER emailPolicy_FKIndex  BEFORE INSERT  ON EmailSettingsTable FOR EACH ROW BEGIN  SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 1424
    :goto_b
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EdmStorageHelper;->createAppPermissionControlTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1425
    return-void

    .line 1301
    :catch_0
    move-exception v0

    .line 1302
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 1321
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1322
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 1345
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 1346
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 1366
    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 1367
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 1390
    .end local v0           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 1391
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    .line 1419
    .end local v0           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v0

    .line 1420
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b

    .line 1279
    .end local v0           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v1

    goto :goto_5

    .line 1269
    :catch_7
    move-exception v1

    goto :goto_4

    .line 1259
    :catch_8
    move-exception v1

    goto :goto_3

    .line 1249
    :catch_9
    move-exception v1

    goto :goto_2

    .line 1227
    :catch_a
    move-exception v1

    goto/16 :goto_1

    .line 1185
    :catch_b
    move-exception v1

    goto/16 :goto_0
.end method


# virtual methods
.method addAdmin(ILjava/lang/String;Z)Z
    .locals 8
    .parameter "iUId"
    .parameter "sName"
    .parameter "bCanRemove"

    .prologue
    .line 2307
    const/4 v3, 0x0

    .line 2309
    .local v3, result:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2310
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2311
    .local v0, cv:Landroid/content/ContentValues;
    const-string v4, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2312
    const-string v4, "adminName"

    invoke-virtual {v0, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2313
    const-string v4, "canRemove"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2315
    const-string v4, "ADMIN"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 2316
    const/4 v3, 0x1

    .line 2323
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return v3

    .line 2318
    .restart local v0       #cv:Landroid/content/ContentValues;
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 2320
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v2

    .line 2321
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "EdmStorageHelper"

    const-string v5, "Failed on addAdmin"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 12
    .parameter "sTableName"
    .parameter "sColumns"
    .parameter "sValues"

    .prologue
    const/4 v9, 0x0

    .line 2533
    const/4 v8, 0x0

    .line 2534
    .local v8, where:Ljava/lang/String;
    const/4 v1, 0x0

    .line 2535
    .local v1, buf:Ljava/lang/StringBuffer;
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 2536
    :cond_0
    const/4 p3, 0x0

    .line 2544
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 2546
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v4, p1, v8, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_1

    .line 2547
    const/4 v9, 0x1

    .line 2552
    .end local v4           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :goto_1
    return v9

    .line 2538
    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2539
    .end local v1           #buf:Ljava/lang/StringBuffer;
    .local v2, buf:Ljava/lang/StringBuffer;
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    :try_start_1
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_2
    if-ge v6, v7, :cond_3

    aget-object v3, v0, v6

    .line 2540
    .local v3, column:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "= ? AND "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2539
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2542
    .end local v3           #column:Ljava/lang/String;
    :cond_3
    const/4 v10, 0x0

    const-string v11, " AND "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    move-object v1, v2

    .end local v2           #buf:Ljava/lang/StringBuffer;
    .restart local v1       #buf:Ljava/lang/StringBuffer;
    goto :goto_0

    .line 2549
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v7           #len$:I
    :catch_0
    move-exception v5

    .line 2550
    .local v5, e:Ljava/lang/Exception;
    :goto_3
    const-string v10, "EdmStorageHelper"

    const-string v11, "could not execute deleteDataByFields"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2549
    .end local v1           #buf:Ljava/lang/StringBuffer;
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #buf:Ljava/lang/StringBuffer;
    :catch_1
    move-exception v5

    move-object v1, v2

    .end local v2           #buf:Ljava/lang/StringBuffer;
    .restart local v1       #buf:Ljava/lang/StringBuffer;
    goto :goto_3
.end method

.method declared-synchronized getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .parameter "sTableName"
    .parameter "sColumn"
    .parameter "value"

    .prologue
    .line 2093
    monitor-enter p0

    const/4 v11, -0x1

    .line 2094
    .local v11, result:I
    const/4 v9, 0x0

    .line 2096
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2097
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "adminUid"

    aput-object v5, v2, v1

    .line 2100
    .local v2, columns:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "=? "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2101
    .local v3, where:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v4, v1

    .line 2104
    .local v4, whereArgs:[Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2105
    if-eqz v9, :cond_0

    .line 2106
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2107
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 2113
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v9, :cond_1

    .line 2114
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2116
    :cond_1
    monitor-exit p0

    return v11

    .line 2110
    :catch_0
    move-exception v10

    .line 2111
    .local v10, e:Ljava/lang/Exception;
    const/4 v1, 0x6

    :try_start_2
    const-string v5, "EdmStorageHelper"

    const-string v6, "Failed on getAdminByField"

    invoke-static {v1, v5, v6}, Lcom/android/server/enterprise/Utils;->writeToLog(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2093
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "sTableName"
    .parameter "admin"
    .parameter "columns"

    .prologue
    .line 2235
    monitor-enter p0

    const/4 v9, 0x0

    .line 2237
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2238
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "adminUid=? "

    .line 2239
    .local v3, where:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 2240
    .local v4, whereArgs:[Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 2248
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v9

    .line 2241
    :catch_0
    move-exception v10

    .line 2242
    .local v10, e:Ljava/lang/Exception;
    const/4 v1, 0x6

    :try_start_1
    const-string v2, "EdmStorageHelper"

    const-string v5, "Failed on getCursorByAdminAndField"

    invoke-static {v1, v2, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 2243
    if-eqz v9, :cond_0

    .line 2244
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2245
    const/4 v9, 0x0

    goto :goto_0

    .line 2235
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized getCursorByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "sTableName"
    .parameter "admin"
    .parameter "sColumn"
    .parameter "value"
    .parameter "columns"

    .prologue
    .line 2213
    monitor-enter p0

    const/4 v9, 0x0

    .line 2215
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2216
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adminUid=? AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2217
    .local v3, where:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x1

    aput-object p4, v4, v1

    .line 2218
    .local v4, whereArgs:[Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object/from16 v2, p5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 2226
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v9

    .line 2219
    :catch_0
    move-exception v10

    .line 2220
    .local v10, e:Ljava/lang/Exception;
    const/4 v1, 0x6

    :try_start_1
    const-string v2, "EdmStorageHelper"

    const-string v5, "Failed on getCursorByAdminAndField"

    invoke-static {v1, v2, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 2221
    if-eqz v9, :cond_0

    .line 2222
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2223
    const/4 v9, 0x0

    goto :goto_0

    .line 2213
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 21
    .parameter "sTableName"
    .parameter "sColumns"
    .parameter "sValues"
    .parameter "ReturnColumns"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2419
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2420
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 2421
    .local v16, cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v14, 0x0

    .line 2422
    .local v14, count:I
    const/4 v5, 0x0

    .line 2423
    .local v5, where:Ljava/lang/String;
    const/4 v11, 0x0

    .line 2424
    .local v11, buf:Ljava/lang/StringBuffer;
    const/4 v15, 0x0

    .line 2427
    .local v15, cursor:Landroid/database/Cursor;
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 2428
    :cond_0
    const/16 p3, 0x0

    .line 2437
    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-object/from16 v6, p3

    :try_start_0
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 2438
    if-eqz v15, :cond_6

    .line 2439
    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2440
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2441
    const/16 v18, 0x0

    .local v18, i:I
    :goto_2
    invoke-interface {v15}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    move/from16 v0, v18

    if-ge v0, v3, :cond_3

    .line 2442
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    move/from16 v0, v18

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    move/from16 v0, v18

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2441
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 2430
    .end local v18           #i:I
    :cond_1
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2431
    .end local v11           #buf:Ljava/lang/StringBuffer;
    .local v12, buf:Ljava/lang/StringBuffer;
    move-object/from16 v10, p2

    .local v10, arr$:[Ljava/lang/String;
    :try_start_1
    array-length v0, v10

    move/from16 v20, v0

    .local v20, len$:I
    const/16 v19, 0x0

    .local v19, i$:I
    :goto_3
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    aget-object v13, v10, v19

    .line 2432
    .local v13, column:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "= ? AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2431
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 2434
    .end local v13           #column:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    const-string v4, " AND "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    move-object v11, v12

    .end local v12           #buf:Ljava/lang/StringBuffer;
    .restart local v11       #buf:Ljava/lang/StringBuffer;
    goto :goto_0

    .line 2444
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v19           #i$:I
    .end local v20           #len$:I
    .restart local v18       #i:I
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 2447
    .end local v18           #i:I
    :catch_0
    move-exception v17

    .line 2448
    .local v17, e:Ljava/lang/Exception;
    :goto_4
    :try_start_2
    const-string v3, "EdmStorageHelper"

    const-string v4, "could not execute getDataByFields"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2450
    if-eqz v15, :cond_4

    .line 2451
    .end local v17           #e:Ljava/lang/Exception;
    :goto_5
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 2454
    :cond_4
    return-object v16

    .line 2450
    :catchall_0
    move-exception v3

    :goto_6
    if-eqz v15, :cond_5

    .line 2451
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 2450
    :cond_5
    throw v3

    :cond_6
    if-eqz v15, :cond_4

    goto :goto_5

    .end local v11           #buf:Ljava/lang/StringBuffer;
    .restart local v10       #arr$:[Ljava/lang/String;
    .restart local v12       #buf:Ljava/lang/StringBuffer;
    :catchall_1
    move-exception v3

    move-object v11, v12

    .end local v12           #buf:Ljava/lang/StringBuffer;
    .restart local v11       #buf:Ljava/lang/StringBuffer;
    goto :goto_6

    .line 2447
    .end local v11           #buf:Ljava/lang/StringBuffer;
    .restart local v12       #buf:Ljava/lang/StringBuffer;
    :catch_1
    move-exception v17

    move-object v11, v12

    .end local v12           #buf:Ljava/lang/StringBuffer;
    .restart local v11       #buf:Ljava/lang/StringBuffer;
    goto :goto_4
.end method

.method declared-synchronized getIntByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 14
    .parameter "sTableName"
    .parameter "admin"
    .parameter "sColumn"
    .parameter "value"
    .parameter "retColumn"

    .prologue
    .line 2152
    monitor-enter p0

    const/4 v12, -0x1

    .line 2153
    .local v12, result:I
    const/4 v10, 0x0

    .line 2155
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2156
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p5, v3, v2

    .line 2157
    .local v3, columns:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adminUid=? AND "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "=? "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2158
    .local v4, where:Ljava/lang/String;
    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x1

    aput-object p4, v5, v2

    .line 2159
    .local v5, whereArgs:[Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2161
    if-eqz v10, :cond_1

    .line 2162
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2163
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 2165
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v13, v12

    .line 2175
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #columns:[Ljava/lang/String;
    .end local v4           #where:Ljava/lang/String;
    .end local v5           #whereArgs:[Ljava/lang/String;
    .end local v12           #result:I
    .local v13, result:I
    :goto_0
    monitor-exit p0

    return v13

    .line 2168
    .end local v13           #result:I
    .restart local v12       #result:I
    :catch_0
    move-exception v11

    .line 2169
    .local v11, e:Ljava/lang/Exception;
    const/4 v2, 0x6

    :try_start_1
    const-string v6, "EdmStorageHelper"

    const-string v7, "Failed on getIntByAdminAndField"

    invoke-static {v2, v6, v7}, Lcom/android/server/enterprise/Utils;->writeToLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 2170
    if-eqz v10, :cond_2

    .line 2171
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2172
    const/4 v10, 0x0

    :cond_2
    move v13, v12

    .line 2175
    .end local v12           #result:I
    .restart local v13       #result:I
    goto :goto_0

    .line 2152
    .end local v11           #e:Ljava/lang/Exception;
    .end local v13           #result:I
    .restart local v12       #result:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized getStringByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "sTableName"
    .parameter "admin"
    .parameter "sColumn"
    .parameter "value"
    .parameter "retColumn"

    .prologue
    .line 2180
    monitor-enter p0

    const/4 v11, 0x0

    .line 2181
    .local v11, result:Ljava/lang/String;
    const/4 v9, 0x0

    .line 2184
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2185
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p5, v2, v1

    .line 2186
    .local v2, columns:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adminUid=? AND "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "=? "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2187
    .local v3, where:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    aput-object p4, v4, v1

    .line 2188
    .local v4, whereArgs:[Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2190
    if-eqz v9, :cond_1

    .line 2191
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2192
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2194
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2203
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v11

    .line 2196
    :catch_0
    move-exception v10

    .line 2197
    .local v10, e:Ljava/lang/Exception;
    const/4 v1, 0x6

    :try_start_1
    const-string v5, "EdmStorageHelper"

    const-string v6, "Failed on getValueByAdminAndField"

    invoke-static {v1, v5, v6}, Lcom/android/server/enterprise/Utils;->writeToLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 2198
    if-eqz v9, :cond_1

    .line 2199
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2200
    const/4 v9, 0x0

    goto :goto_0

    .line 2180
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized getValueByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "sTableName"
    .parameter "admin"
    .parameter "sColumn"
    .parameter "value"
    .parameter "retColumn"

    .prologue
    .line 2129
    monitor-enter p0

    const/4 v9, 0x0

    .line 2131
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2132
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p5, v2, v1

    .line 2135
    .local v2, columns:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adminUid=? AND "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "=? "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2136
    .local v3, where:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    aput-object p4, v4, v1

    .line 2139
    .local v4, whereArgs:[Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 2147
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v9

    .line 2140
    :catch_0
    move-exception v10

    .line 2141
    .local v10, e:Ljava/lang/Exception;
    const/4 v1, 0x6

    :try_start_1
    const-string v5, "EdmStorageHelper"

    const-string v6, "Failed on getValueByAdminAndField"

    invoke-static {v1, v5, v6}, Lcom/android/server/enterprise/Utils;->writeToLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 2142
    if-eqz v9, :cond_0

    .line 2143
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2144
    const/4 v9, 0x0

    goto :goto_0

    .line 2129
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getValues(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 11
    .parameter "sTableName"
    .parameter "sAdmin"
    .parameter "columns"

    .prologue
    const/4 v5, 0x0

    .line 1934
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1935
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1936
    .local v9, cv:Landroid/content/ContentValues;
    const-string v3, "adminUid=? "

    .line 1937
    .local v3, where:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v4, v1

    .local v4, whereArgs:[Ljava/lang/String;
    move-object v1, p1

    move-object v2, p3

    move-object v6, v5

    move-object v7, v5

    .line 1940
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1941
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 1942
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1943
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    if-ge v10, v1, :cond_0

    .line 1944
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1943
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1947
    .end local v10           #i:I
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1949
    :cond_1
    return-object v9
.end method

.method getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .parameter "sTableName"
    .parameter "columns"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1958
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1959
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .local v10, cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    .line 1960
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1961
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_4

    .line 1962
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1963
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 1965
    :cond_0
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1966
    .local v9, cv:Landroid/content/ContentValues;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    if-ge v11, v1, :cond_1

    .line 1967
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1966
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1969
    :cond_1
    invoke-virtual {v9}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1970
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1972
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1974
    .end local v9           #cv:Landroid/content/ContentValues;
    .end local v11           #i:I
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1976
    :cond_4
    return-object v10
.end method

.method getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    .locals 18
    .parameter "sTableName"
    .parameter "columns"
    .parameter "cvValues"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1986
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1987
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1990
    .local v11, cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-nez p3, :cond_1

    .line 1991
    const/4 v11, 0x0

    .line 2029
    .end local v11           #cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_0
    :goto_0
    return-object v11

    .line 1993
    .restart local v11       #cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->size()I

    move-result v2

    new-array v5, v2, [Ljava/lang/String;

    .line 1994
    .local v5, whereArgs:[Ljava/lang/String;
    const/16 v17, 0x0

    .line 1995
    .local v17, where:Ljava/lang/StringBuilder;
    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v16

    .line 1996
    .local v16, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v14, 0x0

    .line 1998
    .local v14, index:I
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 2000
    .local v15, key:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v17, :cond_2

    .line 2001
    new-instance v17, Ljava/lang/StringBuilder;

    .end local v17           #where:Ljava/lang/StringBuilder;
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 2002
    .restart local v17       #where:Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2006
    :goto_2
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v14

    .line 2007
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 2004
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2010
    .end local v15           #key:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    if-eqz v17, :cond_0

    .line 2011
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2013
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 2014
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2015
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_7

    .line 2017
    :cond_4
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 2018
    .local v10, cv:Landroid/content/ContentValues;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_3
    invoke-interface {v9}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    if-ge v12, v2, :cond_5

    .line 2019
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2018
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 2021
    :cond_5
    invoke-virtual {v10}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 2022
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2024
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2026
    .end local v10           #cv:Landroid/content/ContentValues;
    .end local v12           #i:I
    :cond_7
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method getValuesListBiggerThan(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    .locals 18
    .parameter "sTableName"
    .parameter "columns"
    .parameter "cvValues"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2040
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2041
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2044
    .local v11, cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-nez p3, :cond_1

    .line 2083
    :cond_0
    :goto_0
    return-object v11

    .line 2047
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->size()I

    move-result v2

    new-array v5, v2, [Ljava/lang/String;

    .line 2048
    .local v5, whereArgs:[Ljava/lang/String;
    const/16 v17, 0x0

    .line 2049
    .local v17, where:Ljava/lang/StringBuilder;
    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v16

    .line 2050
    .local v16, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v14, 0x0

    .line 2052
    .local v14, index:I
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 2054
    .local v15, key:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v17, :cond_2

    .line 2055
    new-instance v17, Ljava/lang/StringBuilder;

    .end local v17           #where:Ljava/lang/StringBuilder;
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 2056
    .restart local v17       #where:Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2060
    :goto_2
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v14

    .line 2061
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 2058
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2064
    .end local v15           #key:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    if-eqz v17, :cond_0

    .line 2065
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2067
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 2068
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2069
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_7

    .line 2071
    :cond_4
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 2072
    .local v10, cv:Landroid/content/ContentValues;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_3
    invoke-interface {v9}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    if-ge v12, v2, :cond_5

    .line 2073
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2072
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 2075
    :cond_5
    invoke-virtual {v10}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 2076
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2078
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2080
    .end local v10           #cv:Landroid/content/ContentValues;
    .end local v12           #i:I
    :cond_7
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method insertData(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 5
    .parameter "sTableName"
    .parameter "cv"

    .prologue
    .line 2603
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2604
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 2605
    const/4 v1, 0x1

    .line 2607
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method insertOrUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "sTableName"
    .parameter "sAdmin"
    .parameter "sColumn"
    .parameter "sValue"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 1737
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1738
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1740
    .local v0, cv:Landroid/content/ContentValues;
    invoke-virtual {v0, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1742
    const-string v6, "0"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1743
    const-string v2, "adminUid=? "

    .line 1744
    .local v2, where:Ljava/lang/String;
    new-array v3, v4, [Ljava/lang/String;

    aput-object p2, v3, v5

    .line 1747
    .local v3, whereArgs:[Ljava/lang/String;
    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_2

    .line 1765
    .end local v2           #where:Ljava/lang/String;
    .end local v3           #whereArgs:[Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 1752
    :cond_1
    invoke-virtual {v1, p1, v0, v7, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-gtz v6, :cond_0

    .line 1758
    :cond_2
    const-string v6, "0"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1759
    const-string v6, "adminUid"

    invoke-virtual {v0, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1762
    :cond_3
    invoke-virtual {v1, p1, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    move v4, v5

    .line 1765
    goto :goto_0
.end method

.method insertOrUpdateGenericTable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "Name"
    .parameter "Value"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2356
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2357
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2358
    .local v0, cv:Landroid/content/ContentValues;
    const-string v2, "name=? "

    .line 2359
    .local v2, where:Ljava/lang/String;
    new-array v3, v4, [Ljava/lang/String;

    aput-object p1, v3, v5

    .line 2362
    .local v3, whereArgs:[Ljava/lang/String;
    const-string v6, "value"

    invoke-virtual {v0, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2363
    const-string v6, "generic"

    invoke-virtual {v1, v6, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_1

    .line 2370
    :cond_0
    :goto_0
    return v4

    .line 2366
    :cond_1
    const-string v6, "name"

    invoke-virtual {v0, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2367
    const-string v6, "generic"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    move v4, v5

    .line 2370
    goto :goto_0
.end method

.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 101
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->setForeignKeyConstraintsEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    const-string v2, "Foreign Key Config failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 109
    const-string v1, "EDM"

    const-string v2, "onCreate.... do database"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :try_start_0
    const-string v1, "CREATE TABLE ADMIN ( adminUid INTEGER PRIMARY KEY NOT NULL, adminName TEXT NOT NULL, canRemove NUMERIC NOT NULL);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :try_start_1
    const-string v1, "CREATE TABLE APPLICATION( packageName TEXT NOT NULL, adminUid INTEGER NOT NULL, applicationInstallationCount INTEGER UNSIGNED DEFAULT 0, applicationUninstallationCount INTEGER UNSIGNED DEFAULT 0, managedApp INTEGER UNSIGNED DEFAULT 0, install_sourceMDM INTEGER UNSIGNED DEFAULT 0, controlState INTEGER UNSIGNED DEFAULT 0,  PRIMARY KEY (packageName,adminUid)  FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 134
    const-string v1, "CREATE TRIGGER applicationPolicy_FKIndex  BEFORE INSERT  ON APPLICATION FOR EACH ROW BEGIN SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 145
    :goto_0
    :try_start_2
    const-string v1, "CREATE TABLE APPLICATION_PERMISSION( permission TEXT NOT NULL, adminUid INTEGER NOT NULL,  PRIMARY KEY (permission,adminUid)  FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 152
    const-string v1, "CREATE TRIGGER applicationPermissionPolicy_FKIndex  BEFORE INSERT  ON APPLICATION_PERMISSION FOR EACH ROW BEGIN SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 163
    :goto_1
    :try_start_3
    const-string v1, "CREATE TABLE APPLICATION_SIGNATURE( signature TEXT NOT NULL, adminUid INTEGER NOT NULL,  PRIMARY KEY (signature,adminUid)  FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 170
    const-string v1, "CREATE TRIGGER applicationSignaturePolicy_FKIndex  BEFORE INSERT  ON APPLICATION_SIGNATURE FOR EACH ROW BEGIN SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 180
    :goto_2
    invoke-static {p1}, Lcom/android/server/enterprise/EdmStorageHelper;->createAppGeneralTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 184
    :try_start_4
    const-string v1, "CREATE TABLE APPLICATION_MISC( adminUid INTEGER PRIMARY KEY NOT NULL, widgetWhitelistEnabled NUMERIC DEFAULT 0, appNotificationMode NUMERIC DEFAULT 2,  FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 194
    const-string v1, "CREATE TRIGGER applicationMiscPolicy_FKIndex  BEFORE INSERT  ON APPLICATION_MISC FOR EACH ROW BEGIN SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 209
    :goto_3
    :try_start_5
    const-string v1, "CREATE TABLE EAS ( adminUid INTEGER PRIMARY KEY NOT NULL, passwordRecoverable NUMERIC DEFAULT 0, easPasswordExpires INTEGER UNSIGNED DEFAULT 0, passwordHistory INTEGER UNSIGNED DEFAULT 0, attachmentsEnabled NUMERIC DEFAULT 1, maxAttachmentSize INTEGER UNSIGNED DEFAULT 0, allowStorageCard NUMERIC DEFAULT 0, allowBrowser NUMERIC DEFAULT 1, allowTextMessaging NUMERIC DEFAULT 1, allowPOPIMAPEmail NUMERIC DEFAULT 1, allowHTMLEmail NUMERIC DEFAULT 1, requireManualSyncRoaming NUMERIC DEFAULT 1, minPasswordComplexChars INTEGER UNSIGNED DEFAULT 0, maxCalendarAge INTEGER UNSIGNED DEFAULT 7, maxEmailAge INTEGER UNSIGNED DEFAULT 3, maxEmailBodyTruncSize INTEGER UNSIGNED DEFAULT 3, maxHtmlEmailBodyTruncSize INTEGER UNSIGNED DEFAULT 3, requireSignedSMIMEMessages NUMERIC DEFAULT 1, requireEncryptedSMIMEMessages NUMERIC DEFAULT 0, requireSignedSMIMEAlgorithm NUMERIC DEFAULT 0, requireEncryptionSMIMEAlgorithm NUMERIC DEFAULT 0, allowSMIMEEncryptionAlgorithmNegotiation NUMERIC DEFAULT 1, allowSMIMESoftCerts NUMERIC DEFAULT 1, allowDesktopSync NUMERIC DEFAULT 1, allowIrDA NUMERIC DEFAULT 1, requireDeviceEncryption NUMERIC DEFAULT 0, requireStorageCardEncryption NUMERIC DEFAULT 0, FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 312
    const-string v1, "CREATE TRIGGER EAS_FKIndex  BEFORE INSERT  ON EAS FOR EACH ROW BEGIN  SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 332
    :goto_4
    :try_start_6
    const-string v1, "CREATE TABLE LOCATION( adminUid INTEGER PRIMARY KEY NOT NULL, blockedProviders TEXT NULL, forceProviders NUMERIC DEFAULT 0, FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 341
    const-string v1, "CREATE TRIGGER locationPolicy_FKIndex  BEFORE INSERT  ON LOCATION FOR EACH ROW BEGIN  SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 358
    :goto_5
    :try_start_7
    const-string v1, "CREATE TABLE RESTRICTION( adminUid INTEGER PRIMARY KEY NOT NULL, usbTetheringEnabled NUMERIC DEFAULT 1, wifiTetheringEnabled NUMERIC DEFAULT 1, bluetoothTetheringEnabled NUMERIC DEFAULT 1, nfcEnabled NUMERIC DEFAULT 1, factoryresetallowed NUMERIC DEFAULT 1, homeKeyEnabled NUMERIC DEFAULT 1, microphoneEnabled NUMERIC DEFAULT 1, cameraEnabled NUMERIC DEFAULT 1, usbDebuggingEnabled NUMERIC DEFAULT 1, screenCaptureEnabled NUMERIC DEFAULT 1, massStorageEnabled NUMERIC DEFAULT 1, mockLocationEnabled NUMERIC DEFAULT 1, backupEnabled NUMERIC DEFAULT 1, cellularDataEnabled NUMERIC DEFAULT 1, allowSettingsChanges NUMERIC DEFAULT 1, sdCardEnabled NUMERIC DEFAULT 1, clipboardEnabled NUMERIC DEFAULT 1, usbKiesEnabled NUMERIC DEFAULT 1, usbMediaPlayerEnabled NUMERIC DEFAULT 1, allowNonMarketApp NUMERIC DEFAULT 1, wallpaperEnabled NUMERIC DEFAULT 1, statusBarExpansionEnabled NUMERIC DEFAULT 1, powerOffAllowed NUMERIC DEFAULT 1, MarketNetworkType NUMERIC DEFAULT 0, backgroundDataEnabled NUMERIC DEFAULT 1, nativeVpnAllowed NUMERIC DEFAULT 1, OTAUpgradeEnabled NUMERIC DEFAULT 1, DateTimeEnabled NUMERIC DEFAULT 1, googleCrashReportEnabled NUMERIC DEFAULT 1, sdCardWriteEnabled NUMERIC DEFAULT 1, FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 449
    const-string v1, "CREATE TRIGGER restrictionPolicy_FKIndex  BEFORE INSERT  ON RESTRICTION FOR EACH ROW BEGIN  SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 466
    :goto_6
    :try_start_8
    const-string v1, "CREATE TABLE PASSWORD( adminUid INTEGER PRIMARY KEY NOT NULL, unlockDelay NUMERIC DEFAULT -1, passwordChangeTimeout NUMERIC DEFAULT -1, passwordAttemptDeviceDisable NUMERIC DEFAULT 0, passwordMaximumNumericSequenceLength NUMERIC DEFAULT 0, passwordForbiddenStrings TEXT NULL, passwordMaximumCharacterOccurences NUMERIC DEFAULT 0, passwordRequiredPattern TEXT NULL, screenLockPatternVisibility NUMERIC DEFAULT 1, FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 481
    const-string v1, "CREATE TRIGGER passwordPolicy_FKIndex  BEFORE INSERT  ON PASSWORD FOR EACH ROW BEGIN  SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 498
    :goto_7
    :try_start_9
    const-string v1, "CREATE TABLE MISC( adminUid INTEGER PRIMARY KEY NOT NULL, CallingLogEnabled NUMERIC DEFAULT 0, smsLogEnabled NUMERIC DEFAULT 0, enableWifiDataStatistic NUMERIC DEFAULT 0, miscDataStatisticTimer INTEGER DEFAULT 3, FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 510
    const-string v1, "CREATE TRIGGER miscPolicy_FKIndex  BEFORE INSERT  ON MISC FOR EACH ROW BEGIN  SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 527
    :goto_8
    :try_start_a
    const-string v1, "CREATE TABLE SMS( smsType NUMERIC DEFAULT -1, smsTimeStamp TEXT NULL , smsAddress TEXT NULL , smsBody TEXT NULL );"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 536
    :goto_9
    :try_start_b
    const-string v1, "CREATE TABLE ROAMING( adminUid INTEGER PRIMARY KEY NOT NULL, roamingSyncEnabled NUMERIC DEFAULT 1, roamingPushEnabled NUMERIC DEFAULT 1, roamingDataEnabled NUMERIC DEFAULT 1, roamingVoiceCallsEnabled NUMERIC DEFAULT 1, FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 550
    const-string v1, "CREATE TRIGGER RoamingPolicy_FKIndex BEFORE INSERT  ON ROAMING FOR EACH ROW BEGIN  SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 569
    :goto_a
    :try_start_c
    const-string v1, "CREATE TABLE VPN( adminUid INTEGER NOT NULL, VpnID NUMERIC PRIMARY KEY NOT NULL, UsrName TEXT NULL, UsrPwd TEXT NULL,  FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 577
    const-string v1, "CREATE TRIGGER VpnPolicy_FKIndex  BEFORE INSERT  ON VPN FOR EACH ROW BEGIN  SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    .line 588
    :goto_b
    :try_start_d
    const-string v1, "CREATE TABLE WIFI ( adminUid INTEGER PRIMARY KEY NOT NULL, blockedSSIDList TEXT NULL, allowUserChanges NUMERIC DEFAULT 1, passwordHidden NUMERIC DEFAULT 0, promptCredentials NUMERIC DEFAULT 1, minimumRequiredSecurity NUMERIC DEFAULT 0, allowWifi NUMERIC DEFAULT 1, allowUserProfiles NUMERIC DEFAULT 1, allowWifiApSettingModification NUMERIC DEFAULT 1, wifiSsidRestriction NUMERIC DEFAULT 0, tlsCertificateSecurityLevel NUMERIC DEFAULT 0, FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 612
    const-string v1, "CREATE TRIGGER wifiPolicy_FKIndex  BEFORE INSERT  ON WIFI FOR EACH ROW BEGIN  SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END; END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    .line 622
    :goto_c
    invoke-static {p1}, Lcom/android/server/enterprise/EdmStorageHelper;->createWifiSsidBlackWhiteListTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 624
    :try_start_e
    const-string v1, "CREATE TABLE WIFI_CONF( adminUid INTEGER NOT NULL, networkSSID TEXT PRIMARY KEY NOT NULL, networkBSSID TEXT NULL, networkKeyMgmt TEXT NULL, networkAuthAlg TEXT NULL, networkAllowedProtos TEXT NULL, networkAllowedPairwiseCiphers TEXT NULL, networkAllowedGroupProtocols TEXT NULL, networkWEPKeyId NUMERIC DEFAULT 0, networkWEPKey1 TEXT NULL, networkWEPKey2 TEXT NULL, networkWEPKey3 TEXT NULL, networkWEPKey4 TEXT NULL, networkPSK TEXT NULL, networkEAP TEXT NULL, networkPhase1 TEXT NULL, networkPhase2 TEXT NULL, networkPacFile TEXT NULL, networkIdentity TEXT NULL, networkAnonymousId TEXT NULL, networkPassword TEXT NULL, networkClientCertification TEXT NULL, networkPrivateKey TEXT NULL, networkCaCertificate TEXT NULL, networkStaticIpEnabled NUMERIC DEFAULT 0, networkStaticIp TEXT NULL, networkStaticGateway TEXT NULL, networkStaticPrimaryDns TEXT NULL, networkStaticSecondaryDns TEXT NULL, networkStaticSubnetMask TEXT NULL,  FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 696
    const-string v1, "CREATE TRIGGER WifiConfigurationPolicy_FKIndex  BEFORE INSERT  ON WIFI_CONF FOR EACH ROW BEGIN  SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    .line 707
    :goto_d
    :try_start_f
    const-string v1, "CREATE TABLE BLUETOOTH( adminUid INTEGER PRIMARY KEY NOT NULL, bluetoothEnabled NUMERIC DEFAULT 1, bluetoothLogEnabled NUMERIC DEFAULT 0, allowDataTransfer NUMERIC DEFAULT 1, pairingEnabled NUMERIC DEFAULT 1, allowOutgoingCalls NUMERIC DEFAULT 1, limitedDiscoverableEnabled NUMERIC DEFAULT 1, discoverableModeEnabled NUMERIC DEFAULT 1, desktopConnectivityEnabled NUMERIC DEFAULT 1, profileSettings INTEGER UNSIGNED DEFAULT 65535, profilePolicyEnabled NUMERIC DEFAULT 0, devicePolicyEnabled NUMERIC DEFAULT 0, FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 739
    const-string v1, "CREATE TRIGGER bluetoothPolicy_FKIndex  BEFORE INSERT  ON BLUETOOTH FOR EACH ROW BEGIN  SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    .line 749
    :goto_e
    const-string v1, "BLUETOOTH_DEVICE_BWLIST"

    invoke-static {v1, p1}, Lcom/android/server/enterprise/EdmStorageHelper;->createBlackWhiteListPolicyTables(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 750
    const-string v1, "BLUETOOTH_PROFILE_BWLIST"

    invoke-static {v1, p1}, Lcom/android/server/enterprise/EdmStorageHelper;->createBlackWhiteListPolicyTables(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 753
    :try_start_10
    const-string v1, "CREATE TABLE BROWSER( adminUid INTEGER PRIMARY KEY NOT NULL, browserSettings INTEGER UNSIGNED DEFAULT 23, FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 760
    const-string v1, "CREATE TRIGGER browserPolicy_FKIndex  BEFORE INSERT  ON BROWSER FOR EACH ROW BEGIN  SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10

    .line 771
    :goto_f
    :try_start_11
    const-string v1, "CREATE TABLE CALLING( adminUid INTEGER PRIMARY KEY NOT NULL, lastChangeId INTEGER DEFAULT 0, isSet NUMERIC DEFAULT 0, cbPwd TEXT DEFAULT NULL, AI NUMERIC DEFAULT 0, IR NUMERIC DEFAULT 0, AO NUMERIC DEFAULT 0, OI NUMERIC DEFAULT 0, OX NUMERIC DEFAULT 0, cfBusy TEXT DEFAULT NULL, cfNoReply TEXT DEFAULT NULL, cfNotReachable TEXT DEFAULT NULL, cfUnconditional TEXT DEFAULT NULL, cfBusyEnabled NUMERIC DEFAULT 0, cfNoReplyEnabled NUMERIC DEFAULT 0, cfNotReachableEnabled NUMERIC DEFAULT 0, cfUnconditionalEnabled NUMERIC DEFAULT 0, FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 794
    const-string v1, "CREATE TRIGGER callingPolicy_FKIndex  BEFORE INSERT  ON CALLING FOR EACH ROW BEGIN  SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_11

    .line 805
    :goto_10
    :try_start_12
    const-string v1, "CREATE TABLE PHONERESTRICTION( adminUid INTEGER PRIMARY KEY NOT NULL, outgoingPattern TEXT DEFAULT NULL, incomingPattern TEXT DEFAULT NULL, emergencyCallOnly NUMERIC DEFAULT 0, limitCallEnable NUMERIC DEFAULT false, incomingCallByDay NUMERIC DEFAULT 0, incomingCallByWeek NUMERIC DEFAULT 0, incomingCallByMonth NUMERIC DEFAULT 0, outgoingCallByDay NUMERIC DEFAULT 0, outgoingCallByWeek NUMERIC DEFAULT 0, outgoingCallByMonth NUMERIC DEFAULT 0, smsRestrictionIncomingPattern TEXT DEFAULT NULL, smsRestrictionOutgoingPattern TEXT DEFAULT NULL, limitSmsEnable NUMERIC DEFAULT 0, incomingSmsByDay NUMERIC DEFAULT 0, incomingSmsByWeek NUMERIC DEFAULT 0, incomingSmsByMonth NUMERIC DEFAULT 0, outgoingSmsByDay NUMERIC DEFAULT 0, outgoingSmsByWeek NUMERIC DEFAULT 0, outgoingSmsByMonth NUMERIC DEFAULT 0, enableWifiDataCallDataStatistic NUMERIC DEFAULT 0, enableDataCallLogging NUMERIC DEFAULT 0, enableLimitDataCall NUMERIC DEFAULT 0, dataCallByDay INTEGER DEFAULT 0, dataCallByWeek INTEGER DEFAULT 0, dataCallByMonth INTEGER DEFAULT 0, allowIncomingSms NUMERIC DEFAULT 1, allowOutgoingSms NUMERIC DEFAULT 1, allowIncomingMms NUMERIC DEFAULT 1, allowOutgoingMms NUMERIC DEFAULT 1, FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 915
    const-string v1, "CREATE TRIGGER phoneRestrictionPolicy_FKIndex  BEFORE INSERT  ON PHONERESTRICTION FOR EACH ROW BEGIN  SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_12

    .line 926
    :goto_11
    :try_start_13
    const-string v1, "CREATE TABLE DEVICE( deviceWifiSent INTEGER DEFAULT 0, deviceWifiReceived INTEGER DEFAULT 0, deviceNetworkSent INTEGER DEFAULT 0, deviceNetworkReceived INTEGER DEFAULT 0);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_13

    .line 937
    :goto_12
    :try_start_14
    const-string v1, "CREATE TABLE DATACALLLOG( dataCallDate INTEGER PRIMARY KEY NOT NULL, dataCallStatus TEXT DEFAULT NULL, dataCallNetType TEXT DEFAULT NULL, dataCallBytes INTEGER DEFAULT 0 );"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_14

    .line 947
    :goto_13
    :try_start_15
    const-string v1, "CREATE TABLE generic (name TEXT PRIMARY KEY,value TEXT NULL);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_15

    .line 955
    :goto_14
    :try_start_16
    const-string v1, "CREATE TABLE CallingLog (callingType NUMERIC DEFAULT -1, callingTimeStamp TEXT NULL, callingAddress TEXT NULL, callingDuration TEXT NULL, callingStatus TEXT NULL);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_16

    .line 967
    :goto_15
    :try_start_17
    const-string v1, "EDM"

    const-string v2, "onCreate.... do database before create do firewall"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    const-string v1, "CREATE TABLE FirewallTable (adminUid TEXT, rules TEXT,type TEXT, enabled TEXT, ruleId INTEGER PRIMARY KEY AUTOINCREMENT, timestamp INTEGER, FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 978
    const-string v1, "CREATE TRIGGER firewallPolicy_FKIndex  BEFORE INSERT  ON FirewallTable FOR EACH ROW BEGIN  SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_17

    .line 1010
    :goto_16
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EdmStorageHelper;->createAppPermissionControlTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1013
    invoke-static {p1}, Lcom/android/server/enterprise/EdmStorageHelper;->createKioskTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1017
    :try_start_18
    const-string v1, "CREATE TABLE WebFilterTable (adminUid TEXT, url TEXT, id INTEGER PRIMARY KEY AUTOINCREMENT,  FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1023
    const-string v1, "CREATE TRIGGER webFilterPolicy_FKIndex  BEFORE INSERT  ON WebFilterTable FOR EACH ROW BEGIN  SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_18

    .line 1036
    :goto_17
    :try_start_19
    const-string v1, "CREATE TABLE WebFilterLogTable (url TEXT, time TEXT, id INTEGER PRIMARY KEY AUTOINCREMENT );"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1041
    const-string v1, "CREATE TRIGGER webFilterLoggingPolicy_TbSize  AFTER INSERT  ON WebFilterLogTable WHEN (SELECT COUNT(*) FROM WebFilterLogTable) > 1000  BEGIN  DELETE FROM WebFilterLogTable WHERE id = (SELECT id FROM WebFilterLogTable ORDER BY id LIMIT 1); END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_19

    .line 1059
    :goto_18
    :try_start_1a
    const-string v1, "CREATE TABLE WebFilterSettingsTable (adminUid TEXT, logging TEXT DEFAULT \'false\', filtering TEXT DEFAULT \'false\', id INTEGER PRIMARY KEY AUTOINCREMENT,  FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1066
    const-string v1, "CREATE TRIGGER webFilterSettingsPolicy_FKIndex  BEFORE INSERT  ON WebFilterSettingsTable FOR EACH ROW BEGIN  SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_1a

    .line 1079
    :goto_19
    :try_start_1b
    const-string v1, "CREATE TABLE BluetoothLogTable (time TEXT, log TEXT, id INTEGER PRIMARY KEY AUTOINCREMENT );"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1084
    const-string v1, "CREATE TRIGGER bluetoothLoggingPolicy_TbSize  AFTER INSERT  ON BluetoothLogTable WHEN (SELECT COUNT(*) FROM BluetoothLogTable) > 1000  BEGIN  DELETE FROM BluetoothLogTable WHERE id = (SELECT id FROM BluetoothLogTable ORDER BY id LIMIT 1); END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1b

    .line 1102
    :goto_1a
    :try_start_1c
    const-string v1, "CREATE TABLE EmailSettingsTable (adminUid INTEGER NOT NULL, EmailAddress TEXT NOT NULL, EmailReqSigSmime NUMERIC DEFAULT 0, EmailReqEncryptSmime NUMERIC DEFAULT 0, EmailSigningCertName TEXT NULL, EmailEncryptCertName TEXT NULL, EmailAllowForward NUMERIC DEFAULT 1,  PRIMARY KEY (EmailAddress,adminUid)  FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1117
    const-string v1, "CREATE TRIGGER emailPolicy_FKIndex  BEFORE INSERT  ON EmailSettingsTable FOR EACH ROW BEGIN  SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1c

    .line 1130
    :goto_1b
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADMINcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 140
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 141
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APPLICATIONcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 158
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 159
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APPLICATION_PERMISSIONcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 176
    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 177
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APPLICATION_SIGNATUREcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 200
    .end local v0           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 201
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APPLICATION_MISC creation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 327
    .end local v0           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v0

    .line 328
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EAScreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 353
    .end local v0           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v0

    .line 354
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LOCATIONcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 461
    .end local v0           #e:Ljava/lang/Exception;
    :catch_7
    move-exception v0

    .line 462
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RESTRICTIONcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 493
    .end local v0           #e:Ljava/lang/Exception;
    :catch_8
    move-exception v0

    .line 494
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PASSWORDcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 522
    .end local v0           #e:Ljava/lang/Exception;
    :catch_9
    move-exception v0

    .line 523
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MISCcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 531
    .end local v0           #e:Ljava/lang/Exception;
    :catch_a
    move-exception v0

    .line 532
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMScreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 564
    .end local v0           #e:Ljava/lang/Exception;
    :catch_b
    move-exception v0

    .line 565
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ROAMINGcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 583
    .end local v0           #e:Ljava/lang/Exception;
    :catch_c
    move-exception v0

    .line 584
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VPNcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 618
    .end local v0           #e:Ljava/lang/Exception;
    :catch_d
    move-exception v0

    .line 619
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WIFIcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 702
    .end local v0           #e:Ljava/lang/Exception;
    :catch_e
    move-exception v0

    .line 703
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WIFI_CONFcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 745
    .end local v0           #e:Ljava/lang/Exception;
    :catch_f
    move-exception v0

    .line 746
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BLUETOOTHcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 766
    .end local v0           #e:Ljava/lang/Exception;
    :catch_10
    move-exception v0

    .line 767
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BROWSERcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 800
    .end local v0           #e:Ljava/lang/Exception;
    :catch_11
    move-exception v0

    .line 801
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CALLINGcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 921
    .end local v0           #e:Ljava/lang/Exception;
    :catch_12
    move-exception v0

    .line 922
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PHONERESTRICTIONcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 931
    .end local v0           #e:Ljava/lang/Exception;
    :catch_13
    move-exception v0

    .line 932
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEVICEcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 942
    .end local v0           #e:Ljava/lang/Exception;
    :catch_14
    move-exception v0

    .line 943
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DATACALLLOGcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 950
    .end local v0           #e:Ljava/lang/Exception;
    :catch_15
    move-exception v0

    .line 951
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "genericcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 961
    .end local v0           #e:Ljava/lang/Exception;
    :catch_16
    move-exception v0

    .line 962
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallingLogcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 987
    .end local v0           #e:Ljava/lang/Exception;
    :catch_17
    move-exception v0

    .line 988
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "EDM"

    const-string v2, "onCreate.... error creating firewall db"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FirewallTablecreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 1031
    .end local v0           #e:Ljava/lang/Exception;
    :catch_18
    move-exception v0

    .line 1032
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_17

    .line 1054
    .end local v0           #e:Ljava/lang/Exception;
    :catch_19
    move-exception v0

    .line 1055
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_18

    .line 1074
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1a
    move-exception v0

    .line 1075
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_19

    .line 1097
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1b
    move-exception v0

    .line 1098
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1a

    .line 1126
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1c
    move-exception v0

    .line 1127
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1b
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 1133
    const-string v0, "EdmStorageHelper"

    const-string v1, "Downgrading not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 1141
    const-string v0, "EdmStorageHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpgrade : from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    .line 1144
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EdmStorageHelper;->migrateFromV2ToV2_1(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1146
    :cond_0
    const/4 v0, 0x4

    if-ge p2, v0, :cond_1

    .line 1147
    const-string v0, "EdmStorageHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpgrade : Upgrading from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EdmStorageHelper;->migrateFromV2_1ToV2_2(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1151
    :cond_1
    const/4 v0, 0x5

    if-ge p2, v0, :cond_2

    .line 1153
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EdmStorageHelper;->migrateFromV2_2ToV3_0(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1155
    :cond_2
    return-void
.end method

.method putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 14
    .parameter "sTableName"
    .parameter "sColumns"
    .parameter "sValues"
    .parameter "cv"

    .prologue
    .line 2501
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 2503
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 2504
    const/4 v9, 0x0

    .line 2505
    .local v9, where:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 2506
    .local v3, buf:Ljava/lang/StringBuffer;
    move-object/from16 v2, p2

    .local v2, arr$:[Ljava/lang/String;
    array-length v8, v2

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v4, v2, v7

    .line 2507
    .local v4, column:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "= ? AND "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2506
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2509
    .end local v4           #column:Ljava/lang/String;
    :cond_0
    const/4 v10, 0x0

    const-string v11, " AND "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 2511
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v5, p1, v0, v9, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_1

    .line 2512
    const/4 v10, 0x1

    .line 2522
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v3           #buf:Ljava/lang/StringBuffer;
    .end local v5           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v9           #where:Ljava/lang/String;
    :goto_1
    return v10

    .line 2516
    .restart local v5       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    const/4 v10, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v5, p1, v10, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-eqz v10, :cond_2

    .line 2517
    const/4 v10, 0x1

    goto :goto_1

    .line 2519
    .end local v5           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v6

    .line 2520
    .local v6, e:Ljava/lang/Exception;
    const-string v10, "EdmStorageHelper"

    const-string v11, "could not execute putDataByFields"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2522
    .end local v6           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v10, 0x0

    goto :goto_1
.end method

.method putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 8
    .parameter "sTableName"
    .parameter "cvValues"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1862
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1863
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, p1, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1

    .line 1874
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    :goto_0
    return v2

    .line 1866
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v0, p1, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    move v2, v3

    .line 1869
    goto :goto_0

    .line 1870
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v1

    .line 1871
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x6

    const-string v4, "EDM"

    const-string v5, "Failled on putValues(String sTableName, ContentValues cvValues)"

    invoke-static {v2, v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(ILjava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 1874
    goto :goto_0
.end method

.method putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    .locals 12
    .parameter "sTableName"
    .parameter "cvUpdateValues"
    .parameter "cvWhereValues"

    .prologue
    .line 1886
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1888
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 1889
    const/4 v8, 0x0

    .line 1924
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return v8

    .line 1891
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 1892
    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v8

    new-array v7, v8, [Ljava/lang/String;

    .line 1893
    .local v7, whereArgs:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1894
    .local v6, where:Ljava/lang/StringBuilder;
    invoke-virtual {p3}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v5

    .line 1895
    .local v5, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v3, 0x0

    .line 1897
    .local v3, index:I
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1899
    .local v4, key:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v6, :cond_1

    .line 1900
    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6           #where:Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1901
    .restart local v6       #where:Ljava/lang/StringBuilder;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "=?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1905
    :goto_2
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    .line 1906
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1903
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "=?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1920
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #index:I
    .end local v4           #key:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v6           #where:Ljava/lang/StringBuilder;
    .end local v7           #whereArgs:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1921
    .local v1, e:Ljava/lang/Exception;
    const/4 v8, 0x6

    const-string v9, "EDM"

    const-string v10, "Failed on putValues(String sTableName, ContentValues cvUpdateValues, ContentValues cvWhereValues)"

    invoke-static {v8, v9, v10}, Lcom/android/server/enterprise/Utils;->writeToLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 1924
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1908
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #index:I
    .restart local v5       #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v6       #where:Ljava/lang/StringBuilder;
    .restart local v7       #whereArgs:[Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    .line 1909
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, p1, p2, v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_4

    .line 1910
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 1913
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1916
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #index:I
    .end local v5           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v6           #where:Ljava/lang/StringBuilder;
    .end local v7           #whereArgs:[Ljava/lang/String;
    :cond_4
    const/4 v8, 0x0

    invoke-virtual {v0, p1, v8, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_5

    .line 1917
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 1919
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method putValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 10
    .parameter "sTableName"
    .parameter "sAdmin"
    .parameter "cvValues"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1835
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1836
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "adminUid=? "

    .line 1837
    .local v2, where:Ljava/lang/String;
    const/4 v6, 0x1

    new-array v3, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v3, v6

    .line 1840
    .local v3, whereArgs:[Ljava/lang/String;
    invoke-virtual {v0, p1, p3, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_1

    .line 1852
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #where:Ljava/lang/String;
    .end local v3           #whereArgs:[Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 1843
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #where:Ljava/lang/String;
    .restart local v3       #whereArgs:[Ljava/lang/String;
    :cond_1
    const-string v6, "adminUid"

    invoke-virtual {p3, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1844
    const/4 v6, 0x0

    invoke-virtual {v0, p1, v6, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    move v4, v5

    .line 1847
    goto :goto_0

    .line 1848
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #where:Ljava/lang/String;
    .end local v3           #whereArgs:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1849
    .local v1, e:Ljava/lang/Exception;
    const/4 v4, 0x6

    const-string v6, "EDM"

    const-string v7, "Failled on putValues(String sTableName, String sAdmin, ContentValues cvValues)"

    invoke-static {v4, v6, v7}, Lcom/android/server/enterprise/Utils;->writeToLog(ILjava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 1852
    goto :goto_0
.end method

.method putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 9
    .parameter "sTableName"
    .parameter "admin"
    .parameter "sColumn"
    .parameter "value"
    .parameter "cvValues"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2261
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2262
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adminUid=? AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2263
    .local v1, where:Ljava/lang/String;
    const/4 v5, 0x2

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    aput-object p4, v2, v3

    .line 2266
    .local v2, whereArgs:[Ljava/lang/String;
    invoke-virtual {v0, p1, p5, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_1

    .line 2275
    :cond_0
    :goto_0
    return v3

    .line 2270
    :cond_1
    const-string v5, "adminUid"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p5, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2271
    invoke-virtual {p5, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2272
    const/4 v5, 0x0

    invoke-virtual {v0, p1, v5, p5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    move v3, v4

    .line 2275
    goto :goto_0
.end method

.method putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 5
    .parameter "sTableName"
    .parameter "cvValues"

    .prologue
    .line 1819
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1821
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 1822
    const/4 v1, 0x1

    .line 1824
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method remove(Ljava/lang/String;)Z
    .locals 3
    .parameter "sTableName"

    .prologue
    const/4 v2, 0x0

    .line 2589
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2590
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 2591
    .local v1, result:Z
    invoke-virtual {v0, p1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 2592
    const/4 v1, 0x1

    .line 2594
    :cond_0
    return v1
.end method

.method removeAdmin(I)Z
    .locals 7
    .parameter "iAdmin"

    .prologue
    .line 2331
    const/4 v2, 0x0

    .line 2333
    .local v2, result:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2334
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "adminUid=? AND canRemove=? "

    .line 2336
    .local v3, where:Ljava/lang/String;
    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "1"

    aput-object v6, v4, v5

    .line 2337
    .local v4, whereArgs:[Ljava/lang/String;
    const-string v5, "ADMIN"

    invoke-virtual {v0, v5, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_0

    .line 2338
    const/4 v2, 0x1

    .line 2345
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :goto_0
    return v2

    .line 2340
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v4       #whereArgs:[Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 2342
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2343
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "EdmStorageHelper"

    const-string v6, "Failed on removeAdmin"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method removeByAdmin(Ljava/lang/String;I)Z
    .locals 6
    .parameter "sTableName"
    .parameter "admin"

    .prologue
    .line 2568
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2569
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "adminUid=? "

    .line 2570
    .local v2, where:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2574
    .local v3, whereArgs:[Ljava/lang/String;
    invoke-virtual {v0, p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    .line 2575
    const/4 v1, 0x1

    .line 2579
    .local v1, result:Z
    :goto_0
    return v1

    .line 2577
    .end local v1           #result:Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #result:Z
    goto :goto_0
.end method

.method removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "sTableName"
    .parameter "admin"
    .parameter "sColumn"
    .parameter "value"

    .prologue
    .line 2286
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2287
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adminUid=? AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2288
    .local v2, where:Ljava/lang/String;
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p4, v3, v4

    .line 2292
    .local v3, whereArgs:[Ljava/lang/String;
    invoke-virtual {v0, p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    .line 2293
    const/4 v1, 0x1

    .line 2297
    .local v1, result:Z
    :goto_0
    return v1

    .line 2295
    .end local v1           #result:Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #result:Z
    goto :goto_0
.end method

.method removeByFields(Ljava/lang/String;Ljava/util/HashMap;)I
    .locals 8
    .parameter "sTableName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2669
    .local p2, fieldsAndValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2671
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 2672
    .local v1, columnName:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2674
    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 2675
    .local v5, where:Ljava/lang/StringBuffer;
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v7

    new-array v6, v7, [Ljava/lang/String;

    .line 2677
    .local v6, whereArgs:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 2680
    .local v3, i:I
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2681
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2682
    .local v0, column:Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2683
    const-string v7, " =? "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2684
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v6, v3

    .line 2685
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2686
    const-string v7, " AND "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2687
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2689
    .end local v0           #column:Ljava/lang/String;
    :cond_1
    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2691
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, p1, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    return v7
.end method

.method removeByFilterSmallerThan(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 12
    .parameter "sTableName"
    .parameter "cvValues"

    .prologue
    .line 2618
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2619
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    .line 2622
    .local v5, result:Z
    if-nez p2, :cond_1

    .line 2627
    :try_start_0
    const-string v9, "1"

    const/4 v10, 0x0

    invoke-virtual {v0, p1, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_0

    .line 2628
    const/4 v5, 0x1

    .line 2663
    :goto_0
    return v5

    .line 2630
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 2633
    :cond_1
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v9

    new-array v8, v9, [Ljava/lang/String;

    .line 2634
    .local v8, whereArgs:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 2635
    .local v7, where:Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v6

    .line 2636
    .local v6, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v3, 0x0

    .line 2638
    .local v3, index:I
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2640
    .local v4, key:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v7, :cond_2

    .line 2641
    new-instance v7, Ljava/lang/StringBuilder;

    .end local v7           #where:Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2642
    .restart local v7       #where:Ljava/lang/StringBuilder;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<=?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2646
    :goto_2
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 2647
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2644
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " AND "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<=?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2659
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #index:I
    .end local v4           #key:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v7           #where:Ljava/lang/StringBuilder;
    .end local v8           #whereArgs:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2660
    .local v1, e:Ljava/lang/Exception;
    const/4 v9, 0x6

    const-string v10, "EDM"

    const-string v11, "Failled on removeByFilter(String sTableName, ContentValues cvValues)"

    invoke-static {v9, v10, v11}, Lcom/android/server/enterprise/Utils;->writeToLog(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2649
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #index:I
    .restart local v6       #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v7       #where:Ljava/lang/StringBuilder;
    .restart local v8       #whereArgs:[Ljava/lang/String;
    :cond_3
    if-eqz v7, :cond_5

    .line 2650
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, p1, v9, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v9

    if-lez v9, :cond_4

    .line 2651
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2653
    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2656
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method select(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .parameter "sTableName"
    .parameter "sColumn"
    .parameter "sAdmin"

    .prologue
    .line 1775
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v11

    .line 1776
    .local v11, oldPolicy:Landroid/os/StrictMode$ThreadPolicy;
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1, v11}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1781
    const/4 v9, 0x0

    .line 1783
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1784
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v2, v1

    .line 1787
    .local v2, columns:[Ljava/lang/String;
    const-string v3, "adminUid=? "

    .line 1788
    .local v3, where:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v4, v1

    .line 1791
    .local v4, whereArgs:[Ljava/lang/String;
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 1792
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    move-result-object v9

    .line 1796
    :goto_0
    if-eqz v9, :cond_2

    .line 1797
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1798
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v1, v9

    .line 1811
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #columns:[Ljava/lang/String;
    :goto_1
    return-object v1

    .line 1794
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v4       #whereArgs:[Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0

    .line 1801
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1810
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #columns:[Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1811
    const/4 v1, 0x0

    goto :goto_1

    .line 1803
    :catch_0
    move-exception v10

    .line 1804
    .local v10, e:Ljava/lang/Exception;
    const/4 v1, 0x6

    const-string v5, "EDM"

    const-string v6, "Failed on Cursor select(String sTableName, String sColumn, String sAdmin)"

    invoke-static {v1, v5, v6}, Lcom/android/server/enterprise/Utils;->writeToLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 1806
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1807
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method select(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "tableName"
    .parameter "column"
    .parameter "value"
    .parameter "columnResult"

    .prologue
    .line 2467
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2468
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 2469
    .local v9, cursor:Landroid/database/Cursor;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p4, v2, v1

    .line 2472
    .local v2, columns:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "=? "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2473
    .local v3, where:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v4, v1

    .line 2476
    .local v4, whereArgs:[Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 2477
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    move-result-object v9

    .line 2481
    :goto_0
    if-eqz v9, :cond_2

    .line 2482
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 2491
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #columns:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    :goto_1
    return-object v9

    .line 2479
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v4       #whereArgs:[Ljava/lang/String;
    .restart local v9       #cursor:Landroid/database/Cursor;
    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0

    .line 2485
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2491
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #columns:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_2
    :goto_2
    const/4 v9, 0x0

    goto :goto_1

    .line 2487
    :catch_0
    move-exception v10

    .line 2488
    .local v10, e:Ljava/lang/Exception;
    const/4 v1, 0x6

    const-string v5, "EDM"

    const-string v6, "Cursor select(String tableName, String column, String value, String columnResult)"

    invoke-static {v1, v5, v6}, Lcom/android/server/enterprise/Utils;->writeToLog(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method select(Ljava/lang/String;[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 15
    .parameter "tablename"
    .parameter "returnColumns"
    .parameter
    .parameter "orderBy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 2698
    .local p3, fieldsAndValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2699
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    .line 2700
    .local v11, columnName:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 2702
    .local v13, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 2703
    .local v14, where:Ljava/lang/StringBuffer;
    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->size()I

    move-result v2

    new-array v5, v2, [Ljava/lang/String;

    .line 2705
    .local v5, whereArgs:[Ljava/lang/String;
    const/4 v12, 0x0

    .line 2707
    .local v12, i:I
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2708
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2709
    .local v10, column:Ljava/lang/String;
    invoke-virtual {v14, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2711
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v5, v12

    .line 2712
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2713
    const-string v2, " AND "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2714
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 2716
    .end local v10           #column:Ljava/lang/String;
    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 2717
    :cond_2
    const-string v2, ";"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2721
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2724
    :goto_1
    return-object v2

    :cond_3
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v8, p4

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_1
.end method

.method selectGenericTable(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .parameter "name"

    .prologue
    const/4 v12, 0x0

    .line 2380
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v11

    .line 2381
    .local v11, oldPolicy:Landroid/os/StrictMode$ThreadPolicy;
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1, v11}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2386
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2387
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "value"

    aput-object v5, v2, v1

    .line 2390
    .local v2, columns:[Ljava/lang/String;
    const-string v3, "name=? "

    .line 2391
    .local v3, where:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v4, v1

    .line 2394
    .local v4, whereArgs:[Ljava/lang/String;
    const-string v1, "generic"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2396
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 2397
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 2398
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2408
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    :goto_0
    return-object v9

    .line 2401
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v4       #whereArgs:[Ljava/lang/String;
    .restart local v9       #cursor:Landroid/database/Cursor;
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2406
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_1
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v9, v12

    .line 2408
    goto :goto_0

    .line 2403
    :catch_0
    move-exception v10

    .line 2404
    .local v10, e:Ljava/lang/Exception;
    const/4 v1, 0x6

    const-string v5, "EdmStorageHelper"

    const-string v6, "Failed on selectGenericTable"

    invoke-static {v1, v5, v6}, Lcom/android/server/enterprise/Utils;->writeToLog(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I
    .locals 8
    .parameter "tablename"
    .parameter "toBeUpdated"
    .parameter "whereParameters"

    .prologue
    .line 2731
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2733
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 2734
    .local v5, where:Ljava/lang/StringBuffer;
    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result v7

    new-array v6, v7, [Ljava/lang/String;

    .line 2735
    .local v6, whereArgs:[Ljava/lang/String;
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 2736
    .local v4, set:Ljava/util/Set;
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2738
    .local v3, it:Ljava/util/Iterator;
    const/4 v2, 0x0

    .line 2740
    .local v2, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2741
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2742
    .local v0, columnAndOperator:Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2743
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v6, v2

    .line 2744
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2745
    const-string v7, " AND "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2746
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2748
    .end local v0           #columnAndOperator:Ljava/lang/String;
    :cond_1
    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2750
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, p1, p2, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    return v7
.end method
