.class Landroid/webkit/WebViewCore$WebCoreThread$1;
.super Landroid/os/Handler;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewCore$WebCoreThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewCore$WebCoreThread;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewCore$WebCoreThread;)V
    .locals 0
    .parameter

    .prologue
    .line 1006
    iput-object p1, p0, Landroid/webkit/WebViewCore$WebCoreThread$1;->this$0:Landroid/webkit/WebViewCore$WebCoreThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 1009
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1063
    :goto_0
    return-void

    .line 1011
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/WebViewCore;

    .line 1012
    .local v0, core:Landroid/webkit/WebViewCore;
    #calls: Landroid/webkit/WebViewCore;->initialize()V
    invoke-static {v0}, Landroid/webkit/WebViewCore;->access$600(Landroid/webkit/WebViewCore;)V

    goto :goto_0

    .line 1017
    .end local v0           #core:Landroid/webkit/WebViewCore;
    :sswitch_1
    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_0

    .line 1023
    :sswitch_2
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_0

    .line 1028
    :sswitch_3
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v2, :cond_0

    .line 1029
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No WebView has been created in this process!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1032
    :cond_0
    sget-object v3, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/webkit/JWebCoreJavaBridge;->addPackageName(Ljava/lang/String;)V

    goto :goto_0

    .line 1036
    :sswitch_4
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v2, :cond_1

    .line 1037
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No WebView has been created in this process!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1040
    :cond_1
    sget-object v3, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/webkit/JWebCoreJavaBridge;->removePackageName(Ljava/lang/String;)V

    goto :goto_0

    .line 1044
    :sswitch_5
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v2, :cond_2

    .line 1045
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No WebView has been created in this process!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1048
    :cond_2
    sget-object v3, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/ProxyProperties;

    invoke-virtual {v3, v2}, Landroid/webkit/JWebCoreJavaBridge;->updateProxy(Landroid/net/ProxyProperties;)V

    goto :goto_0

    .line 1054
    :sswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 1055
    .local v1, m:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1059
    .end local v1           #m:Landroid/os/Message;
    :sswitch_7
    #calls: Landroid/webkit/WebViewCore;->nativeCertTrustChanged()V
    invoke-static {}, Landroid/webkit/WebViewCore;->access$700()V

    .line 1060
    invoke-static {}, Landroid/net/http/CertificateChainValidator;->handleTrustStorageUpdate()V

    goto :goto_0

    .line 1009
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0xb9 -> :sswitch_3
        0xba -> :sswitch_4
        0xc1 -> :sswitch_5
        0xc5 -> :sswitch_6
        0xdc -> :sswitch_7
    .end sparse-switch
.end method
