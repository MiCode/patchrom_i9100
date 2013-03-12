.class public Lcom/android/internal/policy/impl/sec/TickerUtil$NewsConstants;
.super Ljava/lang/Object;
.source "TickerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/TickerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewsConstants"
.end annotation


# static fields
.field public static final ACTION_DAEMON_NEWS_REFRESH:Ljava/lang/String; = "com.sec.android.daemonapp.ap.yahoonews.intent.action.refresh"

.field public static final ACTION_YHNEWS_DATE_SYNC:Ljava/lang/String; = "com.sec.android.daemonapp.ap.yahoonews.intent.action.YNEWS_DATE_SYNC"

.field public static final AUTHORITY:Ljava/lang/String; = "com.sec.android.daemonapp.ap.yahoonews.provider"

.field public static final CA_MOBILE_DAEMON_PKG:Ljava/lang/String; = "com.sec.android.daemonapp.ap.camobile"

.field public static final KEY_APP_SERVICE_STATUS:Ljava/lang/String; = "yh_daemon_service_key_app_service_status"

.field public static final KEY_REGIONS:Ljava/lang/String; = "yh_daemon_service_key_regions"

.field public static final KEY_SERVICE_STATUS:Ljava/lang/String; = "yh_daemon_service_key_service_status"

.field public static final KEY_SET_DEFAULT_NEWS:Ljava/lang/String; = "yh_daemon_service_key_set_default_news"

.field public static final YAHOO_NEWS_DAEMON_PKG:Ljava/lang/String; = "com.sec.android.daemonapp.ap.yahoonews"

.field public static final YONHAP_NEWS_DAEMON_PKG:Ljava/lang/String; = "com.sec.android.daemonapp.ap.yonhapnews"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 591
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
