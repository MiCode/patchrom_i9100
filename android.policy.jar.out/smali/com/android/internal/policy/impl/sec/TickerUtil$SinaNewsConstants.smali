.class public Lcom/android/internal/policy/impl/sec/TickerUtil$SinaNewsConstants;
.super Ljava/lang/Object;
.source "TickerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/TickerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SinaNewsConstants"
.end annotation


# static fields
.field public static final ACTION_SNNEWS_DATE_SYNC:Ljava/lang/String; = "com.sec.android.daemonapp.ap.sinanews.intent.action.SNEWS_DATE_SYNC"

.field public static final ACTION_SNNEWS_WIDGET_NEWS_REFRESH:Ljava/lang/String; = "com.sec.android.widgetapp.ap.sinanews.intent.ACTION_GET_NEWSLIST"

.field public static final KEY_APP_SINA_SERVICE_STATUS:Ljava/lang/String; = "sn_daemon_service_key_app_service_status"

.field public static final KEY_SET_DEFAULT_SINA_NEWS:Ljava/lang/String; = "sn_daemon_service_key_set_default_news"

.field public static final KEY_SINA_SERVICE_STATUS:Ljava/lang/String; = "sn_daemon_service_key_service_status"

.field public static final SINA_AUTHORITY:Ljava/lang/String; = "com.sec.android.daemonapp.sinanews.provider"

.field public static final SINA_NEWS_DAEMON_PKG:Ljava/lang/String; = "com.sec.android.daemonapp.ap.sinanews"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 609
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
