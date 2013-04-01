.class Lcom/sec/android/app/fm/MainActivity$32;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/MainActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/MainActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 4305
    iput-object p1, p0, Lcom/sec/android/app/fm/MainActivity$32;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const v6, 0x7f0a0009

    const/4 v5, 0x0

    .line 4309
    const/4 v3, -0x2

    if-ne p2, v3, :cond_0

    .line 4330
    :goto_0
    return-void

    .line 4311
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$32;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;
    invoke-static {v3}, Lcom/sec/android/app/fm/MainActivity;->access$7500(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/ui/RenameDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/fm/ui/RenameDialog;->getText()Ljava/lang/String;

    move-result-object v2

    .line 4312
    .local v2, freqRen:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$32;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mSelectedChannel:Lcom/sec/android/app/fm/data/Channel;
    invoke-static {v3}, Lcom/sec/android/app/fm/MainActivity;->access$7600(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$32;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mSelectedChannel:Lcom/sec/android/app/fm/data/Channel;
    invoke-static {v3}, Lcom/sec/android/app/fm/MainActivity;->access$7600(Lcom/sec/android/app/fm/MainActivity;)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v3

    iget v3, v3, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    :goto_1
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 4314
    .local v1, freq:Ljava/lang/Float;
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v4, -0x4080

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_4

    .line 4315
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$32;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/fm/MainActivity;->getChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v0

    .line 4316
    .local v0, channel:Lcom/sec/android/app/fm/data/Channel;
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    .line 4317
    iput-object v2, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    .line 4318
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$32;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/fm/MainActivity;->getCurrentChannel()F

    move-result v3

    iget v4, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    .line 4319
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$32;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/app/fm/MainActivity;->access$1700(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4320
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$32;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mTxtRadioStatusChName:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/app/fm/MainActivity;->access$1700(Lcom/sec/android/app/fm/MainActivity;)Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 4322
    :cond_1
    invoke-static {}, Lcom/sec/android/app/fm/data/ChannelStore;->getInstance()Lcom/sec/android/app/fm/data/ChannelStore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/fm/data/ChannelStore;->store()V

    .line 4323
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$32;->this$0:Lcom/sec/android/app/fm/MainActivity;

    iget-object v4, p0, Lcom/sec/android/app/fm/MainActivity$32;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/fm/MainActivity;->getCurrentChannel()F

    move-result v4

    #calls: Lcom/sec/android/app/fm/MainActivity;->refreshFavChannels(F)V
    invoke-static {v3, v4}, Lcom/sec/android/app/fm/MainActivity;->access$2000(Lcom/sec/android/app/fm/MainActivity;F)V

    goto :goto_0

    .line 4312
    .end local v0           #channel:Lcom/sec/android/app/fm/data/Channel;
    .end local v1           #freq:Ljava/lang/Float;
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$32;->this$0:Lcom/sec/android/app/fm/MainActivity;

    #getter for: Lcom/sec/android/app/fm/MainActivity;->mSavedSelectedFreq:F
    invoke-static {v3}, Lcom/sec/android/app/fm/MainActivity;->access$7700(Lcom/sec/android/app/fm/MainActivity;)F

    move-result v3

    goto :goto_1

    .line 4325
    .restart local v0       #channel:Lcom/sec/android/app/fm/data/Channel;
    .restart local v1       #freq:Ljava/lang/Float;
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$32;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v3, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 4328
    .end local v0           #channel:Lcom/sec/android/app/fm/data/Channel;
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/fm/MainActivity$32;->this$0:Lcom/sec/android/app/fm/MainActivity;

    invoke-static {v3, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
