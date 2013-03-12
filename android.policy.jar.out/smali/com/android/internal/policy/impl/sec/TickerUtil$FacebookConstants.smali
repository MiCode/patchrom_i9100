.class public Lcom/android/internal/policy/impl/sec/TickerUtil$FacebookConstants;
.super Ljava/lang/Object;
.source "TickerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/TickerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FacebookConstants"
.end annotation


# static fields
.field public static final ACTION_FACEBOOK_DATE_REQUEST:Ljava/lang/String; = "com.android.internal.policy.impl.intent.action.ACTION_FACEBOOK_DATE_REQUEST"

.field public static final ACTION_FACEBOOK_DATE_UPDATED:Ljava/lang/String; = "com.android.internal.policy.impl.intent.action.ACTION_FACEBOOK_DATE_UPDATED"

.field public static final AUTHORITY:Ljava/lang/String; = "com.sec.android.app.sns3.sp.facebook"

.field public static final TABLE:Ljava/lang/String; = "post"

.field public static final TABLE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 556
    const-string v0, "content://com.sec.android.app.sns3.sp.facebook/post"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/sec/TickerUtil$FacebookConstants;->TABLE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 553
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
