.class public Lcom/kt/wifiapi/OEMExtension;
.super Ljava/lang/Object;
.source "OEMExtension.java"


# static fields
.field public static final FEATURE_KT_WIFIAPI_OEM_DISCONNECTION_PRIORITY:I = 0x2

.field public static final FEATURE_KT_WIFIAPI_OEM_EAP_AKA_NOTIFICATON:I = 0x10

.field public static final FEATURE_KT_WIFIAPI_OEM_EAP_NOTIFICATON:I = 0x8

.field public static final FEATURE_KT_WIFIAPI_OEM_ERROR_NOTIFICATON:I = 0x4

.field public static final FEATURE_KT_WIFIAPI_OEM_MANUAL_CONNECTION:I = 0x1

.field public static final FEATURE_KT_WIFIAPI_OEM_SCAN_RESULT_EXTENSION:I = 0x20

.field private static final SCAN_RESULT_CACHE_SIZE:I = 0x50

.field private static final TAG:Ljava/lang/String; = "OEMExtension"

.field public static final WIFI_SKIP_AUTO_CONNECTION:Ljava/lang/String; = "wifi_skip_auto_conn"

.field private static instance:Lcom/kt/wifiapi/OEMExtension;

.field private static mContext:Landroid/content/Context;

.field private static final scanResultPattern:Ljava/util/regex/Pattern;


# instance fields
.field private mGWSScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kt/wifiapi/GWSScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mScanResultCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/kt/wifiapi/GWSScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-string v0, "\t+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/kt/wifiapi/OEMExtension;->scanResultPattern:Ljava/util/regex/Pattern;

    .line 92
    const/4 v0, 0x0

    sput-object v0, Lcom/kt/wifiapi/OEMExtension;->instance:Lcom/kt/wifiapi/OEMExtension;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 93
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 94
    sput-object p1, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    .line 96
    sget-object v0, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 97
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/kt/wifiapi/OEMExtension;->mScanResultCache:Landroid/util/LruCache;

    .line 102
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/kt/wifiapi/OEMExtension;
    .locals 3
    .parameter "context"

    .prologue
    .line 104
    const-string v0, "OEMExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OEMExtension::getInstance() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/kt/wifiapi/OEMExtension;->instance:Lcom/kt/wifiapi/OEMExtension;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    sget-object v0, Lcom/kt/wifiapi/OEMExtension;->instance:Lcom/kt/wifiapi/OEMExtension;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/kt/wifiapi/OEMExtension;

    invoke-direct {v0, p0}, Lcom/kt/wifiapi/OEMExtension;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/kt/wifiapi/OEMExtension;->instance:Lcom/kt/wifiapi/OEMExtension;

    .line 108
    :cond_0
    sget-object v0, Lcom/kt/wifiapi/OEMExtension;->instance:Lcom/kt/wifiapi/OEMExtension;

    return-object v0
.end method

.method private parseScanResultEx(Ljava/lang/String;)Lcom/kt/wifiapi/GWSScanResult;
    .locals 19
    .parameter "line"

    .prologue
    .line 281
    const/4 v2, 0x0

    .line 282
    .local v2, scanResult:Lcom/kt/wifiapi/GWSScanResult;
    if-eqz p1, :cond_2

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/wifiapi/OEMExtension;->mScanResultCache:Landroid/util/LruCache;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 288
    :try_start_0
    sget-object v15, Lcom/kt/wifiapi/OEMExtension;->scanResultPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v13

    .line 289
    .local v13, result:[Ljava/lang/String;
    const/4 v15, 0x3

    array-length v0, v13

    move/from16 v17, v0

    move/from16 v0, v17

    if-gt v15, v0, :cond_d

    array-length v15, v13

    const/16 v17, 0x7

    move/from16 v0, v17

    if-gt v15, v0, :cond_d

    .line 290
    const/4 v15, 0x0

    aget-object v4, v13, v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    .local v4, bssid:Ljava/lang/String;
    const/4 v15, 0x1

    :try_start_1
    aget-object v15, v13, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 296
    .local v7, frequency:I
    const/4 v15, 0x2

    aget-object v15, v13, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    .line 300
    .local v6, level:I
    if-lez v6, :cond_0

    add-int/lit16 v6, v6, -0x100

    .line 314
    :cond_0
    :goto_0
    :try_start_2
    const-string v3, ""

    .line 315
    .local v3, ssid:Ljava/lang/String;
    const-string v5, ""

    .line 316
    .local v5, flags:Ljava/lang/String;
    const-string v8, "null"

    .line 317
    .local v8, BSSLoadElement:Ljava/lang/String;
    const-string v9, "null"

    .line 318
    .local v9, vendorSpecificOUI:Ljava/lang/String;
    const-string v10, "null"

    .line 320
    .local v10, vendorSpecificContents:Ljava/lang/String;
    array-length v15, v13

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v15, v0, :cond_3

    .line 363
    :cond_1
    :goto_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 364
    .local v12, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kt/wifiapi/OEMExtension;->mScanResultCache:Landroid/util/LruCache;

    invoke-virtual {v15, v12}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/kt/wifiapi/GWSScanResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 365
    .end local v2           #scanResult:Lcom/kt/wifiapi/GWSScanResult;
    .local v14, scanResult:Lcom/kt/wifiapi/GWSScanResult;
    if-eqz v14, :cond_c

    .line 366
    :try_start_3
    iput v6, v14, Lcom/kt/wifiapi/GWSScanResult;->level:I

    .line 367
    iput-object v3, v14, Lcom/kt/wifiapi/GWSScanResult;->SSID:Ljava/lang/String;

    .line 368
    iput-object v5, v14, Lcom/kt/wifiapi/GWSScanResult;->capabilities:Ljava/lang/String;

    .line 369
    iput v7, v14, Lcom/kt/wifiapi/GWSScanResult;->frequency:I

    .line 370
    iput-object v8, v14, Lcom/kt/wifiapi/GWSScanResult;->BSSLoadElement:Ljava/lang/String;

    .line 371
    iput-object v9, v14, Lcom/kt/wifiapi/GWSScanResult;->vendorSpecificOUI:Ljava/lang/String;

    .line 372
    iput-object v10, v14, Lcom/kt/wifiapi/GWSScanResult;->vendorSpecificContents:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, v14

    .line 384
    .end local v3           #ssid:Ljava/lang/String;
    .end local v4           #bssid:Ljava/lang/String;
    .end local v5           #flags:Ljava/lang/String;
    .end local v6           #level:I
    .end local v7           #frequency:I
    .end local v8           #BSSLoadElement:Ljava/lang/String;
    .end local v9           #vendorSpecificOUI:Ljava/lang/String;
    .end local v10           #vendorSpecificContents:Ljava/lang/String;
    .end local v12           #key:Ljava/lang/String;
    .end local v14           #scanResult:Lcom/kt/wifiapi/GWSScanResult;
    .restart local v2       #scanResult:Lcom/kt/wifiapi/GWSScanResult;
    :goto_2
    :try_start_4
    monitor-exit v16

    .line 386
    .end local v13           #result:[Ljava/lang/String;
    :cond_2
    return-object v2

    .line 301
    .restart local v4       #bssid:Ljava/lang/String;
    .restart local v13       #result:[Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 302
    .local v11, e:Ljava/lang/NumberFormatException;
    const/4 v7, 0x0

    .line 303
    .restart local v7       #frequency:I
    const/4 v6, 0x0

    .restart local v6       #level:I
    goto :goto_0

    .line 322
    .end local v11           #e:Ljava/lang/NumberFormatException;
    .restart local v3       #ssid:Ljava/lang/String;
    .restart local v5       #flags:Ljava/lang/String;
    .restart local v8       #BSSLoadElement:Ljava/lang/String;
    .restart local v9       #vendorSpecificOUI:Ljava/lang/String;
    .restart local v10       #vendorSpecificContents:Ljava/lang/String;
    :cond_3
    array-length v15, v13

    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v15, v0, :cond_5

    .line 323
    const/4 v15, 0x3

    aget-object v15, v13, v15

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v17, 0x5b

    move/from16 v0, v17

    if-ne v15, v0, :cond_4

    .line 324
    const/4 v15, 0x3

    aget-object v5, v13, v15

    goto :goto_1

    .line 326
    :cond_4
    const/4 v15, 0x3

    aget-object v3, v13, v15

    goto :goto_1

    .line 330
    :cond_5
    const/4 v15, 0x3

    aget-object v5, v13, v15

    .line 332
    array-length v15, v13

    const/16 v17, 0x5

    move/from16 v0, v17

    if-ne v15, v0, :cond_8

    .line 333
    const-string v15, "[BLE]"

    invoke-virtual {v5, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 334
    const/4 v15, 0x4

    aget-object v8, v13, v15

    goto :goto_1

    .line 335
    :cond_6
    const-string v15, "[VSI]"

    invoke-virtual {v5, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 336
    const/4 v15, 0x4

    aget-object v15, v13, v15

    const/16 v17, 0x0

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 337
    const/4 v15, 0x4

    aget-object v15, v13, v15

    const/16 v17, 0x6

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 339
    :cond_7
    const/4 v15, 0x4

    aget-object v3, v13, v15

    goto/16 :goto_1

    .line 340
    :cond_8
    array-length v15, v13

    const/16 v17, 0x6

    move/from16 v0, v17

    if-ne v15, v0, :cond_b

    .line 341
    const-string v15, "[BLE]"

    invoke-virtual {v5, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_9

    const-string v15, "[VSI]"

    invoke-virtual {v5, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 342
    const/4 v15, 0x4

    aget-object v8, v13, v15

    .line 343
    const/4 v15, 0x5

    aget-object v15, v13, v15

    const/16 v17, 0x0

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 344
    const/4 v15, 0x5

    aget-object v15, v13, v15

    const/16 v17, 0x6

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 345
    :cond_9
    const-string v15, "[BLE]"

    invoke-virtual {v5, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 346
    const/4 v15, 0x4

    aget-object v3, v13, v15

    .line 347
    const/4 v15, 0x5

    aget-object v8, v13, v15

    goto/16 :goto_1

    .line 348
    :cond_a
    const-string v15, "[VSI]"

    invoke-virtual {v5, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 349
    const/4 v15, 0x4

    aget-object v3, v13, v15

    .line 350
    const/4 v15, 0x5

    aget-object v15, v13, v15

    const/16 v17, 0x0

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 351
    const/4 v15, 0x5

    aget-object v15, v13, v15

    const/16 v17, 0x6

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 353
    :cond_b
    array-length v15, v13

    const/16 v17, 0x7

    move/from16 v0, v17

    if-ne v15, v0, :cond_1

    .line 354
    const/4 v15, 0x4

    aget-object v3, v13, v15

    .line 355
    const/4 v15, 0x5

    aget-object v8, v13, v15

    .line 356
    const/4 v15, 0x6

    aget-object v15, v13, v15

    const/16 v17, 0x0

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 357
    const/4 v15, 0x6

    aget-object v15, v13, v15

    const/16 v17, 0x6

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v10

    goto/16 :goto_1

    .line 375
    .end local v2           #scanResult:Lcom/kt/wifiapi/GWSScanResult;
    .restart local v12       #key:Ljava/lang/String;
    .restart local v14       #scanResult:Lcom/kt/wifiapi/GWSScanResult;
    :cond_c
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_e

    .line 376
    new-instance v2, Lcom/kt/wifiapi/GWSScanResult;

    invoke-direct/range {v2 .. v10}, Lcom/kt/wifiapi/GWSScanResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 377
    .end local v14           #scanResult:Lcom/kt/wifiapi/GWSScanResult;
    .restart local v2       #scanResult:Lcom/kt/wifiapi/GWSScanResult;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kt/wifiapi/OEMExtension;->mScanResultCache:Landroid/util/LruCache;

    invoke-virtual {v15, v12, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 384
    .end local v3           #ssid:Ljava/lang/String;
    .end local v4           #bssid:Ljava/lang/String;
    .end local v5           #flags:Ljava/lang/String;
    .end local v6           #level:I
    .end local v7           #frequency:I
    .end local v8           #BSSLoadElement:Ljava/lang/String;
    .end local v9           #vendorSpecificOUI:Ljava/lang/String;
    .end local v10           #vendorSpecificContents:Ljava/lang/String;
    .end local v12           #key:Ljava/lang/String;
    .end local v13           #result:[Ljava/lang/String;
    :catchall_0
    move-exception v15

    :goto_3
    monitor-exit v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v15

    .line 381
    .restart local v13       #result:[Ljava/lang/String;
    :cond_d
    :try_start_7
    const-string v15, "OEMExtension"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Misformatted scan result text with "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    array-length v0, v13

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " fields: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 384
    .end local v2           #scanResult:Lcom/kt/wifiapi/GWSScanResult;
    .restart local v3       #ssid:Ljava/lang/String;
    .restart local v4       #bssid:Ljava/lang/String;
    .restart local v5       #flags:Ljava/lang/String;
    .restart local v6       #level:I
    .restart local v7       #frequency:I
    .restart local v8       #BSSLoadElement:Ljava/lang/String;
    .restart local v9       #vendorSpecificOUI:Ljava/lang/String;
    .restart local v10       #vendorSpecificContents:Ljava/lang/String;
    .restart local v12       #key:Ljava/lang/String;
    .restart local v14       #scanResult:Lcom/kt/wifiapi/GWSScanResult;
    :catchall_1
    move-exception v15

    move-object v2, v14

    .end local v14           #scanResult:Lcom/kt/wifiapi/GWSScanResult;
    .restart local v2       #scanResult:Lcom/kt/wifiapi/GWSScanResult;
    goto :goto_3

    .end local v2           #scanResult:Lcom/kt/wifiapi/GWSScanResult;
    .restart local v14       #scanResult:Lcom/kt/wifiapi/GWSScanResult;
    :cond_e
    move-object v2, v14

    .end local v14           #scanResult:Lcom/kt/wifiapi/GWSScanResult;
    .restart local v2       #scanResult:Lcom/kt/wifiapi/GWSScanResult;
    goto/16 :goto_2
.end method


# virtual methods
.method public getDisconnectionPriority()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 201
    sget-object v1, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_connection_monitor_enable"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 220
    :goto_0
    return v0

    .line 204
    :cond_0
    sget-object v1, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_connection_monitor_settings"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 205
    .local v0, ret:I
    packed-switch v0, :pswitch_data_0

    .line 216
    const/4 v0, 0x2

    .line 219
    :goto_1
    const-string v1, "OEMExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDisconnectionPriority() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 207
    :pswitch_0
    const/4 v0, 0x2

    .line 208
    goto :goto_1

    .line 210
    :pswitch_1
    const/4 v0, 0x1

    .line 211
    goto :goto_1

    .line 213
    :pswitch_2
    const/4 v0, 0x3

    .line 214
    goto :goto_1

    .line 205
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getFeature()I
    .locals 1

    .prologue
    .line 127
    const/16 v0, 0x3f

    .line 134
    .local v0, ret:I
    return v0
.end method

.method public getGWSScanResultsEx()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kt/wifiapi/GWSScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    const-string v1, "OEMExtension"

    const-string v2, "getGWSScanResultsEx()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 228
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x21

    iput v1, v0, Landroid/os/Message;->what:I

    .line 230
    iget-object v1, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECStringApi(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/kt/wifiapi/OEMExtension;->setScanResultsEx(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getManualConnection()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 158
    sget-object v2, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_skip_auto_conn"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 159
    .local v0, ret:Z
    :goto_0
    const-string v1, "OEMExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getManualConnection() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return v0

    .end local v0           #ret:Z
    :cond_0
    move v0, v1

    .line 158
    goto :goto_0
.end method

.method public setDisconnectionPriority(I)Z
    .locals 8
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 169
    const-string v2, "OEMExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDisconnectionPriority() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v0, 0x0

    .line 172
    .local v0, position:I
    sget-object v2, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_connection_monitor_enable"

    invoke-static {v2, v3, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 173
    sget-object v2, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.android.settings.wifi"

    const-string v6, "com.android.settings.wifi.WifiConnectionMonitorService"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 174
    sget-object v2, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_connection_monitor_enable"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 177
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 194
    const/4 v0, 0x0

    .line 197
    :goto_0
    sget-object v1, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_connection_monitor_settings"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    :goto_1
    return v1

    .line 179
    :pswitch_0
    sget-object v2, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.android.settings.wifi"

    const-string v6, "com.android.settings.wifi.WifiConnectionMonitorService"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 180
    sget-object v2, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_connection_monitor_enable"

    invoke-static {v2, v3, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 185
    :pswitch_1
    const/4 v0, 0x1

    .line 186
    goto :goto_0

    .line 188
    :pswitch_2
    const/4 v0, 0x0

    .line 189
    goto :goto_0

    .line 191
    :pswitch_3
    const/4 v0, 0x2

    .line 192
    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setManualConnection(Z)Z
    .locals 7
    .parameter "value"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 138
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 140
    .local v1, msg:Landroid/os/Message;
    const-string v2, "OEMExtension"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setManualConnection() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    sget-object v2, Lcom/kt/wifiapi/OEMExtension;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_skip_auto_conn"

    if-eqz p1, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 144
    const/16 v2, 0x20

    iput v2, v1, Landroid/os/Message;->what:I

    .line 145
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 146
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "enable"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 147
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 149
    iget-object v2, p0, Lcom/kt/wifiapi/OEMExtension;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v2

    if-nez v2, :cond_1

    .line 153
    :goto_1
    return v3

    .end local v0           #args:Landroid/os/Bundle;
    :cond_0
    move v2, v4

    .line 142
    goto :goto_0

    .line 152
    .restart local v0       #args:Landroid/os/Bundle;
    :cond_1
    const-string v2, "OEMExtension"

    const-string v3, "Settings.System.putInt() fail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 153
    goto :goto_1
.end method

.method public setScanResultsEx(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .parameter "scanResults"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/kt/wifiapi/GWSScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    const-string v7, "OEMExtension"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setScanResultsEx() scanResults="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    if-nez p1, :cond_1

    .line 237
    const/4 v0, 0x0

    .line 272
    :cond_0
    return-object v0

    .line 240
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v0, gwsScanList:Ljava/util/List;,"Ljava/util/List<Lcom/kt/wifiapi/GWSScanResult;>;"
    const/4 v3, 0x0

    .line 244
    .local v3, lineCount:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 249
    .local v6, scanResultsLen:I
    const/4 v2, 0x0

    .local v2, lineBeg:I
    const/4 v4, 0x0

    .local v4, lineEnd:I
    :goto_0
    if-gt v4, v6, :cond_0

    .line 250
    if-eq v4, v6, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_3

    .line 251
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 253
    const/4 v7, 0x1

    if-ne v3, v7, :cond_4

    .line 254
    add-int/lit8 v2, v4, 0x1

    .line 249
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 257
    :cond_4
    if-le v4, v2, :cond_5

    .line 258
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, line:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/kt/wifiapi/OEMExtension;->parseScanResultEx(Ljava/lang/String;)Lcom/kt/wifiapi/GWSScanResult;

    move-result-object v5

    .line 261
    .local v5, scanResult:Lcom/kt/wifiapi/GWSScanResult;
    if-eqz v5, :cond_5

    .line 262
    const-string v7, "OEMExtension"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "scanResult: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    .end local v1           #line:Ljava/lang/String;
    .end local v5           #scanResult:Lcom/kt/wifiapi/GWSScanResult;
    :cond_5
    add-int/lit8 v2, v4, 0x1

    goto :goto_1
.end method
