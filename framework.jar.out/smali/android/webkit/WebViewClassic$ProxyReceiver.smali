.class Landroid/webkit/WebViewClassic$ProxyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProxyReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2245
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebViewClassic$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2245
    invoke-direct {p0}, Landroid/webkit/WebViewClassic$ProxyReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2248
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PROXY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2249
    #calls: Landroid/webkit/WebViewClassic;->handleProxyBroadcast(Landroid/content/Intent;Landroid/content/Context;)V
    invoke-static {p2, p1}, Landroid/webkit/WebViewClassic;->access$2100(Landroid/content/Intent;Landroid/content/Context;)V

    .line 2251
    :cond_0
    return-void
.end method
