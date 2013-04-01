.class Lcom/sec/android/app/fm/RenameChannelActivity$3;
.super Ljava/lang/Object;
.source "RenameChannelActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/RenameChannelActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/RenameChannelActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/RenameChannelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/sec/android/app/fm/RenameChannelActivity$3;->this$0:Lcom/sec/android/app/fm/RenameChannelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const v7, 0x7f0a0009

    const/4 v6, 0x0

    const/high16 v5, -0x4080

    .line 223
    const/4 v4, -0x2

    if-ne p2, v4, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/fm/RenameChannelActivity$3;->this$0:Lcom/sec/android/app/fm/RenameChannelActivity;

    #getter for: Lcom/sec/android/app/fm/RenameChannelActivity;->mRenameDialog:Lcom/sec/android/app/fm/ui/RenameDialog;
    invoke-static {v4}, Lcom/sec/android/app/fm/RenameChannelActivity;->access$200(Lcom/sec/android/app/fm/RenameChannelActivity;)Lcom/sec/android/app/fm/ui/RenameDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/fm/ui/RenameDialog;->getText()Ljava/lang/String;

    move-result-object v3

    .line 227
    .local v3, freqRen:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/fm/RenameChannelActivity$3;->this$0:Lcom/sec/android/app/fm/RenameChannelActivity;

    #getter for: Lcom/sec/android/app/fm/RenameChannelActivity;->mSelectedChannel:Lcom/sec/android/app/fm/data/Channel;
    invoke-static {v4}, Lcom/sec/android/app/fm/RenameChannelActivity;->access$100(Lcom/sec/android/app/fm/RenameChannelActivity;)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 228
    iget-object v4, p0, Lcom/sec/android/app/fm/RenameChannelActivity$3;->this$0:Lcom/sec/android/app/fm/RenameChannelActivity;

    #getter for: Lcom/sec/android/app/fm/RenameChannelActivity;->mSelectedChannel:Lcom/sec/android/app/fm/data/Channel;
    invoke-static {v4}, Lcom/sec/android/app/fm/RenameChannelActivity;->access$100(Lcom/sec/android/app/fm/RenameChannelActivity;)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v4

    iget v4, v4, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 233
    .local v2, freq:Ljava/lang/Float;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_5

    .line 234
    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/fm/MainActivity;->getChannel(F)Lcom/sec/android/app/fm/data/Channel;

    move-result-object v0

    .line 235
    .local v0, channel:Lcom/sec/android/app/fm/data/Channel;
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    .line 236
    iput-object v3, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    .line 237
    invoke-static {}, Lcom/sec/android/app/fm/data/ChannelStore;->getInstance()Lcom/sec/android/app/fm/data/ChannelStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/fm/data/ChannelStore;->store()V

    .line 239
    :try_start_0
    sget-object v4, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/fm/MainActivity;->notifyToStatusBar()V
    :try_end_0
    .catch Lcom/samsung/media/fmradio/FMPlayerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .end local v0           #channel:Lcom/sec/android/app/fm/data/Channel;
    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/fm/RenameChannelActivity$3;->this$0:Lcom/sec/android/app/fm/RenameChannelActivity;

    #getter for: Lcom/sec/android/app/fm/RenameChannelActivity;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v4}, Lcom/sec/android/app/fm/RenameChannelActivity;->access$000(Lcom/sec/android/app/fm/RenameChannelActivity;)Landroid/widget/BaseAdapter;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 256
    iget-object v4, p0, Lcom/sec/android/app/fm/RenameChannelActivity$3;->this$0:Lcom/sec/android/app/fm/RenameChannelActivity;

    #getter for: Lcom/sec/android/app/fm/RenameChannelActivity;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v4}, Lcom/sec/android/app/fm/RenameChannelActivity;->access$000(Lcom/sec/android/app/fm/RenameChannelActivity;)Landroid/widget/BaseAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 229
    .end local v2           #freq:Ljava/lang/Float;
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/fm/RenameChannelActivity$3;->this$0:Lcom/sec/android/app/fm/RenameChannelActivity;

    #getter for: Lcom/sec/android/app/fm/RenameChannelActivity;->mSavedSelectedFreq:F
    invoke-static {v4}, Lcom/sec/android/app/fm/RenameChannelActivity;->access$300(Lcom/sec/android/app/fm/RenameChannelActivity;)F

    move-result v4

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_3

    .line 230
    iget-object v4, p0, Lcom/sec/android/app/fm/RenameChannelActivity$3;->this$0:Lcom/sec/android/app/fm/RenameChannelActivity;

    #getter for: Lcom/sec/android/app/fm/RenameChannelActivity;->mSavedSelectedFreq:F
    invoke-static {v4}, Lcom/sec/android/app/fm/RenameChannelActivity;->access$300(Lcom/sec/android/app/fm/RenameChannelActivity;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .restart local v2       #freq:Ljava/lang/Float;
    goto :goto_1

    .line 232
    .end local v2           #freq:Ljava/lang/Float;
    :cond_3
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .restart local v2       #freq:Ljava/lang/Float;
    goto :goto_1

    .line 240
    .restart local v0       #channel:Lcom/sec/android/app/fm/data/Channel;
    :catch_0
    move-exception v1

    .line 242
    .local v1, e:Lcom/samsung/media/fmradio/FMPlayerException;
    :try_start_1
    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayerException;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 243
    :catch_1
    move-exception v4

    goto :goto_2

    .line 248
    .end local v1           #e:Lcom/samsung/media/fmradio/FMPlayerException;
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/fm/RenameChannelActivity$3;->this$0:Lcom/sec/android/app/fm/RenameChannelActivity;

    invoke-static {v4, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 252
    .end local v0           #channel:Lcom/sec/android/app/fm/data/Channel;
    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/fm/RenameChannelActivity$3;->this$0:Lcom/sec/android/app/fm/RenameChannelActivity;

    invoke-static {v4, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method
