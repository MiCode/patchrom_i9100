.class public Lcom/android/internal/policy/impl/sec/TickerUtil$SinaNewsColumns;
.super Ljava/lang/Object;
.source "TickerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/TickerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SinaNewsColumns"
.end annotation


# static fields
.field public static final CONTENTS_COLS:[Ljava/lang/String; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "NEWS_PUBDATE DESC"

.field public static final NEWS_CATEGORY:Ljava/lang/String; = "NEWS_CATEGORY"

.field public static final NEWS_CONTENTTEXT:Ljava/lang/String; = "NEWS_CONTENTTEXT"

.field public static final NEWS_CREDIT:Ljava/lang/String; = "NEWS_CREDIT"

.field public static final NEWS_DATE:Ljava/lang/String; = "NEWS_DATE"

.field public static final NEWS_ID:Ljava/lang/String; = "NEWS_ID"

.field public static final NEWS_IMAGEDATA:Ljava/lang/String; = "NEWS_IMAGEDATA"

.field public static final NEWS_IMAGEURL:Ljava/lang/String; = "NEWS_IMAGEURL"

.field public static final NEWS_INDEX:Ljava/lang/String; = "NEWS_INDEX"

.field public static final NEWS_LANG:Ljava/lang/String; = "NEWS_LANG"

.field public static final NEWS_LINK:Ljava/lang/String; = "NEWS_LINK"

.field public static final NEWS_PUBDATE:Ljava/lang/String; = "NEWS_PUBDATE"

.field public static final NEWS_REGION:Ljava/lang/String; = "NEWS_REGION"

.field public static final NEWS_TIME:Ljava/lang/String; = "NEWS_TIME"

.field public static final NEWS_TITLE:Ljava/lang/String; = "NEWS_TITLE"

.field public static final ROWID:Ljava/lang/String; = "_id"

.field public static final SINA_TABLE_URI:Landroid/net/Uri; = null

.field public static final TABLE:Ljava/lang/String; = "news"

.field public static final UPDATE_STATE:Ljava/lang/String; = "UPDATE_STATE"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 717
    const-string v0, "content://com.sec.android.daemonapp.sinanews.provider/news"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/sec/TickerUtil$SinaNewsColumns;->SINA_TABLE_URI:Landroid/net/Uri;

    .line 739
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "NEWS_CATEGORY"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "NEWS_TITLE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "NEWS_LINK"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "NEWS_IMAGEURL"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "NEWS_CONTENTTEXT"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "NEWS_PUBDATE"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "NEWS_DATE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "NEWS_TIME"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "NEWS_CREDIT"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/sec/TickerUtil$SinaNewsColumns;->CONTENTS_COLS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 714
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
