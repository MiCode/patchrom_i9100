.class Lcom/android/phone/RoamingData$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "RoamingData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RoamingData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RoamingData;


# direct methods
.method public constructor <init>(Lcom/android/phone/RoamingData;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/phone/RoamingData$DatabaseHelper;->this$0:Lcom/android/phone/RoamingData;

    .line 91
    const-string v0, "roaming.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 93
    return-void
.end method

.method private init(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .parameter "db"

    .prologue
    .line 139
    iget-object v8, p0, Lcom/android/phone/RoamingData$DatabaseHelper;->this$0:Lcom/android/phone/RoamingData;

    #getter for: Lcom/android/phone/RoamingData;->roamingContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/phone/RoamingData;->access$000(Lcom/android/phone/RoamingData;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080015

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, connectList:[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/phone/RoamingData$DatabaseHelper;->this$0:Lcom/android/phone/RoamingData;

    #getter for: Lcom/android/phone/RoamingData;->roamingContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/phone/RoamingData;->access$000(Lcom/android/phone/RoamingData;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080016

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, countryList:[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/phone/RoamingData$DatabaseHelper;->this$0:Lcom/android/phone/RoamingData;

    #getter for: Lcom/android/phone/RoamingData;->roamingContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/phone/RoamingData;->access$000(Lcom/android/phone/RoamingData;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080017

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 142
    .local v6, sidList:[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/phone/RoamingData$DatabaseHelper;->this$0:Lcom/android/phone/RoamingData;

    #getter for: Lcom/android/phone/RoamingData;->roamingContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/phone/RoamingData;->access$000(Lcom/android/phone/RoamingData;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080018

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 143
    .local v7, sidList2:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 144
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 145
    .local v5, query:Ljava/lang/String;
    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 144
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 149
    .end local v5           #query:Ljava/lang/String;
    :cond_0
    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 150
    .restart local v5       #query:Ljava/lang/String;
    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 149
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 153
    .end local v5           #query:Ljava/lang/String;
    :cond_1
    move-object v0, v6

    array-length v4, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_2

    aget-object v5, v0, v3

    .line 154
    .restart local v5       #query:Ljava/lang/String;
    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 153
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 157
    .end local v5           #query:Ljava/lang/String;
    :cond_2
    move-object v0, v7

    array-length v4, v0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v4, :cond_3

    aget-object v5, v0, v3

    .line 158
    .restart local v5       #query:Ljava/lang/String;
    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 157
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 160
    .end local v5           #query:Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 161
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 163
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 100
    const-string v0, "CREATE TABLE connect (_id INTEGER PRIMARY KEY, country_code INTEGER, country_name TEXT NOT NULL, country_name_eng TEXT NOT NULL, connect_num TEXT NOT NULL, deleteable INTEGER, default_set INTEGER, iptel INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 112
    const-string v0, "CREATE TABLE country (_id INTEGER PRIMARY KEY, name TEXT NOT NULL, name_kor TEXT NOT NULL, country_num TEXT , chosung TEXT,simplify INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 121
    const-string v0, "CREATE TABLE sid (_id INTEGER PRIMARY KEY, sid TEXT NOT NULL, connect_id TEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 127
    invoke-direct {p0, p1}, Lcom/android/phone/RoamingData$DatabaseHelper;->init(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 128
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 132
    const-string v0, "RoamingData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v0, "DROP TABLE IF EXISTS contact"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0, p1}, Lcom/android/phone/RoamingData$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 137
    return-void
.end method
