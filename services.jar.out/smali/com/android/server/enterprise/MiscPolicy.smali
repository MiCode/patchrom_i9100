.class public Lcom/android/server/enterprise/MiscPolicy;
.super Landroid/app/enterprise/IMiscPolicy$Stub;
.source "MiscPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/MiscPolicy$1;,
        Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;,
        Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MiscPolicy"


# instance fields
.field private mClipboard:Landroid/content/ClipboardManager;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

.field private mSIMInfo:Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;

.field private mSystemFontChanger:Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    const/4 v0, 0x0

    .line 129
    invoke-direct {p0}, Landroid/app/enterprise/IMiscPolicy$Stub;-><init>()V

    .line 126
    iput-object v0, p0, Lcom/android/server/enterprise/MiscPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 127
    iput-object v0, p0, Lcom/android/server/enterprise/MiscPolicy;->mClipboard:Landroid/content/ClipboardManager;

    .line 130
    iput-object p1, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    .line 131
    new-instance v0, Lcom/android/server/enterprise/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    .line 132
    new-instance v0, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;

    iget-object v1, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;-><init>(Lcom/android/server/enterprise/MiscPolicy;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/MiscPolicy;->mSIMInfo:Lcom/android/server/enterprise/MiscPolicy$SIMCardUpdateMonitor;

    .line 133
    return-void
.end method

.method private GetSystemFontChanger()Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;
    .locals 2

    .prologue
    .line 921
    iget-object v0, p0, Lcom/android/server/enterprise/MiscPolicy;->mSystemFontChanger:Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;

    if-nez v0, :cond_0

    .line 922
    new-instance v0, Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;-><init>(Lcom/android/server/enterprise/MiscPolicy;Lcom/android/server/enterprise/MiscPolicy$1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/MiscPolicy;->mSystemFontChanger:Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;

    .line 924
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/MiscPolicy;->mSystemFontChanger:Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/MiscPolicy;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addBookmark(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 15
    .parameter "url"
    .parameter "name"
    .parameter "thumbnail"

    .prologue
    .line 669
    const/4 v10, 0x0

    .line 671
    .local v10, ret:Z
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 672
    .local v3, creationTime:J
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 673
    .local v9, map:Landroid/content/ContentValues;
    const/4 v5, 0x0

    .line 674
    .local v5, cursor:Landroid/database/Cursor;
    iget-object v12, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 675
    .local v2, cr:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 677
    .local v7, folder:I
    :try_start_0
    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/android/server/enterprise/MiscPolicy;->getVisitedLike(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 678
    if-nez v5, :cond_1

    .line 679
    const/4 v12, 0x0

    .line 738
    if-eqz v5, :cond_0

    .line 739
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 741
    :cond_0
    :goto_0
    return v12

    .line 680
    :cond_1
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v12, 0x4

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-nez v12, :cond_3

    .line 684
    const-string v12, "created"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 685
    const-string v12, "title"

    move-object/from16 v0, p2

    invoke-virtual {v9, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const-string v12, "bookmark"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 687
    const-string v12, "thumbnail"

    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/MiscPolicy;->bitmapToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 688
    const-string v12, "touch_icon"

    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/MiscPolicy;->bitmapToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 689
    sget-object v12, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "_id = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v2, v12, v9, v13, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 734
    :goto_1
    const/4 v10, 0x1

    .line 738
    if-eqz v5, :cond_2

    .line 739
    :goto_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_2
    move v12, v10

    .line 741
    goto :goto_0

    .line 691
    :cond_3
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 693
    .local v1, count:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_3
    if-ge v8, v1, :cond_4

    .line 696
    invoke-interface {v5, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 697
    const/4 v12, 0x5

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 707
    :cond_4
    const-string v12, "title"

    move-object/from16 v0, p2

    invoke-virtual {v9, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const-string v12, "url"

    move-object/from16 v0, p1

    invoke-virtual {v9, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const-string v12, "created"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 710
    const-string v12, "bookmark"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 711
    const-string v12, "date"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 712
    const-string v12, "thumbnail"

    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/MiscPolicy;->bitmapToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 714
    const/4 v11, 0x0

    .line 715
    .local v11, visits:I
    if-lez v1, :cond_5

    .line 721
    const/4 v12, 0x2

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 727
    :cond_5
    if-nez v1, :cond_7

    if-nez v7, :cond_7

    .line 728
    const-string v12, "visits"

    add-int/lit8 v13, v11, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 732
    :goto_4
    sget-object v12, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {v2, v12, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 735
    .end local v1           #count:I
    .end local v8           #i:I
    .end local v11           #visits:I
    :catch_0
    move-exception v6

    .line 736
    .local v6, e:Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v12, "MiscPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "addBookmark"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 738
    if-eqz v5, :cond_2

    goto/16 :goto_2

    .line 693
    .end local v6           #e:Ljava/lang/IllegalStateException;
    .restart local v1       #count:I
    .restart local v8       #i:I
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 730
    .restart local v11       #visits:I
    :cond_7
    :try_start_4
    const-string v12, "visits"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    .line 738
    .end local v1           #count:I
    .end local v8           #i:I
    .end local v11           #visits:I
    :catchall_0
    move-exception v12

    if-eqz v5, :cond_8

    .line 739
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 738
    :cond_8
    throw v12
.end method

.method private static final addOrUrlEquals(Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter "sb"

    .prologue
    .line 619
    const-string v0, " OR url = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    return-void
.end method

.method private static bitmapToBytes(Landroid/graphics/Bitmap;)[B
    .locals 3
    .parameter "bm"

    .prologue
    .line 749
    if-nez p0, :cond_0

    .line 750
    const/4 v1, 0x0

    .line 755
    :goto_0
    return-object v1

    .line 753
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 754
    .local v0, os:Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 755
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_0
.end method

.method private enforceSecurityPermission()I
    .locals 2

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/server/enterprise/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SECURITY"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 151
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/server/enterprise/MiscPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/MiscPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/MiscPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private static final getVisitedLike(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "cr"
    .parameter "url"

    .prologue
    const/4 v4, 0x0

    .line 632
    const/4 v7, 0x0

    .line 633
    .local v7, secure:Z
    move-object v6, p1

    .line 634
    .local v6, compareString:Ljava/lang/String;
    const-string v0, "http://"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 635
    const/4 v0, 0x7

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 640
    :cond_0
    :goto_0
    const-string v0, "www."

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 641
    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 643
    :cond_1
    const/4 v8, 0x0

    .line 644
    .local v8, whereClause:Ljava/lang/StringBuilder;
    if-eqz v7, :cond_3

    .line 645
    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8           #whereClause:Ljava/lang/StringBuilder;
    const-string v0, "url = "

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 646
    .restart local v8       #whereClause:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 647
    invoke-static {v8}, Lcom/android/server/enterprise/MiscPolicy;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://www."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 660
    :goto_1
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 636
    .end local v8           #whereClause:Ljava/lang/StringBuilder;
    :cond_2
    const-string v0, "https://"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 638
    const/4 v7, 0x1

    goto :goto_0

    .line 650
    .restart local v8       #whereClause:Ljava/lang/StringBuilder;
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8           #whereClause:Ljava/lang/StringBuilder;
    const-string v0, "url = "

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 651
    .restart local v8       #whereClause:Ljava/lang/StringBuilder;
    invoke-static {v8, v6}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 652
    invoke-static {v8}, Lcom/android/server/enterprise/MiscPolicy;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "www."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 654
    .local v9, wwwString:Ljava/lang/String;
    invoke-static {v8, v9}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 655
    invoke-static {v8}, Lcom/android/server/enterprise/MiscPolicy;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 657
    invoke-static {v8}, Lcom/android/server/enterprise/MiscPolicy;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private isAdminLockScreenStringSet()Z
    .locals 4

    .prologue
    .line 842
    const/4 v0, 0x0

    .line 843
    .local v0, ret:Z
    iget-object v2, p0, Lcom/android/server/enterprise/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "lockscreenstring"

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 844
    .local v1, s:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 845
    const/4 v0, 0x1

    .line 847
    :cond_0
    return v0
.end method

.method private isRingToneEntryExist(Ljava/lang/String;Landroid/net/Uri;)J
    .locals 10
    .parameter "aRingToneAbsolutePath"
    .parameter "aUri"

    .prologue
    .line 257
    const-wide/16 v8, -0x1

    .line 259
    .local v8, lRingToneEntryId:J
    const/4 v7, 0x0

    .line 262
    .local v7, lCursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 264
    .local v3, lWhereClause:Ljava/lang/String;
    const-string v0, "MiscPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRingToneEntryExist : whereClause :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 269
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 270
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 271
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 277
    :cond_0
    if-eqz v7, :cond_1

    .line 278
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 279
    .end local v3           #lWhereClause:Ljava/lang/String;
    :goto_0
    const/4 v7, 0x0

    .line 283
    :cond_1
    const-string v0, "MiscPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRingToneEntryExist : return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return-wide v8

    .line 274
    :catch_0
    move-exception v6

    .line 275
    .local v6, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    if-eqz v7, :cond_1

    .line 278
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 277
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 278
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 279
    const/4 v7, 0x0

    .line 277
    :cond_2
    throw v0
.end method

.method private readFile(Ljava/lang/String;)[B
    .locals 13
    .parameter "fileName"

    .prologue
    .line 288
    const/4 v2, 0x0

    .line 289
    .local v2, file:Ljava/io/File;
    const/4 v4, 0x0

    .line 290
    .local v4, is:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 292
    .local v0, bytes:[B
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 293
    .end local v2           #file:Ljava/io/File;
    .local v3, file:Ljava/io/File;
    :try_start_1
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 295
    .end local v4           #is:Ljava/io/FileInputStream;
    .local v5, is:Ljava/io/FileInputStream;
    if-eqz v5, :cond_4

    .line 297
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 298
    .local v6, length:J
    const-wide/32 v10, 0x7fffffff

    cmp-long v10, v6, v10

    if-lez v10, :cond_1

    .line 299
    new-instance v10, Ljava/io/IOException;

    const-string v11, "The file is too big"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 317
    .end local v6           #length:J
    :catch_0
    move-exception v1

    move-object v4, v5

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    move-object v2, v3

    .line 318
    .end local v3           #file:Ljava/io/File;
    .local v1, e:Ljava/lang/Exception;
    .restart local v2       #file:Ljava/io/File;
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 323
    if-eqz v4, :cond_0

    .line 324
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 325
    const/4 v4, 0x0

    .line 331
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    :goto_1
    const-string v10, "MiscPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "readFile returns "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    return-object v0

    .line 303
    .end local v2           #file:Ljava/io/File;
    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #is:Ljava/io/FileInputStream;
    .restart local v6       #length:J
    :cond_1
    long-to-int v10, v6

    :try_start_5
    new-array v0, v10, [B

    .line 305
    const/4 v9, 0x0

    .line 306
    .local v9, offset:I
    const/4 v8, 0x0

    .line 308
    .local v8, numRead:I
    :goto_2
    array-length v10, v0

    if-ge v9, v10, :cond_2

    array-length v10, v0

    sub-int/2addr v10, v9

    invoke-virtual {v5, v0, v9, v10}, Ljava/io/FileInputStream;->read([BII)I

    move-result v8

    if-ltz v8, :cond_2

    .line 309
    add-int/2addr v9, v8

    goto :goto_2

    .line 312
    :cond_2
    array-length v10, v0

    if-ge v9, v10, :cond_4

    .line 313
    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The file was not completely read: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 322
    .end local v6           #length:J
    .end local v8           #numRead:I
    .end local v9           #offset:I
    :catchall_0
    move-exception v10

    move-object v4, v5

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    move-object v2, v3

    .line 323
    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    :goto_3
    if-eqz v4, :cond_3

    .line 324
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 325
    const/4 v4, 0x0

    .line 322
    :cond_3
    :goto_4
    throw v10

    .line 323
    .end local v2           #file:Ljava/io/File;
    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #is:Ljava/io/FileInputStream;
    :cond_4
    if-eqz v5, :cond_5

    .line 324
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 325
    const/4 v4, 0x0

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    :goto_5
    move-object v2, v3

    .line 330
    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_1

    .line 327
    :catch_1
    move-exception v1

    .line 328
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 327
    :catch_2
    move-exception v1

    .line 328
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 327
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #file:Ljava/io/File;
    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #is:Ljava/io/FileInputStream;
    :catch_3
    move-exception v1

    .line 328
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1           #e:Ljava/lang/Exception;
    :cond_5
    move-object v4, v5

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    goto :goto_5

    .line 322
    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    :catchall_1
    move-exception v10

    goto :goto_3

    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :catchall_2
    move-exception v10

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_3

    .line 317
    :catch_4
    move-exception v1

    goto :goto_0

    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :catch_5
    move-exception v1

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_0
.end method

.method private removeFromBookmarks(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .parameter "url"
    .parameter "title"

    .prologue
    .line 763
    const/4 v6, 0x0

    .line 764
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 765
    .local v10, ret:Z
    iget-object v1, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 767
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    const-string v3, "url = ? AND title = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 771
    if-nez v6, :cond_1

    .line 772
    const/4 v1, 0x0

    .line 799
    if-eqz v6, :cond_0

    .line 800
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 802
    :cond_0
    :goto_0
    return v1

    .line 773
    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    .line 775
    .local v8, first:Z
    if-nez v8, :cond_3

    .line 799
    if-eqz v6, :cond_2

    .line 800
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v1, v10

    .line 776
    goto :goto_0

    .line 779
    :cond_3
    :try_start_2
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 781
    .local v11, uri:Landroid/net/Uri;
    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 782
    .local v9, numVisits:I
    if-nez v9, :cond_5

    .line 783
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v11, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 795
    :goto_1
    const/4 v10, 0x1

    .line 799
    if-eqz v6, :cond_4

    .line 800
    .end local v8           #first:Z
    .end local v9           #numVisits:I
    .end local v11           #uri:Landroid/net/Uri;
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move v1, v10

    .line 802
    goto :goto_0

    .line 787
    .restart local v8       #first:Z
    .restart local v9       #numVisits:I
    .restart local v11       #uri:Landroid/net/Uri;
    :cond_5
    :try_start_3
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 788
    .local v12, values:Landroid/content/ContentValues;
    const-string v1, "bookmark"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    .line 790
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_4
    invoke-virtual {v0, v11, v12, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 791
    :catch_0
    move-exception v7

    .line 792
    .local v7, e:Ljava/lang/IllegalStateException;
    :try_start_5
    const-string v1, "removeFromBookmarks"

    const-string v2, "no database!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 796
    .end local v7           #e:Ljava/lang/IllegalStateException;
    .end local v8           #first:Z
    .end local v9           #numVisits:I
    .end local v11           #uri:Landroid/net/Uri;
    .end local v12           #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v7

    .line 797
    .restart local v7       #e:Ljava/lang/IllegalStateException;
    :try_start_6
    const-string v1, "MiscPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeFromBookmarks"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 799
    if-eqz v6, :cond_4

    goto :goto_2

    .end local v7           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_6

    .line 800
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 799
    :cond_6
    throw v1
.end method

.method private updateDatabase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "ringtonefilePath"
    .parameter "mimeType"

    .prologue
    const/4 v10, 0x1

    .line 215
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 216
    .local v4, ringtoneFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 219
    .local v5, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v5}, Lcom/android/server/enterprise/MiscPolicy;->isRingToneEntryExist(Ljava/lang/String;Landroid/net/Uri;)J

    move-result-wide v2

    .line 220
    .local v2, lRingToneId:J
    const-string v6, "MiscPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ringtone id :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-wide/16 v6, -0x1

    cmp-long v6, v6, v2

    if-eqz v6, :cond_0

    .line 223
    const-string v6, "MiscPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ringtone entry exist deleting it :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v6, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 227
    :cond_0
    const-string v6, "MiscPolicy"

    const-string v7, "Ringtone creating new one"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 230
    .local v0, content:Landroid/content/ContentValues;
    const-string v6, "_data"

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v6, "title"

    const-string v7, "IT Admin tone"

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v6, "_size"

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 233
    const-string v6, "mime_type"

    const-string v7, "audio/*"

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v6, "artist"

    const-string v7, "artist"

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v6, "is_ringtone"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 236
    const-string v6, "is_notification"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 237
    const-string v6, "is_alarm"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 238
    const-string v6, "is_music"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 241
    iget-object v6, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 247
    .end local v0           #content:Landroid/content/ContentValues;
    .end local v2           #lRingToneId:J
    :goto_0
    if-eqz v5, :cond_1

    .line 248
    iget-object v6, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-static {v6, v10, v5}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 252
    :cond_1
    return-void

    .line 243
    :catch_0
    move-exception v1

    .line 244
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addClipboardData(Landroid/content/ClipData;)Z
    .locals 2
    .parameter "clip"

    .prologue
    .line 1259
    invoke-direct {p0}, Lcom/android/server/enterprise/MiscPolicy;->enforceSecurityPermission()I

    .line 1261
    iget-object v0, p0, Lcom/android/server/enterprise/MiscPolicy;->mClipboard:Landroid/content/ClipboardManager;

    if-nez v0, :cond_0

    .line 1262
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1263
    iget-object v0, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iput-object v0, p0, Lcom/android/server/enterprise/MiscPolicy;->mClipboard:Landroid/content/ClipboardManager;

    .line 1267
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/MiscPolicy;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 1269
    const/4 v0, 0x1

    return v0
.end method

.method public addClipboardTextData(Ljava/lang/String;)Z
    .locals 2
    .parameter "clip"

    .prologue
    .line 1310
    invoke-direct {p0}, Lcom/android/server/enterprise/MiscPolicy;->enforceSecurityPermission()I

    .line 1312
    iget-object v0, p0, Lcom/android/server/enterprise/MiscPolicy;->mClipboard:Landroid/content/ClipboardManager;

    if-nez v0, :cond_0

    .line 1313
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1314
    iget-object v0, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iput-object v0, p0, Lcom/android/server/enterprise/MiscPolicy;->mClipboard:Landroid/content/ClipboardManager;

    .line 1318
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/MiscPolicy;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 1320
    const/4 v0, 0x1

    return v0
.end method

.method public addWebBookmarkBitmap(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "uri"
    .parameter "title"
    .parameter "iconBm"

    .prologue
    .line 601
    invoke-direct {p0}, Lcom/android/server/enterprise/MiscPolicy;->enforceSecurityPermission()I

    .line 602
    if-nez p1, :cond_0

    .line 603
    const/4 v0, 0x0

    .line 605
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/enterprise/MiscPolicy;->addBookmark(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    goto :goto_0
.end method

.method public addWebBookmarkByteBuffer(Landroid/net/Uri;Ljava/lang/String;[B)Z
    .locals 3
    .parameter "uri"
    .parameter "title"
    .parameter "iconBuffer"

    .prologue
    const/4 v1, 0x0

    .line 584
    invoke-direct {p0}, Lcom/android/server/enterprise/MiscPolicy;->enforceSecurityPermission()I

    .line 585
    const/4 v0, 0x0

    .line 586
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz p3, :cond_0

    array-length v2, p3

    if-lez v2, :cond_0

    .line 587
    array-length v2, p3

    invoke-static {p3, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 590
    :cond_0
    if-nez p1, :cond_1

    .line 593
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2, v0}, Lcom/android/server/enterprise/MiscPolicy;->addBookmark(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v1

    goto :goto_0
.end method

.method public changeLockScreenString(Ljava/lang/String;)Z
    .locals 10
    .parameter "statement"

    .prologue
    const/16 v7, 0x100

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 858
    invoke-direct {p0}, Lcom/android/server/enterprise/MiscPolicy;->enforceSecurityPermission()I

    .line 859
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 860
    .local v4, token:J
    const/4 v2, 0x0

    .line 861
    .local v2, ret:Z
    const/4 v3, 0x0

    .line 862
    .local v3, revoked:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/MiscPolicy;->isAdminLockScreenStringSet()Z

    move-result v1

    .line 864
    .local v1, restricted:Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-gez v6, :cond_1

    .line 865
    :cond_0
    const/4 v3, 0x1

    .line 866
    const-string p1, ""

    .line 870
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v7, :cond_2

    .line 871
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 872
    const-string v6, "MiscPolicy"

    const-string v7, "changeLockScreenString():lock screen text is truncated "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    :cond_2
    if-nez v3, :cond_6

    .line 877
    iget-object v6, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_screen_owner_info_enabled"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 879
    .local v0, enabled:I
    if-nez v1, :cond_3

    .line 880
    iget-object v6, p0, Lcom/android/server/enterprise/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "lockscreenstring"

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 883
    :cond_3
    if-nez v0, :cond_4

    .line 884
    const-string v6, "MiscPolicy"

    const-string v7, "changeLockScreenString(): enabling owner info"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    iget-object v6, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_screen_owner_info_enabled"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 889
    :cond_4
    iget-object v6, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_screen_owner_info"

    invoke-static {v6, v7, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 912
    .end local v0           #enabled:I
    :cond_5
    :goto_0
    const-string v6, "MiscPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changeLockScreenString():ret:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 916
    return v2

    .line 893
    :cond_6
    if-ne v1, v9, :cond_5

    .line 895
    const-string v6, "MiscPolicy"

    const-string v7, "changeLockScreenString(): revoke restriction"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    iget-object v6, p0, Lcom/android/server/enterprise/MiscPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "lockscreenstring"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 902
    iget-object v6, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_screen_owner_info"

    invoke-static {v6, v7, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method public clearClipboardData()Z
    .locals 3

    .prologue
    .line 1295
    invoke-direct {p0}, Lcom/android/server/enterprise/MiscPolicy;->enforceSecurityPermission()I

    .line 1297
    iget-object v1, p0, Lcom/android/server/enterprise/MiscPolicy;->mClipboard:Landroid/content/ClipboardManager;

    if-nez v1, :cond_0

    .line 1298
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1299
    iget-object v1, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    iput-object v1, p0, Lcom/android/server/enterprise/MiscPolicy;->mClipboard:Landroid/content/ClipboardManager;

    .line 1303
    :cond_0
    const-string v1, "simple text"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 1304
    .local v0, mClip:Landroid/content/ClipData;
    iget-object v1, p0, Lcom/android/server/enterprise/MiscPolicy;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 1305
    const/4 v1, 0x1

    return v1
.end method

.method public deleteWebBookmark(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 1
    .parameter "uri"
    .parameter "title"

    .prologue
    .line 610
    invoke-direct {p0}, Lcom/android/server/enterprise/MiscPolicy;->enforceSecurityPermission()I

    .line 612
    if-nez p1, :cond_0

    .line 613
    const/4 v0, 0x0

    .line 615
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/MiscPolicy;->removeFromBookmarks(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public getClipboardData()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ClipData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1273
    invoke-direct {p0}, Lcom/android/server/enterprise/MiscPolicy;->enforceSecurityPermission()I

    .line 1275
    iget-object v4, p0, Lcom/android/server/enterprise/MiscPolicy;->mClipboard:Landroid/content/ClipboardManager;

    if-nez v4, :cond_0

    .line 1276
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1277
    iget-object v4, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v5, "clipboard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ClipboardManager;

    iput-object v4, p0, Lcom/android/server/enterprise/MiscPolicy;->mClipboard:Landroid/content/ClipboardManager;

    .line 1282
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1284
    .local v2, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/MiscPolicy;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v4}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 1285
    .local v0, clipx:Landroid/content/ClipData;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1286
    .local v1, mClipList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ClipData;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1288
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1290
    return-object v1
.end method

.method public getClipboardTextData()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1324
    invoke-direct {p0}, Lcom/android/server/enterprise/MiscPolicy;->enforceSecurityPermission()I

    .line 1326
    iget-object v3, p0, Lcom/android/server/enterprise/MiscPolicy;->mClipboard:Landroid/content/ClipboardManager;

    if-nez v3, :cond_0

    .line 1327
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1328
    iget-object v3, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ClipboardManager;

    iput-object v3, p0, Lcom/android/server/enterprise/MiscPolicy;->mClipboard:Landroid/content/ClipboardManager;

    .line 1333
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1336
    .local v1, token:J
    iget-object v3, p0, Lcom/android/server/enterprise/MiscPolicy;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v3}, Landroid/content/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1337
    iget-object v3, p0, Lcom/android/server/enterprise/MiscPolicy;->mClipboard:Landroid/content/ClipboardManager;

    invoke-virtual {v3}, Landroid/content/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1341
    .local v0, tempReturn:Ljava/lang/String;
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1343
    return-object v0

    .line 1339
    .end local v0           #tempReturn:Ljava/lang/String;
    :cond_1
    const-string v0, ""

    .restart local v0       #tempReturn:Ljava/lang/String;
    goto :goto_0
.end method

.method public getCurrentLockScreenString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 812
    invoke-direct {p0}, Lcom/android/server/enterprise/MiscPolicy;->enforceSecurityPermission()I

    .line 813
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 814
    .local v3, token:J
    iget-object v5, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_owner_info_enabled"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 816
    .local v0, enabled:I
    const/4 v1, 0x0

    .line 817
    .local v1, lScreenTxt:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/enterprise/MiscPolicy;->isAdminLockScreenStringSet()Z

    move-result v2

    .line 818
    .local v2, restricted:Z
    if-ne v2, v7, :cond_0

    if-ne v0, v7, :cond_0

    .line 825
    iget-object v5, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_owner_info"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 828
    :cond_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 830
    return-object v1
.end method

.method public getLastSimChangeInfo()Landroid/app/enterprise/SimChangeInfo;
    .locals 7

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/android/server/enterprise/MiscPolicy;->enforceSecurityPermission()I

    .line 344
    :try_start_0
    new-instance v1, Landroid/app/enterprise/SimChangeInfo;

    invoke-direct {v1}, Landroid/app/enterprise/SimChangeInfo;-><init>()V

    .line 345
    .local v1, sci:Landroid/app/enterprise/SimChangeInfo;
    const-string v4, "SimChangeTime"

    const-string v5, "/data/system/SimCard.dat"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 347
    .local v3, tmp:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 348
    const-string v3, "-1"

    .line 349
    :cond_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/app/enterprise/SimChangeInfo;->changeTime:J

    .line 350
    new-instance v4, Landroid/app/enterprise/SimInfo;

    invoke-direct {v4}, Landroid/app/enterprise/SimInfo;-><init>()V

    iput-object v4, v1, Landroid/app/enterprise/SimChangeInfo;->previousSimInfo:Landroid/app/enterprise/SimInfo;

    .line 351
    iget-object v4, v1, Landroid/app/enterprise/SimChangeInfo;->previousSimInfo:Landroid/app/enterprise/SimInfo;

    const-string v5, "PreviousSimCountryIso"

    const-string v6, "/data/system/SimCard.dat"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/app/enterprise/SimInfo;->countryIso:Ljava/lang/String;

    .line 354
    iget-object v4, v1, Landroid/app/enterprise/SimChangeInfo;->previousSimInfo:Landroid/app/enterprise/SimInfo;

    const-string v5, "PreviousSimOperatorName"

    const-string v6, "/data/system/SimCard.dat"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/app/enterprise/SimInfo;->operatorName:Ljava/lang/String;

    .line 357
    iget-object v4, v1, Landroid/app/enterprise/SimChangeInfo;->previousSimInfo:Landroid/app/enterprise/SimInfo;

    const-string v5, "PreviousSimOperator"

    const-string v6, "/data/system/SimCard.dat"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/app/enterprise/SimInfo;->operator:Ljava/lang/String;

    .line 359
    iget-object v4, v1, Landroid/app/enterprise/SimChangeInfo;->previousSimInfo:Landroid/app/enterprise/SimInfo;

    const-string v5, "PreviousSimPhoneNumber"

    const-string v6, "/data/system/SimCard.dat"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/app/enterprise/SimInfo;->phoneNumber:Ljava/lang/String;

    .line 362
    iget-object v4, v1, Landroid/app/enterprise/SimChangeInfo;->previousSimInfo:Landroid/app/enterprise/SimInfo;

    const-string v5, "PreviousSimSerialNumber"

    const-string v6, "/data/system/SimCard.dat"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/app/enterprise/SimInfo;->serialNumber:Ljava/lang/String;

    .line 366
    const-string v4, "SimChangeOperation"

    const-string v5, "/data/system/SimCard.dat"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 368
    if-nez v3, :cond_1

    .line 369
    const-string v3, "-1"

    .line 370
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Landroid/app/enterprise/SimChangeInfo;->changeOperation:I

    .line 372
    iget-object v4, p0, Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 374
    .local v2, tm:Landroid/telephony/TelephonyManager;
    new-instance v4, Landroid/app/enterprise/SimInfo;

    invoke-direct {v4}, Landroid/app/enterprise/SimInfo;-><init>()V

    iput-object v4, v1, Landroid/app/enterprise/SimChangeInfo;->currentSimInfo:Landroid/app/enterprise/SimInfo;

    .line 375
    iget-object v4, v1, Landroid/app/enterprise/SimChangeInfo;->currentSimInfo:Landroid/app/enterprise/SimInfo;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/app/enterprise/SimInfo;->countryIso:Ljava/lang/String;

    .line 376
    iget-object v4, v1, Landroid/app/enterprise/SimChangeInfo;->currentSimInfo:Landroid/app/enterprise/SimInfo;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/app/enterprise/SimInfo;->operatorName:Ljava/lang/String;

    .line 377
    iget-object v4, v1, Landroid/app/enterprise/SimChangeInfo;->currentSimInfo:Landroid/app/enterprise/SimInfo;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/app/enterprise/SimInfo;->operator:Ljava/lang/String;

    .line 378
    iget-object v4, v1, Landroid/app/enterprise/SimChangeInfo;->currentSimInfo:Landroid/app/enterprise/SimInfo;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/app/enterprise/SimInfo;->phoneNumber:Ljava/lang/String;

    .line 379
    iget-object v4, v1, Landroid/app/enterprise/SimChangeInfo;->currentSimInfo:Landroid/app/enterprise/SimInfo;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/app/enterprise/SimInfo;->serialNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    .end local v1           #sci:Landroid/app/enterprise/SimChangeInfo;
    .end local v2           #tm:Landroid/telephony/TelephonyManager;
    .end local v3           #tmp:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 385
    new-instance v1, Landroid/app/enterprise/SimChangeInfo;

    invoke-direct {v1}, Landroid/app/enterprise/SimChangeInfo;-><init>()V

    goto :goto_0
.end method

.method public getSystemActiveFont()Ljava/lang/String;
    .locals 1

    .prologue
    .line 946
    invoke-direct {p0}, Lcom/android/server/enterprise/MiscPolicy;->GetSystemFontChanger()Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;->getSystemActiveFont()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemFonts()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 956
    invoke-direct {p0}, Lcom/android/server/enterprise/MiscPolicy;->GetSystemFontChanger()Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;->getSystemFonts()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 1238
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 1244
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 1255
    return-void
.end method

.method public setRingerBytes([BLjava/lang/String;)V
    .locals 9
    .parameter "buffer"
    .parameter "mimeType"

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/android/server/enterprise/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v5

    const-string v6, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v5, v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 180
    const/4 v2, 0x0

    .line 182
    .local v2, outStream:Ljava/io/OutputStream;
    if-eqz p1, :cond_0

    :try_start_0
    array-length v5, p1

    if-lez v5, :cond_0

    if-nez p2, :cond_2

    .line 183
    :cond_0
    const-string v5, "MiscPolicy"

    const-string v6, "setRingerBytes: Invalid parameter(s)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    if-eqz v2, :cond_1

    .line 205
    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 212
    :cond_1
    :goto_0
    return-void

    .line 187
    :cond_2
    :try_start_2
    const-string v4, "/data/system/custom.ogg"

    .line 189
    .local v4, path:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 192
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 194
    :cond_3
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 195
    .end local v2           #outStream:Ljava/io/OutputStream;
    .local v3, outStream:Ljava/io/OutputStream;
    :try_start_3
    invoke-virtual {v3, p1}, Ljava/io/OutputStream;->write([B)V

    .line 196
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 197
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1ff

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-static {v5, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 199
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, p2}, Lcom/android/server/enterprise/MiscPolicy;->updateDatabase(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 204
    if-eqz v3, :cond_4

    .line 205
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_4
    :goto_1
    move-object v2, v3

    .line 211
    .end local v3           #outStream:Ljava/io/OutputStream;
    .restart local v2       #outStream:Ljava/io/OutputStream;
    goto :goto_0

    .line 200
    .end local v1           #file:Ljava/io/File;
    .end local v4           #path:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 201
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 204
    if-eqz v2, :cond_1

    .line 205
    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 207
    :catch_1
    move-exception v0

    .line 208
    .local v0, e:Ljava/io/IOException;
    const-string v5, "MiscPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setRingerBytes EX: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 203
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 204
    :goto_4
    if-eqz v2, :cond_5

    .line 205
    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 203
    :cond_5
    :goto_5
    throw v5

    .line 207
    :catch_2
    move-exception v0

    .line 208
    .restart local v0       #e:Ljava/io/IOException;
    const-string v6, "MiscPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setRingerBytes EX: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 207
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 208
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "MiscPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setRingerBytes EX: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 207
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #outStream:Ljava/io/OutputStream;
    .restart local v1       #file:Ljava/io/File;
    .restart local v3       #outStream:Ljava/io/OutputStream;
    .restart local v4       #path:Ljava/lang/String;
    :catch_4
    move-exception v0

    .line 208
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "MiscPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setRingerBytes EX: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 203
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #outStream:Ljava/io/OutputStream;
    .restart local v2       #outStream:Ljava/io/OutputStream;
    goto :goto_4

    .line 200
    .end local v2           #outStream:Ljava/io/OutputStream;
    .restart local v3       #outStream:Ljava/io/OutputStream;
    :catch_5
    move-exception v0

    move-object v2, v3

    .end local v3           #outStream:Ljava/io/OutputStream;
    .restart local v2       #outStream:Ljava/io/OutputStream;
    goto :goto_2
.end method

.method public setRingerFilePath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "aRingtonefilePath"
    .parameter "aMmimeType"

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/android/server/enterprise/MiscPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    const-string v2, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 157
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 158
    :cond_0
    const-string v1, "MiscPolicy"

    const-string v2, "setRingerFilePath param null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :goto_0
    return-void

    .line 162
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/MiscPolicy;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 164
    .local v0, lRingToneData:[B
    if-eqz v0, :cond_2

    .line 165
    const-string v1, "MiscPolicy"

    const-string v2, "setRingerFilePath file read successfully: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {p0, v0, p2}, Lcom/android/server/enterprise/MiscPolicy;->setRingerBytes([BLjava/lang/String;)V

    .line 171
    :goto_1
    const-string v1, "MiscPolicy"

    const-string v2, "setRingerFilePath : ringtone return "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 168
    :cond_2
    const-string v1, "MiscPolicy"

    const-string v2, "setRingerFilePath file reading failed "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setSystemActiveFont(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "fontName"
    .parameter "apkPath"

    .prologue
    .line 935
    invoke-direct {p0}, Lcom/android/server/enterprise/MiscPolicy;->enforceSecurityPermission()I

    .line 936
    invoke-direct {p0}, Lcom/android/server/enterprise/MiscPolicy;->GetSystemFontChanger()Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;->setSystemActiveFont(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 1250
    return-void
.end method
