.class Landroid/webkit/CallbackProxy$17;
.super Ljava/lang/Object;
.source "CallbackProxy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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

.field final synthetic val$res:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Landroid/webkit/CallbackProxy;Landroid/webkit/JsResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 981
    iput-object p1, p0, Landroid/webkit/CallbackProxy$17;->this$0:Landroid/webkit/CallbackProxy;

    iput-object p2, p0, Landroid/webkit/CallbackProxy$17;->val$res:Landroid/webkit/JsResult;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 983
    const/16 v0, 0x52

    if-ne p2, v0, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 985
    iget-object v0, p0, Landroid/webkit/CallbackProxy$17;->val$res:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->cancel()V

    .line 994
    :cond_0
    :goto_0
    return v1

    .line 988
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 990
    iget-object v0, p0, Landroid/webkit/CallbackProxy$17;->val$res:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->cancel()V

    goto :goto_0
.end method
