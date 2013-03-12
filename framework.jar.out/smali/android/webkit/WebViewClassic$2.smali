.class Landroid/webkit/WebViewClassic$2;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewClassic;->onSavePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewClassic;

.field final synthetic val$resumeMsg:Landroid/os/Message;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClassic;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2672
    iput-object p1, p0, Landroid/webkit/WebViewClassic$2;->this$0:Landroid/webkit/WebViewClassic;

    iput-object p2, p0, Landroid/webkit/WebViewClassic$2;->val$resumeMsg:Landroid/os/Message;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 2675
    iget-object v0, p0, Landroid/webkit/WebViewClassic$2;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mResumeMsg:Landroid/os/Message;
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$2500(Landroid/webkit/WebViewClassic;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2676
    iget-object v0, p0, Landroid/webkit/WebViewClassic$2;->val$resumeMsg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2677
    iget-object v0, p0, Landroid/webkit/WebViewClassic$2;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v1, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mResumeMsg:Landroid/os/Message;
    invoke-static {v0, v1}, Landroid/webkit/WebViewClassic;->access$2502(Landroid/webkit/WebViewClassic;Landroid/os/Message;)Landroid/os/Message;

    .line 2679
    :cond_0
    return-void
.end method
