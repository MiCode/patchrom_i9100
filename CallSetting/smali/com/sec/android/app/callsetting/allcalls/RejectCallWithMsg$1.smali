.class Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$1;
.super Ljava/lang/Object;
.source "RejectCallWithMsg.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$1;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "arg0"

    .prologue
    .line 212
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$1;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    const/4 v4, 0x0

    #setter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSelectedItem:I
    invoke-static {v3, v4}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$002(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;I)I

    .line 214
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 215
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Ljava/lang/String;

    const-string v3, "com.sec.android.app.callsetting"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 216
    .local v2, pkgName:Ljava/lang/String;
    const-string v3, ".allcalls.RejectMessages"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, className:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$1;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pkgName :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  Cls name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$100(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;Ljava/lang/String;)V

    .line 218
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$1;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    const/4 v4, 0x3

    invoke-virtual {v3, v1, v4}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->startActivityForResult(Landroid/content/Intent;I)V

    .line 220
    return-void
.end method
