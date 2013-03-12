.class public Lcom/android/internal/policy/impl/sec/TickerUtil$SinaweiboConstants;
.super Ljava/lang/Object;
.source "TickerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/TickerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SinaweiboConstants"
.end annotation


# static fields
.field public static final ACTION_SINAWEIBO_DATE_REQUEST:Ljava/lang/String; = "com.android.internal.policy.impl.intent.action.ACTION_SINAWEIBO_DATE_REQUEST"

.field public static final ACTION_SINAWEIBO_DATE_UPDATED:Ljava/lang/String; = "com.android.internal.policy.impl.intent.action.ACTION_SINAWEIBO_DATE_UPDATED"

.field public static final AUTHORITY:Ljava/lang/String; = "com.sec.android.app.sns3.sp.sinaweibo"

.field public static final TABLE:Ljava/lang/String; = "feed_list"

.field public static final TABLE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 565
    const-string v0, "content://com.sec.android.app.sns3.sp.sinaweibo/feed_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/sec/TickerUtil$SinaweiboConstants;->TABLE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 562
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
