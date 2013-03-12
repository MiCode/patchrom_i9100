.class Landroid/webkit/CallbackProxy$4;
.super Ljava/lang/Object;
.source "CallbackProxy.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/CallbackProxy;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/CallbackProxy;


# direct methods
.method constructor <init>(Landroid/webkit/CallbackProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 778
    iput-object p1, p0, Landroid/webkit/CallbackProxy$4;->this$0:Landroid/webkit/CallbackProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 781
    if-eqz p2, :cond_0

    .line 782
    const-string v0, "CallbackProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calling the setBingSearchAlertDialogCheckBoxValue with value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object v0, p0, Landroid/webkit/CallbackProxy$4;->this$0:Landroid/webkit/CallbackProxy;

    #getter for: Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;
    invoke-static {v0}, Landroid/webkit/CallbackProxy;->access$100(Landroid/webkit/CallbackProxy;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/CallbackProxy$4;->this$0:Landroid/webkit/CallbackProxy;

    #getter for: Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static {v1}, Landroid/webkit/CallbackProxy;->access$000(Landroid/webkit/CallbackProxy;)Landroid/webkit/WebViewClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/webkit/WebChromeClient;->setBingSearchAlertDialogCheckBoxValue(Landroid/webkit/WebView;Z)V

    .line 785
    :cond_0
    return-void
.end method
