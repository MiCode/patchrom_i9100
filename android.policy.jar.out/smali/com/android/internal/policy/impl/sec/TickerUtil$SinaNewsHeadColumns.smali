.class public Lcom/android/internal/policy/impl/sec/TickerUtil$SinaNewsHeadColumns;
.super Ljava/lang/Object;
.source "TickerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/TickerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SinaNewsHeadColumns"
.end annotation


# static fields
.field public static final CATEGORY:Ljava/lang/String; = "CATEGORY"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "_id ASC"

.field public static final DEFAULT_SORT_ORDERED:Ljava/lang/String; = "ORDERED ASC"

.field public static final DEFAULT_SORT_ORDERED_DESC:Ljava/lang/String; = "ORDERED DESC"

.field public static final HEADER_COLS:[Ljava/lang/String; = null

.field public static final INDEX_HEAD:Ljava/lang/String; = "INDEX_HEAD"

.field public static final LANG:Ljava/lang/String; = "LANG"

.field public static final ORDERED:Ljava/lang/String; = "ORDERED"

.field public static final REGION:Ljava/lang/String; = "REGION"

.field public static final ROWID:Ljava/lang/String; = "_id"

.field public static final SELECTED:Ljava/lang/String; = "SELECTED"

.field public static final SINA_TABLE_URI:Landroid/net/Uri; = null

.field public static final TABLE:Ljava/lang/String; = "news_xml"

.field public static final TITLE:Ljava/lang/String; = "TITLE"

.field public static final YAHOO_MOBILE_URL:Ljava/lang/String; = "YAHOO_MOBILE_URL"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 651
    const-string v0, "content://com.sec.android.daemonapp.sinanews.provider/news_xml"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/sec/TickerUtil$SinaNewsHeadColumns;->SINA_TABLE_URI:Landroid/net/Uri;

    .line 666
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "INDEX_HEAD"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "YAHOO_MOBILE_URL"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "TITLE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CATEGORY"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "REGION"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "LANG"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SELECTED"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ORDERED"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/sec/TickerUtil$SinaNewsHeadColumns;->HEADER_COLS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 647
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
