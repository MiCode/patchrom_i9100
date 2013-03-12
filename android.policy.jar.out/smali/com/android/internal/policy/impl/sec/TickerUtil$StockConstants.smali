.class public Lcom/android/internal/policy/impl/sec/TickerUtil$StockConstants;
.super Ljava/lang/Object;
.source "TickerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/TickerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StockConstants"
.end annotation


# static fields
.field public static final ACTION_CURRENT_STOCK_DATA:Ljava/lang/String; = "com.sec.android.daemonapp.stockclock.action.CURRENT_STOCK_DATA"

.field public static final ACTION_UPDATE_STOCK_DATA_SYNC:Ljava/lang/String; = "com.sec.android.daemonapp.stockclock.ACTION_UPDATE_STOCK_DATA_SYNC"

.field public static final EDAILY_STOCK_DAEMON_PKG:Ljava/lang/String; = "com.sec.android.daemonapp.stockclock"

.field public static final EDAILY_STOCK_LIST_URI:Ljava/lang/String; = "content://com.sec.android.daemonapp.stockclock"

.field public static final KEY_APP_SERVICE_STATUS:Ljava/lang/String; = "stockclock_daemon_service_key_app_service_status"

.field public static final LOCK_SCREEN_SERVICE_CODE:I = 0x1

.field public static final SERVICE_OFF:I = 0x0

.field public static final SERVICE_ON:I = 0x1

.field public static final SINA_STOCK_DAEMON_PKG:Ljava/lang/String; = "com.sec.android.daemonapp.ap.sinastock.stockclock"

.field public static final SINA_STOCK_LIST_URI:Ljava/lang/String; = "content://com.sec.android.daemonapp.ap.sinastock.stockclock"

.field public static final YAHOO_STOCK_DAEMON_PKG:Ljava/lang/String; = "com.sec.android.daemonapp.ap.yahoostock.stockclock"

.field public static final YAHOO_STOCK_LIST_URI:Ljava/lang/String; = "content://com.sec.android.daemonapp.ap.yahoostock.stockclock"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 571
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
