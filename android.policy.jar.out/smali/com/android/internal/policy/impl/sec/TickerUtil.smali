.class public Lcom/android/internal/policy/impl/sec/TickerUtil;
.super Ljava/lang/Object;
.source "TickerUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sec/TickerUtil$SinaNewsColumns;,
        Lcom/android/internal/policy/impl/sec/TickerUtil$YahooNewsColumns;,
        Lcom/android/internal/policy/impl/sec/TickerUtil$SinaNewsHeadColumns;,
        Lcom/android/internal/policy/impl/sec/TickerUtil$YahooNewsHeadColumns;,
        Lcom/android/internal/policy/impl/sec/TickerUtil$SinaNewsConstants;,
        Lcom/android/internal/policy/impl/sec/TickerUtil$NewsConstants;,
        Lcom/android/internal/policy/impl/sec/TickerUtil$StockConstants;,
        Lcom/android/internal/policy/impl/sec/TickerUtil$SinaweiboConstants;,
        Lcom/android/internal/policy/impl/sec/TickerUtil$FacebookConstants;,
        Lcom/android/internal/policy/impl/sec/TickerUtil$FacebookData;,
        Lcom/android/internal/policy/impl/sec/TickerUtil$StockItem;,
        Lcom/android/internal/policy/impl/sec/TickerUtil$NewsData;,
        Lcom/android/internal/policy/impl/sec/TickerUtil$TickerStatus;,
        Lcom/android/internal/policy/impl/sec/TickerUtil$StockDemon;,
        Lcom/android/internal/policy/impl/sec/TickerUtil$TickerSlidingSpeed;
    }
.end annotation


# static fields
.field public static final DBG_FB:Z = true

.field private static TAG:Ljava/lang/String;

.field private static calendar:Ljava/util/GregorianCalendar;

.field private static currentDay:Ljava/lang/String;

.field private static currentMonth:Ljava/lang/String;

.field private static currentYear:Ljava/lang/String;

.field private static mFacebookUpdateDate:Ljava/lang/String;

.field private static mNewsUpdateDate:Ljava/lang/String;

.field private static mStockUpdateDate:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    const-string v0, "Ticker"

    sput-object v0, Lcom/android/internal/policy/impl/sec/TickerUtil;->TAG:Ljava/lang/String;

    .line 26
    sput-object v1, Lcom/android/internal/policy/impl/sec/TickerUtil;->mNewsUpdateDate:Ljava/lang/String;

    .line 27
    sput-object v1, Lcom/android/internal/policy/impl/sec/TickerUtil;->mStockUpdateDate:Ljava/lang/String;

    .line 28
    sput-object v1, Lcom/android/internal/policy/impl/sec/TickerUtil;->mFacebookUpdateDate:Ljava/lang/String;

    .line 30
    sput-object v1, Lcom/android/internal/policy/impl/sec/TickerUtil;->calendar:Ljava/util/GregorianCalendar;

    .line 31
    sput-object v1, Lcom/android/internal/policy/impl/sec/TickerUtil;->currentYear:Ljava/lang/String;

    .line 32
    sput-object v1, Lcom/android/internal/policy/impl/sec/TickerUtil;->currentMonth:Ljava/lang/String;

    .line 33
    sput-object v1, Lcom/android/internal/policy/impl/sec/TickerUtil;->currentDay:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 714
    return-void
.end method

.method public static formatTimeStampStringDate(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "when"

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 56
    .local v0, result:Ljava/lang/StringBuffer;
    invoke-static {p0}, Lcom/android/internal/policy/impl/sec/TickerUtil;->getCurrent_DATE_FORMAT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, value:Ljava/lang/String;
    const-string v2, "yyyy-MM-dd"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "MM-dd-yyyy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 58
    :cond_0
    const-string v1, "MM/dd"

    .line 62
    :cond_1
    :goto_0
    invoke-static {v1, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 59
    :cond_2
    const-string v2, "dd-MM-yyyy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    const-string v1, "dd/MM"

    goto :goto_0
.end method

.method public static formatTimeStampStringTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "when"

    .prologue
    .line 48
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 49
    .local v1, result:Ljava/lang/StringBuffer;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 50
    .local v0, date:Ljava/util/Date;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getCurrent_DATE_FORMAT(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .parameter "context"

    .prologue
    .line 68
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v5, result:Ljava/lang/StringBuilder;
    const-string v6, "yyyy"

    .line 70
    .local v6, year:Ljava/lang/String;
    const-string v4, "MM"

    .line 71
    .local v4, month:Ljava/lang/String;
    const-string v0, "dd"

    .line 72
    .local v0, day:Ljava/lang/String;
    const-string v1, "-"

    .line 74
    .local v1, divider:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v2

    .line 75
    .local v2, formatArray:[C
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v7, v2

    if-ge v3, v7, :cond_4

    .line 76
    aget-char v7, v2, v3

    const/16 v8, 0x79

    if-ne v7, v8, :cond_0

    .line 77
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    :cond_0
    aget-char v7, v2, v3

    const/16 v8, 0x4d

    if-ne v7, v8, :cond_1

    .line 80
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    :cond_1
    aget-char v7, v2, v3

    const/16 v8, 0x64

    if-ne v7, v8, :cond_2

    .line 83
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :cond_2
    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    if-eq v3, v7, :cond_3

    .line 86
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 88
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static getDefaultLanguage(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 512
    const-string v0, ""

    .line 513
    .local v0, defaultLanguage:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 515
    return-object v0
.end method

.method private static getDefaultNews(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "ctx"
    .parameter "region"

    .prologue
    const/4 v4, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 92
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sn_daemon_service_key_set_default_news"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 95
    .local v10, sinaCategory:Ljava/lang/String;
    if-nez v10, :cond_0

    .line 96
    const-string v10, "0"

    .line 97
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/sec/TickerUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SinanewsCategory]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v10

    .line 127
    .end local v10           #sinaCategory:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v6

    .line 101
    :cond_2
    const/4 v6, 0x0

    .line 102
    .local v6, DefaultNews:Ljava/lang/String;
    const-string v0, "\\/"

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 103
    .local v7, code:[Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 104
    .local v9, sb:Ljava/lang/StringBuffer;
    const-string v0, "REGION"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    const-string v0, " = ? AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    const-string v0, "LANG"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    const-string v0, " = ? AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    const-string v0, "TITLE"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    const-string v0, " = ? "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    array-length v0, v7

    if-lt v0, v13, :cond_1

    .line 114
    const/4 v8, 0x0

    .line 115
    .local v8, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/policy/impl/sec/TickerUtil$YahooNewsHeadColumns;->TABLE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/policy/impl/sec/TickerUtil$YahooNewsHeadColumns;->HEADER_COLS:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    aget-object v5, v7, v11

    aput-object v5, v4, v11

    aget-object v5, v7, v12

    aput-object v5, v4, v12

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v11, "yh_daemon_service_key_set_default_news"

    invoke-static {v5, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v13

    const-string v5, "ORDERED ASC,_id ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 119
    if-eqz v8, :cond_1

    .line 120
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 122
    :cond_3
    const-string v0, "CATEGORY"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 123
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 125
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method static getFacebookData(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 13
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/sec/TickerUtil$FacebookData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 202
    sget-object v0, Lcom/android/internal/policy/impl/sec/TickerUtil;->TAG:Ljava/lang/String;

    const-string v1, "getFacebookData()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v10, mFacebookArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/sec/TickerUtil$FacebookData;>;"
    invoke-static {}, Lcom/android/internal/policy/impl/sec/TickerUtil;->setCurrentDateTime()V

    .line 207
    const/4 v9, 0x0

    .line 209
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz p0, :cond_2

    .line 210
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 211
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/policy/impl/sec/TickerUtil$SinaweiboConstants;->TABLE_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 216
    :goto_0
    if-eqz v9, :cond_4

    .line 217
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    :cond_0
    new-instance v11, Lcom/android/internal/policy/impl/sec/TickerUtil$FacebookData;

    invoke-direct {v11}, Lcom/android/internal/policy/impl/sec/TickerUtil$FacebookData;-><init>()V

    .line 221
    .local v11, mFacebookData:Lcom/android/internal/policy/impl/sec/TickerUtil$FacebookData;
    const/4 v12, 0x0

    .line 223
    .local v12, mTemp:Ljava/lang/String;
    const-string v0, "message"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/android/internal/policy/impl/sec/TickerUtil$FacebookData;->FacebookContents:Ljava/lang/String;

    .line 229
    const-string v0, "create_time"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 230
    invoke-static {p0, v12}, Lcom/android/internal/policy/impl/sec/TickerUtil;->setFacebookDateFormat(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/android/internal/policy/impl/sec/TickerUtil$FacebookData;->FacebookCreatedTime:Ljava/lang/String;

    .line 232
    const-string v0, "from_name"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/android/internal/policy/impl/sec/TickerUtil$FacebookData;->FacebookFromName:Ljava/lang/String;

    .line 234
    const-string v0, "post_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/android/internal/policy/impl/sec/TickerUtil$FacebookData;->FacebookPostID:Ljava/lang/String;

    .line 237
    const-string v0, "updated_time"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 238
    .local v6, FacebookTime:J
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 239
    .local v8, FacebookUpdatedTime_buf:Ljava/lang/StringBuffer;
    const-string v0, "  "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 240
    invoke-static {p0, v6, v7}, Lcom/android/internal/policy/impl/sec/TickerUtil;->formatTimeStampStringDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    const-string v0, "  "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    invoke-static {p0, v6, v7}, Lcom/android/internal/policy/impl/sec/TickerUtil;->formatTimeStampStringTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 243
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/sec/TickerUtil;->mFacebookUpdateDate:Ljava/lang/String;

    .line 245
    sget-object v0, Lcom/android/internal/policy/impl/sec/TickerUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v11, Lcom/android/internal/policy/impl/sec/TickerUtil$FacebookData;->FacebookContents:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    sget-object v0, Lcom/android/internal/policy/impl/sec/TickerUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create_time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v11, Lcom/android/internal/policy/impl/sec/TickerUtil$FacebookData;->FacebookCreatedTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    sget-object v0, Lcom/android/internal/policy/impl/sec/TickerUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "from_name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v11, Lcom/android/internal/policy/impl/sec/TickerUtil$FacebookData;->FacebookFromName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    sget-object v0, Lcom/android/internal/policy/impl/sec/TickerUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "post_id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v11, Lcom/android/internal/policy/impl/sec/TickerUtil$FacebookData;->FacebookPostID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    sget-object v0, Lcom/android/internal/policy/impl/sec/TickerUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updated_time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/policy/impl/sec/TickerUtil;->mFacebookUpdateDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    .end local v6           #FacebookTime:J
    .end local v8           #FacebookUpdatedTime_buf:Ljava/lang/StringBuffer;
    .end local v11           #mFacebookData:Lcom/android/internal/policy/impl/sec/TickerUtil$FacebookData;
    .end local v12           #mTemp:Ljava/lang/String;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v2, v10

    .line 262
    :goto_1
    return-object v2

    .line 213
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/policy/impl/sec/TickerUtil$FacebookConstants;->TABLE_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto/16 :goto_0

    .line 257
    :cond_4
    sget-object v0, Lcom/android/internal/policy/impl/sec/TickerUtil;->TAG:Ljava/lang/String;

    const-string v1, "getFacebookData() cursor no data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static getFacebookUpdateDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/android/internal/policy/impl/sec/TickerUtil;->mFacebookUpdateDate:Ljava/lang/String;

    return-object v0
.end method

.method static getNewsData(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 21
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/sec/TickerUtil$NewsData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    if-nez p0, :cond_0

    .line 267
    const/16 v17, 0x0

    .line 359
    :goto_0
    return-object v17

    .line 269
    :cond_0
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v17, mNewArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/sec/TickerUtil$NewsData;>;"
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 274
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sn_daemon_service_key_set_default_news"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 278
    .local v16, defaultNews:Ljava/lang/String;
    :goto_1
    sget-object v1, Lcom/android/internal/policy/impl/sec/TickerUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "defaultNews = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v15, 0x0

    .line 282
    .local v15, cursor:Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "yh_daemon_service_key_regions"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 283
    .local v13, city:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 284
    const-string v13, "cn/zh"

    .line 286
    :cond_1
    if-nez v13, :cond_3

    .line 287
    const/16 v17, 0x0

    goto :goto_0

    .line 276
    .end local v13           #city:Ljava/lang/String;
    .end local v15           #cursor:Landroid/database/Cursor;
    .end local v16           #defaultNews:Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "yh_daemon_service_key_set_default_news"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .restart local v16       #defaultNews:Ljava/lang/String;
    goto :goto_1

    .line 289
    .restart local v13       #city:Ljava/lang/String;
    .restart local v15       #cursor:Landroid/database/Cursor;
    :cond_3
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/internal/policy/impl/sec/TickerUtil;->getDefaultNews(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 291
    .local v14, currentdefaultNews:Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    .line 292
    .local v19, sb:Ljava/lang/StringBuffer;
    const-string v1, "NEWS_CATEGORY"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 293
    const-string v1, " = ? "

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 296
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/internal/policy/impl/sec/TickerUtil$SinaNewsColumns;->SINA_TABLE_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/internal/policy/impl/sec/TickerUtil$SinaNewsColumns;->CONTENTS_COLS:[Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v5, v6

    const-string v6, "NEWS_PUBDATE DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 303
    :goto_2
    if-eqz v15, :cond_9

    .line 304
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 307
    :cond_4
    new-instance v18, Lcom/android/internal/policy/impl/sec/TickerUtil$NewsData;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/policy/impl/sec/TickerUtil$NewsData;-><init>()V

    .line 309
    .local v18, mNewsData:Lcom/android/internal/policy/impl/sec/TickerUtil$NewsData;
    const-string v1, "NEWS_TITLE"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    iput-object v1, v0, Lcom/android/internal/policy/impl/sec/TickerUtil$NewsData;->NewsTitle:Ljava/lang/String;

    .line 311
    const-string v1, "NEWS_CONTENTTEXT"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    iput-object v1, v0, Lcom/android/internal/policy/impl/sec/TickerUtil$NewsData;->NewsContentText:Ljava/lang/String;

    .line 313
    const-string v1, "NEWS_CREDIT"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    iput-object v1, v0, Lcom/android/internal/policy/impl/sec/TickerUtil$NewsData;->NewsCredit:Ljava/lang/String;

    .line 317
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 318
    const-string v1, "NEWS_DATE"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 322
    .local v7, NewsPublishTime:J
    :goto_3
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 323
    .local v11, NewsTime_buf:Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    invoke-static {v0, v7, v8}, Lcom/android/internal/policy/impl/sec/TickerUtil;->formatTimeStampStringDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    const-string v1, "  "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    move-object/from16 v0, p0

    invoke-static {v0, v7, v8}, Lcom/android/internal/policy/impl/sec/TickerUtil;->formatTimeStampStringTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 326
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    iput-object v1, v0, Lcom/android/internal/policy/impl/sec/TickerUtil$NewsData;->NewsPublishTime:Ljava/lang/String;

    .line 331
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 332
    const-string v1, "NEWS_TIME"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 336
    .local v9, NewsTime:J
    :goto_4
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 337
    .local v12, NewsUpdatedTime_buf:Ljava/lang/StringBuffer;
    const-string v1, "  "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 338
    move-object/from16 v0, p0

    invoke-static {v0, v9, v10}, Lcom/android/internal/policy/impl/sec/TickerUtil;->formatTimeStampStringDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 339
    const-string v1, "  "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 340
    move-object/from16 v0, p0

    invoke-static {v0, v9, v10}, Lcom/android/internal/policy/impl/sec/TickerUtil;->formatTimeStampStringTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 341
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    iput-object v1, v0, Lcom/android/internal/policy/impl/sec/TickerUtil$NewsData;->NewsTime:Ljava/lang/String;

    .line 344
    const-string v1, "NEWS_LINK"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    iput-object v1, v0, Lcom/android/internal/policy/impl/sec/TickerUtil$NewsData;->NewsURL:Ljava/lang/String;

    .line 345
    sget-object v1, Lcom/android/internal/policy/impl/sec/TickerUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NewsURL = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/TickerUtil$NewsData;->NewsURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/policy/impl/sec/TickerUtil;->mNewsUpdateDate:Ljava/lang/String;

    .line 348
    sget-object v1, Lcom/android/internal/policy/impl/sec/TickerUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNewsUpdateDate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/policy/impl/sec/TickerUtil;->mNewsUpdateDate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_4

    .line 354
    .end local v7           #NewsPublishTime:J
    .end local v9           #NewsTime:J
    .end local v11           #NewsTime_buf:Ljava/lang/StringBuffer;
    .end local v12           #NewsUpdatedTime_buf:Ljava/lang/StringBuffer;
    .end local v18           #mNewsData:Lcom/android/internal/policy/impl/sec/TickerUtil$NewsData;
    :cond_5
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 299
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/internal/policy/impl/sec/TickerUtil$YahooNewsColumns;->TABLE_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/internal/policy/impl/sec/TickerUtil$YahooNewsColumns;->CONTENTS_COLS:[Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v14, v5, v6

    const-string v6, "NEWS_PUBDATE DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto/16 :goto_2

    .line 320
    .restart local v18       #mNewsData:Lcom/android/internal/policy/impl/sec/TickerUtil$NewsData;
    :cond_7
    const-string v1, "NEWS_PUBDATE"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .restart local v7       #NewsPublishTime:J
    goto/16 :goto_3

    .line 334
    .restart local v11       #NewsTime_buf:Ljava/lang/StringBuffer;
    :cond_8
    const-string v1, "NEWS_TIME"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .restart local v9       #NewsTime:J
    goto/16 :goto_4

    .line 356
    .end local v7           #NewsPublishTime:J
    .end local v9           #NewsTime:J
    .end local v11           #NewsTime_buf:Ljava/lang/StringBuffer;
    .end local v18           #mNewsData:Lcom/android/internal/policy/impl/sec/TickerUtil$NewsData;
    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method static getNewsUpdateDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/android/internal/policy/impl/sec/TickerUtil;->mNewsUpdateDate:Ljava/lang/String;

    return-object v0
.end method

.method static getStockData(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 20
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/sec/TickerUtil$StockItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 364
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 365
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v11, 0x0

    .line 366
    .local v11, cursor:Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 368
    .local v16, pm:Landroid/content/pm/PackageManager;
    const/4 v13, 0x0

    .line 370
    .local v13, isEdaily:Z
    const/4 v14, 0x0

    .line 372
    .local v14, isSina:Z
    const/16 v17, 0x0

    .line 376
    .local v17, stockdemon:Lcom/android/internal/policy/impl/sec/TickerUtil$StockDemon;
    :try_start_0
    const-string v2, "com.sec.android.daemonapp.ap.yahoostock.stockclock"

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 377
    const-string v2, "content://com.sec.android.daemonapp.ap.yahoostock.stockclock/maininfo"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 378
    sget-object v17, Lcom/android/internal/policy/impl/sec/TickerUtil$StockDemon;->Yahoo:Lcom/android/internal/policy/impl/sec/TickerUtil$StockDemon;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :goto_0
    :try_start_1
    const-string v2, "com.sec.android.daemonapp.stockclock"

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 386
    const-string v2, "content://com.sec.android.daemonapp.stockclock/daemoninfo"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 387
    sget-object v17, Lcom/android/internal/policy/impl/sec/TickerUtil$StockDemon;->Edaily:Lcom/android/internal/policy/impl/sec/TickerUtil$StockDemon;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 394
    :goto_1
    :try_start_2
    const-string v2, "com.sec.android.daemonapp.ap.sinastock.stockclock"

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 395
    const-string v2, "content://com.sec.android.daemonapp.ap.sinastock.stockclock/daemoninfo"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 396
    sget-object v17, Lcom/android/internal/policy/impl/sec/TickerUtil$StockDemon;->Sina:Lcom/android/internal/policy/impl/sec/TickerUtil$StockDemon;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 397
    const/4 v14, 0x1

    .line 402
    :goto_2
    if-nez v17, :cond_0

    .line 403
    sget-object v2, Lcom/android/internal/policy/impl/sec/TickerUtil;->TAG:Ljava/lang/String;

    const-string v3, "There is no stock daemon."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/16 v18, 0x0

    .line 508
    :goto_3
    return-object v18

    .line 379
    :catch_0
    move-exception v12

    .line 380
    .local v12, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/internal/policy/impl/sec/TickerUtil;->TAG:Ljava/lang/String;

    const-string v3, "[NameNotFoundException] Yahoo daemon not installed !!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 388
    .end local v12           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v10

    .line 389
    .local v10, common:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/internal/policy/impl/sec/TickerUtil;->TAG:Ljava/lang/String;

    const-string v3, "[NameNotFoundException] Edayly daemon not installed !!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 398
    .end local v10           #common:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v10

    .line 399
    .restart local v10       #common:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/internal/policy/impl/sec/TickerUtil;->TAG:Ljava/lang/String;

    const-string v3, "[NameNotFoundException] Sina daemon not installed !!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 407
    .end local v10           #common:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 408
    .local v18, stocklist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/sec/TickerUtil$StockItem;>;"
    if-eqz v11, :cond_10

    .line 410
    invoke-interface {v11}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    .line 411
    const/4 v13, 0x1

    .line 413
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 416
    :cond_2
    new-instance v15, Lcom/android/internal/policy/impl/sec/TickerUtil$StockItem;

    invoke-direct {v15}, Lcom/android/internal/policy/impl/sec/TickerUtil$StockItem;-><init>()V

    .line 417
    .local v15, mStockItem:Lcom/android/internal/policy/impl/sec/TickerUtil$StockItem;
    const/16 v19, 0x0

    .line 418
    .local v19, value:Ljava/lang/String;
    const/4 v2, 0x1

    if-ne v13, v2, :cond_5

    .line 420
    invoke-static/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/TickerUtil;->getDefaultLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "en"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 421
    const-string v2, "NAME"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/android/internal/policy/impl/sec/TickerUtil$StockItem;->name:Ljava/lang/String;

    .line 425
    :goto_4
    const-string v2, "CURRENT_PRICE"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/android/internal/policy/impl/sec/TickerUtil$StockItem;->price:Ljava/lang/String;

    .line 426
    const-string v2, "CHANGE_PRICE"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/android/internal/policy/impl/sec/TickerUtil$StockItem;->change:Ljava/lang/String;

    .line 427
    const-string v2, "CHANGE_PERCENT"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/android/internal/policy/impl/sec/TickerUtil$StockItem;->changePercent:Ljava/lang/String;

    .line 429
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    :goto_5
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 503
    .end local v15           #mStockItem:Lcom/android/internal/policy/impl/sec/TickerUtil$StockItem;
    .end local v19           #value:Ljava/lang/String;
    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 423
    .restart local v15       #mStockItem:Lcom/android/internal/policy/impl/sec/TickerUtil$StockItem;
    .restart local v19       #value:Ljava/lang/String;
    :cond_4
    const-string v2, "HNAME"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/android/internal/policy/impl/sec/TickerUtil$StockItem;->name:Ljava/lang/String;

    goto :goto_4

    .line 432
    :cond_5
    const-string v2, "NAME"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 433
    const-string v2, "\n"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6

    .line 434
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    .line 435
    :cond_6
    move-object/from16 v0, v19

    iput-object v0, v15, Lcom/android/internal/policy/impl/sec/TickerUtil$StockItem;->name:Ljava/lang/String;

    .line 436
    const/4 v2, 0x1

    if-ne v14, v2, :cond_e

    .line 437
    const-string v2, "PRICE"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 438
    sget-object v2, Lcom/android/internal/policy/impl/sec/TickerUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CHANGE : value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const-string v2, "-"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 441
    const-string v19, "0.0"

    .line 442
    sget-object v2, Lcom/android/internal/policy/impl/sec/TickerUtil;->TAG:Ljava/lang/String;

    const-string v3, "change PRICE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_7
    :goto_6
    const-string v2, "\n"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_8

    .line 449
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    .line 450
    :cond_8
    move-object/from16 v0, v19

    iput-object v0, v15, Lcom/android/internal/policy/impl/sec/TickerUtil$StockItem;->price:Ljava/lang/String;

    .line 451
    const/4 v2, 0x1

    if-ne v14, v2, :cond_f

    .line 452
    const-string v2, "CHANGE"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 453
    sget-object v2, Lcom/android/internal/policy/impl/sec/TickerUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CHANGE : value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const-string v2, "-"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 456
    const-string v19, "0.0"

    .line 457
    sget-object v2, Lcom/android/internal/policy/impl/sec/TickerUtil;->TAG:Ljava/lang/String;

    const-string v3, "change CHANGE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_9
    :goto_7
    const-string v2, "\n"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_a

    .line 464
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    .line 465
    :cond_a
    move-object/from16 v0, v19

    iput-object v0, v15, Lcom/android/internal/policy/impl/sec/TickerUtil$StockItem;->change:Ljava/lang/String;

    .line 467
    const-string v2, "CHANGE_PERCENT"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 468
    const/4 v2, 0x1

    if-ne v14, v2, :cond_b

    .line 469
    sget-object v2, Lcom/android/internal/policy/impl/sec/TickerUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CHANGE_PERCENT : value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const-string v2, "-"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 472
    const-string v19, "0.0"

    .line 473
    sget-object v2, Lcom/android/internal/policy/impl/sec/TickerUtil;->TAG:Ljava/lang/String;

    const-string v3, "change CHANGE_PERCENT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_b
    const-string v2, "\n"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_c

    .line 477
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    .line 478
    :cond_c
    move-object/from16 v0, v19

    iput-object v0, v15, Lcom/android/internal/policy/impl/sec/TickerUtil$StockItem;->changePercent:Ljava/lang/String;

    .line 480
    const-string v2, "UPDATE_DATE"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 483
    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 484
    .local v7, NewsTime:J
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 485
    .local v9, NewsUpdatedTime_buf:Ljava/lang/StringBuffer;
    const-string v2, "  "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 486
    move-object/from16 v0, p0

    invoke-static {v0, v7, v8}, Lcom/android/internal/policy/impl/sec/TickerUtil;->formatTimeStampStringDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 487
    const-string v2, "  "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 488
    move-object/from16 v0, p0

    invoke-static {v0, v7, v8}, Lcom/android/internal/policy/impl/sec/TickerUtil;->formatTimeStampStringTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 489
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/android/internal/policy/impl/sec/TickerUtil$StockItem;->updateDate:Ljava/lang/String;

    .line 490
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/policy/impl/sec/TickerUtil;->mStockUpdateDate:Ljava/lang/String;

    .line 492
    if-nez v14, :cond_d

    .line 494
    const-string v2, "LINK_URL"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/android/internal/policy/impl/sec/TickerUtil$StockItem;->url:Ljava/lang/String;

    .line 496
    sget-object v2, Lcom/android/internal/policy/impl/sec/TickerUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v15, Lcom/android/internal/policy/impl/sec/TickerUtil$StockItem;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_d
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 446
    .end local v7           #NewsTime:J
    .end local v9           #NewsUpdatedTime_buf:Ljava/lang/StringBuffer;
    :cond_e
    const-string v2, "CURRENT_PRICE"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_6

    .line 461
    :cond_f
    const-string v2, "CHANGE_PRICE"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_7

    .line 505
    .end local v15           #mStockItem:Lcom/android/internal/policy/impl/sec/TickerUtil$StockItem;
    .end local v19           #value:Ljava/lang/String;
    :cond_10
    const/16 v18, 0x0

    goto/16 :goto_3
.end method

.method static getStockUpdateDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/android/internal/policy/impl/sec/TickerUtil;->mStockUpdateDate:Ljava/lang/String;

    return-object v0
.end method

.method static setCurrentDateTime()V
    .locals 2

    .prologue
    .line 144
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/sec/TickerUtil;->calendar:Ljava/util/GregorianCalendar;

    .line 145
    const-string v0, "yyyy"

    sget-object v1, Lcom/android/internal/policy/impl/sec/TickerUtil;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/sec/TickerUtil;->currentYear:Ljava/lang/String;

    .line 146
    const-string v0, "MM"

    sget-object v1, Lcom/android/internal/policy/impl/sec/TickerUtil;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/sec/TickerUtil;->currentMonth:Ljava/lang/String;

    .line 147
    const-string v0, "dd"

    sget-object v1, Lcom/android/internal/policy/impl/sec/TickerUtil;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/sec/TickerUtil;->currentDay:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public static setFacebookDateFormat(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "context"
    .parameter "time"

    .prologue
    .line 151
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 152
    .local v5, result:Ljava/lang/StringBuffer;
    move-object v3, p1

    .line 153
    .local v3, mTime:Ljava/lang/String;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {v6, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 154
    .local v6, sdf:Ljava/text/SimpleDateFormat;
    const/4 v0, 0x0

    .line 156
    .local v0, date:Ljava/util/Date;
    :try_start_0
    invoke-virtual {v6, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 161
    :goto_0
    const-string v10, "yyyy"

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 162
    .local v9, year:Ljava/lang/String;
    const-string v10, "MM"

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 163
    .local v4, month:Ljava/lang/String;
    const-string v10, "dd"

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, day:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/internal/policy/impl/sec/TickerUtil;->getCurrent_DATE_FORMAT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 166
    .local v7, value:Ljava/lang/String;
    const/4 v8, 0x0

    .line 167
    .local v8, valuewithyear:Ljava/lang/String;
    const-string v10, "yyyy-MM-dd"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 168
    const-string v7, "MM/dd"

    .line 169
    const-string v8, "yyyy/MM/dd"

    .line 178
    :goto_1
    sget-object v10, Lcom/android/internal/policy/impl/sec/TickerUtil;->calendar:Ljava/util/GregorianCalendar;

    if-nez v10, :cond_0

    .line 179
    new-instance v10, Ljava/util/GregorianCalendar;

    invoke-direct {v10}, Ljava/util/GregorianCalendar;-><init>()V

    sput-object v10, Lcom/android/internal/policy/impl/sec/TickerUtil;->calendar:Ljava/util/GregorianCalendar;

    .line 181
    :cond_0
    sget-object v10, Lcom/android/internal/policy/impl/sec/TickerUtil;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "day : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    sget-object v10, Lcom/android/internal/policy/impl/sec/TickerUtil;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "currentDay : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/internal/policy/impl/sec/TickerUtil;->currentDay:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    sget-object v10, Lcom/android/internal/policy/impl/sec/TickerUtil;->currentYear:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 185
    sget-object v10, Lcom/android/internal/policy/impl/sec/TickerUtil;->currentDay:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    sget-object v10, Lcom/android/internal/policy/impl/sec/TickerUtil;->currentMonth:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 186
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v10

    new-instance v11, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 157
    .end local v1           #day:Ljava/lang/String;
    .end local v4           #month:Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    .end local v8           #valuewithyear:Ljava/lang/String;
    .end local v9           #year:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 158
    .local v2, e:Ljava/text/ParseException;
    sget-object v10, Lcom/android/internal/policy/impl/sec/TickerUtil;->TAG:Ljava/lang/String;

    const-string v11, "parse date ParseException"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_0

    .line 170
    .end local v2           #e:Ljava/text/ParseException;
    .restart local v1       #day:Ljava/lang/String;
    .restart local v4       #month:Ljava/lang/String;
    .restart local v7       #value:Ljava/lang/String;
    .restart local v8       #valuewithyear:Ljava/lang/String;
    .restart local v9       #year:Ljava/lang/String;
    :cond_1
    const-string v10, "MM-dd-yyyy"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 171
    const-string v7, "MM/dd"

    .line 172
    const-string v8, "MM/dd/yyyy"

    goto/16 :goto_1

    .line 174
    :cond_2
    const-string v7, "dd/MM"

    .line 175
    const-string v8, "dd/MM/yyyy"

    goto/16 :goto_1

    .line 188
    :cond_3
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v7, v10, v11}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    const-string v10, "  "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v10

    new-instance v11, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 193
    :cond_4
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v8, v10, v11}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    const-string v10, "  "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v10

    new-instance v11, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method
