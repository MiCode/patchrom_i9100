.class Lcom/android/OriginalSettings/RadioInfo$20;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 994
    iput-object p1, p0, Lcom/android/OriginalSettings/RadioInfo$20;->this$0:Lcom/android/OriginalSettings/RadioInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 996
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo$20;->this$0:Lcom/android/OriginalSettings/RadioInfo;

    #getter for: Lcom/android/OriginalSettings/RadioInfo;->updateSmscButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/OriginalSettings/RadioInfo;->access$1900(Lcom/android/OriginalSettings/RadioInfo;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 997
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo$20;->this$0:Lcom/android/OriginalSettings/RadioInfo;

    #getter for: Lcom/android/OriginalSettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/OriginalSettings/RadioInfo;->access$1500(Lcom/android/OriginalSettings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo$20;->this$0:Lcom/android/OriginalSettings/RadioInfo;

    #getter for: Lcom/android/OriginalSettings/RadioInfo;->smsc:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/OriginalSettings/RadioInfo;->access$1800(Lcom/android/OriginalSettings/RadioInfo;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/RadioInfo$20;->this$0:Lcom/android/OriginalSettings/RadioInfo;

    #getter for: Lcom/android/OriginalSettings/RadioInfo;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/OriginalSettings/RadioInfo;->access$3900(Lcom/android/OriginalSettings/RadioInfo;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3ee

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    .line 999
    return-void
.end method
